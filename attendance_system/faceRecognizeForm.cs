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

namespace attendance_system
{
    public partial class faceRecognizeForm : Form
    {
       
        //declaring global variables
        private Capture capture;        //takes images from camera as image frames
        private bool captureInProgress; // checks if capture is executing
        private CascadeClassifier _cascadeClassifier;


        private readonly String _trainerDataPath = Application.StartupPath + "/traineddata"; 
        private RecognizerEngine _recognizerEngine;

        //for extracting faces
        Bitmap[] extractedFacesArray;
        int faceNumber = 0;  //for previous-next

        //ms access database
       // OleDbConnection dbConnection = new OleDbConnection();

       // OleDbDataAdapter dataAdapter;
        //mysql
        string conn = "datasource=localhost;username=root;password=";
        MySqlConnection dbConnection = new MySqlConnection();
        MySqlDataAdapter dataAdapter;
        DataTable localDataTable = new DataTable();



        int totalRows = 0;  // index for storing data
        int rowNumber = 0;  //index for reading data


        public faceRecognizeForm()
        {
            InitializeComponent();
        }

        private void faceRecognizeForm_Load(object sender, EventArgs e)
        {
            _recognizerEngine = new RecognizerEngine( _trainerDataPath);
            _cascadeClassifier = new CascadeClassifier(Application.StartupPath + "/files/haarcascade_frontalface_alt_tree.xml");

            ConnectToDatabase();
           // MessageBox.Show("datatable size at first : " + localDataTable.Rows.Count);
            //set rownumber to 0;
            rowNumber = 0;
            /////////load database data/////////////////
            show_data();

         //   bckGroundTrainer.RunWorkerAsync();

        }

        //load database data//////
        private void show_data()
        {
            try
            {
                string query = "select  * from ama.trainingset1  where `course_id` = " + classControl.course_id + " group by roll order by roll ";

                MySqlConnection conn2 = new MySqlConnection(conn);
                MySqlDataAdapter sda = new MySqlDataAdapter(query, conn2);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                dataGridView1.Rows.Clear();
                foreach (DataRow item in dt.Rows)
                {
                    int n = dataGridView1.Rows.Add();
                    dataGridView1.Rows[n].Cells[0].Value = item[1].ToString();   //roll
                    dataGridView1.Rows[n].Cells[1].Value = item[2].ToString();  //name
                    dataGridView1.Rows[n].Cells[3].Value = true;   //absent by default set to true
                    dataGridView1.Rows[n].Cells[2].Value = false;   //present
                    //assigning the hidden columns student_id  in column 4
                    dataGridView1.Rows[n].Cells[4].Value = item[0].ToString();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void ProcessFrame(object sender, EventArgs arg)
        {
            var imageFrame = capture.QueryFrame().ToImage<Bgr, Byte>(); //line 1
            //line 2
            faceDetect(imageFrame);
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
                   // pictureBoxFaces.Image = extractedFacesArray[0];
                    faceNumber = 0;

                    
                   
                }
                //display image with detected faces
                pictureBox1.Image = ImageFrame.ToBitmap();
                recognize();
            }
        }

       
        //userid -1 for all ..   specific number for querying  specific user..  used for getting info of predicted username
        public void ConnectToDatabase(int userid = -1)
        {
            dbConnection.ConnectionString = conn;

            dbConnection.Open();

            if (userid == -1)
            {

                dataAdapter = new MySqlDataAdapter("select * from ama.trainingSet1", dbConnection);
            }
            else
            {

                dataAdapter = new MySqlDataAdapter("select * from ama.trainingSet1 where roll = " + userid + " ", dbConnection);
            }
            //OleDbCommandBuilder commandBuilder = new OleDbCommandBuilder(dataAdapter);

            dataAdapter.Fill(localDataTable);

            if (localDataTable.Rows.Count != 0)
            {
                //set total rows to number of rows of local table  
                totalRows = localDataTable.Rows.Count;
            }
        }
        public void refreshDbConnection(int userid = -1)   // userid default -1 for all. 
        {
            if (dbConnection.State.Equals(ConnectionState.Open))
            {
                localDataTable.Clear();
                dbConnection.Close();
                ConnectToDatabase(userid);
            }
        }


        // -------------------Train Face Recognizer-------------------
        private void btnTrain_Click(object sender, EventArgs e)
        {
           // btnTrain.Enabled = false;
           // bckGroundTrainer.RunWorkerAsync();
           bool result =  _recognizerEngine.TrainRecognizer();
           if (result)
           {
               MessageBox.Show("Training has been done!");
               btnTrain.Enabled = false;
           }
           else
           {
               MessageBox.Show("Training has been cancelled!"); 
           }
        }


        //not used
        
        private bool TrainRecognizer(BackgroundWorker worker, DoWorkEventArgs e)
        {
            if (worker.CancellationPending)
            {
                e.Cancel = true;
            }
            else
            {
                var hasTrainedRecognizer = _recognizerEngine.TrainRecognizer();
                return hasTrainedRecognizer;
            }
            return false;
        }

        //not used
        private void bckGroundTrainer_DoWork(object sender, DoWorkEventArgs e)
        {

            var worker = sender as BackgroundWorker;
            e.Result = TrainRecognizer(worker, e);
        }

        //not used
        private void bckGroundTrainer_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            if (e.Error != null)
            {
                MessageBox.Show(e.Error.Message);
            }
            else if (e.Cancelled)
            {
                MessageBox.Show("Training has been cancelled!"); 
            }
            else
            {
                var result = (bool)e.Result;
                if (result)
                {
                    MessageBox.Show("Training has been completed successfully!"); 

                }
                else
                {
                    MessageBox.Show("Training could not be completed, An Error Occurred"); 
                }
                         }
            btnTrain.Enabled = true;
        }

