using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using Emgu.CV;
using Emgu.CV.CvEnum;
using Emgu.CV.Structure;
using MySql.Data.MySqlClient;
using System.Data;

namespace attendance_system
{
    class RecognizerEngine
    {
        private FaceRecognizer _faceRecognizer;
      //  private DataStoreAccess _dataStoreAccess;
        private String _recognizerFilePath;

        //ms access database
        //OleDbConnection dbConnection = new OleDbConnection();

        //OleDbDataAdapter dataAdapter;
        string conn = "datasource=localhost;username=root;password=";
        MySqlConnection dbConnection = new MySqlConnection();
        MySqlDataAdapter dataAdapter;
        DataTable localDataTable = new DataTable();


        int totalRows = 0;  // index for storing data
        int rowNumber = 0;  //index for reading data

        public RecognizerEngine( String recognizerFilePath)
        {
            _recognizerFilePath = recognizerFilePath;
          
            //  _faceRecognizer = new EigenFaceRecognizer(80, double.PositiveInfinity);
            _faceRecognizer = new LBPHFaceRecognizer(1, 8, 8, 8, 100);
        }

        public bool TrainRecognizer()
        {
           // var allFaces = _dataStoreAccess.CallFaces("ALL_USERS");
            ConnectToDatabase();
            if (localDataTable.Rows.Count > 0)
            {
                var faceImages = new Image<Gray, byte>[localDataTable.Rows.Count];
                var faceLabels = new int[localDataTable.Rows.Count];
                for (int i = 0; i < localDataTable.Rows.Count; i++)
                {
                    byte[] fetchedImageByte = (byte[])localDataTable.Rows[i]["faceImage"];
                 
                    MemoryStream ms = new MemoryStream(fetchedImageByte);
                    var faceImage = new Image<Gray, byte>(new Bitmap(ms));
                    faceImages[i] = faceImage.Resize(100,100,Inter.Cubic);
                    faceLabels[i] = Convert.ToInt32(localDataTable.Rows[i]["roll"]);
                }
                _faceRecognizer.Train(faceImages, faceLabels);
                _faceRecognizer.Save(_recognizerFilePath);
            }
            return true;
            
           
        }

        public void LoadRecognizerData()
        {
            _faceRecognizer.Load(_recognizerFilePath);
        }

        public int RecognizeUser(Image<Gray, byte> userImage)
        {
          /*  Stream stream = new MemoryStream();
            stream.Write(userImage, 0, userImage.Length);
            var faceImage = new Image<Gray, byte>(new Bitmap(stream));*/
            _faceRecognizer.Load(_recognizerFilePath);

            var result = _faceRecognizer.Predict(userImage.Resize(100, 100, Inter.Cubic));
            return result.Label;
        }

        public void ConnectToDatabase()
        {
            dbConnection.ConnectionString = conn;

            dbConnection.Open();

            dataAdapter = new MySqlDataAdapter("select * from ama.trainingSet1", dbConnection);
           // OleDbCommandBuilder commandBuilder = new OleDbCommandBuilder(dataAdapter);

            dataAdapter.Fill(localDataTable);

            if (localDataTable.Rows.Count != 0)
            {
                //set total rows to number of rows of local table  
                totalRows = localDataTable.Rows.Count;
            }
        }
        public void refreshDbConnection()
        {
            if (dbConnection.State.Equals(ConnectionState.Open))
            {
                dbConnection.Close();
                ConnectToDatabase();
            }
        }
    }
}
