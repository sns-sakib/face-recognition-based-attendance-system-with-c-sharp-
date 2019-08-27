using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Emgu.CV;
using Emgu.CV.Structure;
using Emgu.Util;
using Emgu.CV.CvEnum;
using System.IO;
using MySql.Data.MySqlClient;

//emgu 3

namespace attendance_system
{
    public partial class trainingSetManage : Form
    {

        //declaring global variables
        private Capture capture;        //takes images from camera as image frames
        private bool captureInProgress; // checks if capture is executing
        private CascadeClassifier _cascadeClassifier;

        //for detect haarcascade parameters
        private int windowSize = 25;
        private Double scaleRate = 1.1;
        private int minNeighbours = 3;

        //for extracting faces
        Bitmap[] extractedFacesArray;
        int faceNumber = 0;  //for previous-next

        //ms access database
        //OleDbConnection dbConnection = new OleDbConnection();
        //mysql database
        string conn = "datasource=localhost;username=root;password=";
        MySqlConnection dbConnection = new MySqlConnection() ;

        //OleDbDataAdapter dataAdapter;
        MySqlDataAdapter dataAdapter;
        DataTable localDataTable = new DataTable();



        int totalRows = 0;  // index for storing data
        int rowNumber = 0;  //index for reading data

        public trainingSetManage()
        {
            InitializeComponent();
          

           
        }