        private void btnTrainingSet_Click(object sender, EventArgs e)
        {
            trainingSetManage form1 = new trainingSetManage();
            form1.StartPosition = FormStartPosition.CenterParent;
            this.Hide();
            form1.ShowDialog();
            Close();
        }


        //-----------------------------------------------

        private void btnCapture_Click(object sender, EventArgs e)
        {

            recognize();
            
        }

        //recognize ----------------------face-----------------------///
        private void recognize()
        {
            if (extractedFacesArray == null)
            {
               // MessageBox.Show("Get an Image First!");
                return;
            }
            else if (extractedFacesArray.Length == 0)
            {
                //  MessageBox.Show("No faces Detected!");
                  return;
            }
            else if (extractedFacesArray.Length > 1)
            {
                //  MessageBox.Show("Multiple Faces found! showing first one  ");

            }
            else if (extractedFacesArray.Length == 1)
            {
                //  MessageBox.Show("One Face Detected!");

            }
            pictureBoxFaces.Image = extractedFacesArray[0];


            //show number of faces.
            //  MessageBox.Show("Number of faces detected: " + extractedFacesArray.Length.ToString());

            for (int i = 0; i < extractedFacesArray.Length; i++)
            {
                //recognize face
                try
                {
                    pictureBoxFaces.Image = extractedFacesArray[i];
                    faceNumber = i;
                    var predictedUserId = _recognizerEngine.RecognizeUser(new Image<Gray, byte>(extractedFacesArray[i]));
                    if (predictedUserId == -1)
                    {
                        //  MessageBox.Show("This person is not recognized, Kindly register this face", "Authentication Result",
                        //   MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    else
                    {


                        refreshDbConnection(predictedUserId);
                        //  MessageBox.Show("Predicted userId " + predictedUserId + " datatable size " + localDataTable.Rows.Count);
                        if (localDataTable.Rows.Count > 0)
                        {
                            //  textBoxName.Text = localDataTable.Rows[0]["name"].ToString();
                            //   textBoxUserID.Text = localDataTable.Rows[0]["roll"].ToString();
                            // pictureBoxRecognizedFace.Image = readImageFromDB(0);   // row  = 0

                            ////showing in datagrid view/////
                            foreach (DataGridViewRow row in dataGridView1.Rows)
                            {
                                if (Convert.ToInt32(row.Cells[0].Value.ToString()) == predictedUserId)
                                {
                                    //present-absent
                                    row.Cells[2].Value = true;
                                    row.Cells[3].Value = false;
                                }


                            }

                        }
                        else
                        {
                            //MessageBox.Show("No Username for this face, Kindly register this face", "Authentication Result",
                           // MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }

                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error: " + ex.Message, "Authentication Result - Error", MessageBoxButtons.OK,
                        MessageBoxIcon.Error);
                }
            }

        }


        //read face from database
        private Image readImageFromDB( int id)
        {
            try
            {
                Image fetchedImage;
                if (id >= 0)
                {
                    byte[] fetchedImageByte = (byte[])localDataTable.Rows[id]["faceImage"];

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

        private int checkDate()
        {

            MySqlConnection conn2 = new MySqlConnection(conn);
            string query = "select distinct `date` from ama.attendance where  course_id = " + classControl.course_id + "  and date = '" + DateTime.Now.ToString("dd-MM-yy") + "' ";
            //MessageBox.Show(query);
            MySqlDataAdapter sda = new MySqlDataAdapter(query, conn2);
            DataTable dtbt = new DataTable();
            sda.Fill(dtbt);

            ///date check
            if (dtbt.Rows.Count >= 1)
            {
                return 1;
            }
            else
                return 0;
        }

        private void buttonSubmit_Click(object sender, EventArgs e)
        {
            int checkCurrentDate = checkDate();
            if (checkCurrentDate == 1)
            {
                MessageBox.Show("Attendance Already Taken!");
                return;
            }
            try
            {
                if (dataGridView1.Rows.Count < 1)
                {
                    MessageBox.Show("No students in database. Please add some in training set manager.");
                    return;
                }
                foreach (DataGridViewRow row in dataGridView1.Rows)
                {
                    string attendance_value = "";
                    if (Convert.ToBoolean(row.Cells[2].Value))
                    {
                        attendance_value = "Present";
                    }
                    else
                    {
                        attendance_value = "Absent";
                    }



                    string query = "insert into ama.attendance(student_id, student_roll, course_code, course_id, attendance_value, date) values('" + row.Cells[4].Value + "', " + row.Cells[0].Value + ", '" + classControl.course_code + "' , " + classControl.course_id + " ,'" + attendance_value + "', '" + DateTime.Now.ToString("dd-MM-yy") + "') ";
                   // MessageBox.Show(query);
                    MySqlConnection conn4 = new MySqlConnection(conn);

                    //   MessageBox.Show(query);

                    MySqlCommand command3 = new MySqlCommand(query, conn4);
                    MySqlDataReader myReader;
                    conn4.Open();
                    myReader = command3.ExecuteReader();
                   

                    while (myReader.Read())
                    {

                    }
                    conn4.Close();
                }
                MessageBox.Show("Attendance Taken Successfully");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return;
            }
        }

        private void buttonBack_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }

        private void faceRecognizeForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            //Application.Exit();
        }

        private void btnPrev_Click(object sender, EventArgs e)
        {
            if (faceNumber == 0)
            {
              //  MessageBox.Show("1st face");
                return;
            }
            faceNumber--;
            pictureBoxFaces.Image = extractedFacesArray[faceNumber];
        }

        private void btnNext_Click(object sender, EventArgs e)
        {
            if (faceNumber == extractedFacesArray.Length - 1)
            {
               // MessageBox.Show("last face");
                return;
            }
            faceNumber++;
            pictureBoxFaces.Image = extractedFacesArray[faceNumber];
        }




      
    }
}