        private void ProcessFrame(object sender, EventArgs arg)
        {
            try
            {

                var imageFrame = capture.QueryFrame().ToImage<Bgr, Byte>(); //line 1
                //line 2
                faceDetect(imageFrame);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnStart_Click(object sender, EventArgs e)
        {
            //  pictureBox1.Image = null;
            #region if capture is not created, create it now
            if (capture == null)
            {
                try
                {
                    capture = new Capture();
                }
                catch (NullReferenceException excpt)
                {
                    MessageBox.Show(excpt.Message);
                }
            }
            #endregion

            if (capture != null)
            {
                if (captureInProgress)
                {  //if camera is getting frames then stop the capture and set button Text
                    // "Start" for resuming capture
                    btnStart.Text = "Start!"; //
                    Application.Idle -= ProcessFrame;
                   
                }
                else
                {
                    //if camera is NOT getting frames then start the capture and set button
                    // Text to "Stop" for pausing capture
                    btnStart.Text = "Stop";
                    Application.Idle += ProcessFrame;
                }

                captureInProgress = !captureInProgress;
            }
        }

        private void ReleaseData()
        {
            if (capture != null)
                capture.Dispose();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // adjust path to find your XML file 
            //haar = new HaarCascade("haarcascade_frontalface_alt_tree.xml");
          //  _cascadeClassifier = new CascadeClassifier("C:/Users/Nazmus Sakib/Documents/Visual Studio 2013/Projects/Face_recognition_project_29.4.19/Face_recognition_project_29.4.19/files/haarcascade_frontalface_alt_tree.xml");
            _cascadeClassifier = new CascadeClassifier(Application.StartupPath+"/files/haarcascade_frontalface_alt_tree.xml");

            ConnectToDatabase();
            //set rownumber to 0;
            rowNumber = 0;

            //set the first image
            pictureBoxTrainingSetViewer.Image = readImageFromDB();

            //set the first label
            if (localDataTable.Rows.Count > 0)
            {
                textBoxNameTraingSetViewer.Text = localDataTable.Rows[rowNumber]["name"].ToString();
                textBoxUserIdTrainingSet.Text = localDataTable.Rows[rowNumber]["roll"].ToString();
                sessionBoxSaved.Text = localDataTable.Rows[rowNumber]["session"].ToString();
            }
           // MessageBox.Show("First Image");
        }

        private void btnBrowse_Click(object sender, EventArgs e)
        {
            //browse image from file manager
            if (openImageDlg.ShowDialog() == DialogResult.OK)
            {

                Image<Bgr, Byte> ImageFrame = new Image<Bgr, byte>(openImageDlg.FileName);
                faceDetect(ImageFrame);

            }
        }

        private void faceDetect(Image<Bgr, Byte> ImageFrame)
        {
            if (ImageFrame != null)
            {
                //getting values from inputs for parameters. causing exceeption now
                //scaleRate = Double.Parse(comboBoxScaleRate.Text);
                // minNeighbours = int.Parse(comboBoxNeighbours.Text);
                // windowSize = int.Parse(textBoxWindowSize.Text);

                Image<Gray, byte> grayFrame = ImageFrame.Convert<Gray, byte>();
                var faces = _cascadeClassifier.DetectMultiScale(grayFrame, 1.1, 10, Size.Empty);
                

                if (faces.Length > 0)
                {
                    //extracting faces step 1
                    Bitmap bmpGrayImage = grayFrame.ToBitmap();
                    Bitmap extractedFace;
                    Graphics faceCanvas;


                    //show number of faces..will cause problem for live cam
                    //  MessageBox.Show("Number of faces detected: "+ faces.Length.ToString());

                    //defining the array of extracted faces
                    extractedFacesArray = new Bitmap[faces.Length];
                    faceNumber = 0;

                    //draw a green rectangle on each detected face in image
                    foreach (var face in faces)
                    {
                        ImageFrame.Draw(face, new Bgr(Color.Green), 3);

                        //extract face step 2: set the size of the empty box( extracted face) which will contain face later
                        extractedFace = new Bitmap(face.Width, face.Height);

                        //extraxt face step 3:set empty image as face canvas
                        faceCanvas = Graphics.FromImage(extractedFace);
                        //extraxt face step 4: face canvas is going to have drawn a portion of bmpGrayImage , which is face.rect. with pixel units. whatever i draw in faceCanvas will go to extractedFace
                        faceCanvas.DrawImage(bmpGrayImage, 0, 0, face, GraphicsUnit.Pixel);

                        //assigning all the extracted faces to array
                        extractedFacesArray[faceNumber] = extractedFace;
                        faceNumber++;
                    }
                    //display first face of the array
                    pictureBoxFaces.Image = extractedFacesArray[0];
                    faceNumber = 0;

                   
                }
                //display image with detected faces
                pictureBox1.Image = ImageFrame.ToBitmap();
            }
        }

        private void openFileDialog1_FileOk(object sender, CancelEventArgs e)
        {

        }


        //face adder next
        private void btnNext_Click(object sender, EventArgs e)
        {
            if (faceNumber == extractedFacesArray.Length - 1)
            {
              //  MessageBox.Show("last face");
                return;
            }
            faceNumber++;
            pictureBoxFaces.Image = extractedFacesArray[faceNumber];
        }


        //face adder previous
        private void btnPrev_Click(object sender, EventArgs e)
        {
            if (faceNumber == 0)
            {
               // MessageBox.Show("1st face");
                return;
            }
            faceNumber--;
            pictureBoxFaces.Image = extractedFacesArray[faceNumber];
        }

        //connect database
        public void ConnectToDatabase()
        {
             dbConnection.ConnectionString =  conn;
            //access//  dbConnection.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\Nazmus Sakib\Documents\faceDatabase2.mdb;
            //access//Persist Security Info=False;";

             dbConnection.Open();

          //access//  dataAdapter = new OleDbDataAdapter("select * from trainingSet1", dbConnection);
            //access//  OleDbCommandBuilder commandBuilder = new OleDbCommandBuilder(dataAdapter);
             dataAdapter = new MySqlDataAdapter("select * from ama.trainingSet1 where course_id = "+classControl.course_id+"", dbConnection);
            
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

        //add extracted fsce to database
        private void buttonAdd_Click(object sender, EventArgs e)
        {
            addFaceToDB(pictureBoxFaces.Image, textBoxName.Text, Convert.ToInt32(textBoxUserID.Text), sessionBox.Text);
        }

        //stores face and label to database for add to training set button
        public void addFaceToDB(Image inputFace, string faceName, int userID, string session)
        {
            if (dbConnection.State.Equals(ConnectionState.Closed))
            {
                dbConnection.Open();
            }
            try
            {
                //convert image to byte format
                byte[] imageAsByte = convertToDBFormat(inputFace);

                totalRows++;
               // MessageBox.Show("Adding row " + totalRows);

                //inserting image at row = totalRows..   
                MySqlCommand insertCommand = new MySqlCommand("Insert into ama.trainingSet1(roll,name, faceImage, course_code, course_id, session) Values('" + userID + "','" + faceName + "', @img, '"+ classControl.course_code +"', "+ classControl.course_id +", '"+session+"')", dbConnection);
             
                insertCommand.Parameters.Add("@img", MySqlDbType.Blob,imageAsByte.Length);
                insertCommand.Parameters["@img"].Value = imageAsByte;
               
                int rowsAffected = insertCommand.ExecuteNonQuery();
                MessageBox.Show("Data stored successfully ");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                refreshDbConnection();

                //show last image-label from database
                //set rownumber to 0;
                rowNumber = localDataTable.Rows.Count - 1;

                //set the first image
                pictureBoxTrainingSetViewer.Image = readImageFromDB();

                //set the first label
                textBoxNameTraingSetViewer.Text = localDataTable.Rows[rowNumber]["name"].ToString();
                textBoxUserIdTrainingSet.Text = localDataTable.Rows[rowNumber]["roll"].ToString();
                sessionBoxSaved.Text = localDataTable.Rows[rowNumber]["session"].ToString();
              //  MessageBox.Show("last Image");

            }
        }


        //for converting to binary..used in addToFace() function
        public byte[] convertToDBFormat(Image inputImage)
        {
            Bitmap bmpImage = new Bitmap(inputImage);

            MemoryStream ms = new MemoryStream();

            bmpImage.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);

            byte[] imageByte = ms.ToArray();

            return imageByte;
        }

        //read face from database
        private Image readImageFromDB()
        {
            try
            {
                Image fetchedImage;
                if (rowNumber >= 0)
                {
                    byte[] fetchedImageByte = (byte[])localDataTable.Rows[rowNumber]["faceImage"];

                    MemoryStream ms = new MemoryStream(fetchedImageByte);

                    fetchedImage = Image.FromStream(ms);
                    return fetchedImage;

                }
                else
                {
                    MessageBox.Show("No images in the db yet.");
                    return null;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return null;
            }
        }

        private void btnFirst_Click(object sender, EventArgs e)
        {
            refreshDbConnection();

            //set rownumber to 0;
            rowNumber = 0;

            //set the first image
            pictureBoxTrainingSetViewer.Image = readImageFromDB();

            //set the first label
            textBoxNameTraingSetViewer.Text = localDataTable.Rows[rowNumber]["name"].ToString();
            textBoxUserIdTrainingSet.Text = localDataTable.Rows[rowNumber]["roll"].ToString();
           sessionBoxSaved.Text = localDataTable.Rows[rowNumber]["session"].ToString();
           // MessageBox.Show("First Image");



        }

        private void btnLast_Click(object sender, EventArgs e)
        {
            refreshDbConnection();

            //set rownumber to 0;
            rowNumber = localDataTable.Rows.Count - 1;

            //set the first image
            pictureBoxTrainingSetViewer.Image = readImageFromDB();

            //set the first label
            textBoxNameTraingSetViewer.Text = localDataTable.Rows[rowNumber]["name"].ToString();
            textBoxUserIdTrainingSet.Text = localDataTable.Rows[rowNumber]["roll"].ToString();
            sessionBoxSaved.Text = localDataTable.Rows[rowNumber]["session"].ToString();
          //  MessageBox.Show("last Image");


        }


        //previous button of training set database
        private void btnprevTrainingsetViewer_Click(object sender, EventArgs e)
        {
            if (rowNumber > 0)
            {
                rowNumber--;
                //set the  image
                pictureBoxTrainingSetViewer.Image = readImageFromDB();

                //set the label
                textBoxNameTraingSetViewer.Text = localDataTable.Rows[rowNumber]["name"].ToString();
                textBoxUserIdTrainingSet.Text = localDataTable.Rows[rowNumber]["roll"].ToString();
                sessionBoxSaved.Text = localDataTable.Rows[rowNumber]["session"].ToString();

            }
        }

        private void btnNextTrainingSetViewer_Click(object sender, EventArgs e)
        {
            if (rowNumber < localDataTable.Rows.Count - 1)
            {
                rowNumber++;
                //set the  image
                pictureBoxTrainingSetViewer.Image = readImageFromDB();

                //set the label
                textBoxNameTraingSetViewer.Text = localDataTable.Rows[rowNumber]["name"].ToString();
                textBoxUserIdTrainingSet.Text = localDataTable.Rows[rowNumber]["roll"].ToString();
                sessionBoxSaved.Text = localDataTable.Rows[rowNumber]["session"].ToString();

            }
        }


        //update table
        private void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                //ConnectToDatabase();
               // dbConnection.ConnectionString = conn;
                //dataAdapter = new MySqlDataAdapter("select * from face_attendance.trainingSet1", dbConnection);

                refreshDbConnection();
                localDataTable.Rows[rowNumber]["name"] = textBoxNameTraingSetViewer.Text;
                localDataTable.Rows[rowNumber]["roll"] = textBoxUserIdTrainingSet.Text;
                localDataTable.Rows[rowNumber]["session"] = sessionBoxSaved.Text;
                MySqlCommandBuilder sqlCommandBuilder = new MySqlCommandBuilder(dataAdapter);
                dataAdapter.UpdateCommand = sqlCommandBuilder.GetUpdateCommand();
                dataAdapter.Update(localDataTable);
                MessageBox.Show("Data Updated successfully");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }


        //delete data
        private void btnDelete_Click(object sender, EventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("Are You Sure?", "Warning!", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                try
                {
                    MySqlConnection conn2 = new MySqlConnection(conn);
                    string query = " delete from ama.trainingset1 where roll = " + textBoxUserIdTrainingSet.Text + " and course_id = " + classControl.course_id + " and name = '" + textBoxNameTraingSetViewer.Text + "' ";
                    //MessageBox.Show(query);
                    MySqlCommand command1 = new MySqlCommand(query, conn2);
                    MySqlDataReader myReader;
                    conn2.Open();
                    myReader = command1.ExecuteReader();
                    MessageBox.Show("Deleted Successfully!");
                    refreshDbConnection();
                    //set rownumber to 0;
                    rowNumber = localDataTable.Rows.Count - 1;

                    //set the first image
                    pictureBoxTrainingSetViewer.Image = readImageFromDB();

                    //set the first label
                    textBoxNameTraingSetViewer.Text = localDataTable.Rows[rowNumber]["name"].ToString();
                    textBoxUserIdTrainingSet.Text = localDataTable.Rows[rowNumber]["roll"].ToString();
                    sessionBoxSaved.Text = localDataTable.Rows[rowNumber]["session"].ToString();
                   // pictureBoxTrainingSetViewer.Image = readImageFromDB();
                   // textBoxNameTraingSetViewer.Text = localDataTable.Rows[rowNumber]["name"].ToString();
                   // textBoxUserIdTrainingSet.Text = localDataTable.Rows[rowNumber]["roll"].ToString();
                   // sessionBoxSaved.Text = localDataTable.Rows[rowNumber]["session"].ToString();

                     
                   /* if (rowNumber > 0)
                    {   
                        //ConnectToDatabase();
                        //dbConnection.ConnectionString = conn;
                        //dataAdapter = new MySqlDataAdapter("select * from face_attendance.trainingSet1", dbConnection);
                        refreshDbConnection();
                        localDataTable.Rows[rowNumber].Delete();
                        MySqlCommandBuilder sqlCommandBuilder = new MySqlCommandBuilder(dataAdapter);
                        dataAdapter.DeleteCommand = sqlCommandBuilder.GetDeleteCommand();
                        dataAdapter.Update(localDataTable);
                        MessageBox.Show("Data Deleted successfully");
                        //show previous face-label
                        pictureBoxTrainingSetViewer.Image = readImageFromDB();
                        textBoxNameTraingSetViewer.Text = localDataTable.Rows[rowNumber]["name"].ToString();
                        textBoxUserIdTrainingSet.Text = localDataTable.Rows[rowNumber]["roll"].ToString();
                        sessionBoxSaved.Text = localDataTable.Rows[rowNumber]["session"].ToString();
                    }
                    else
                    {
                        MessageBox.Show("Can not Delete");
                    }*/
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);

                }
            }
            else if (dialogResult == DialogResult.No)
            {
                return;
            }
           

        }

        private void btnFaceRecognizer_Click(object sender, EventArgs e)
        {
            faceRecognizeForm formFace = new faceRecognizeForm();
            formFace.StartPosition = FormStartPosition.CenterParent;
            this.Hide();
            formFace.ShowDialog();
            Close();
        }

        private void textBoxUserIdTrainingSet_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
