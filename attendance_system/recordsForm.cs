using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace attendance_system
{
    public partial class recordsForm : Form
    {
        public static string clicked_date = "";
        string conn = "datasource=localhost;username=root;password=";

        public recordsForm()
        {
            InitializeComponent();
            viewButton.Text = "View";
            deleteButton.Text = "Delete";
        }

        private void recordsForm_Load(object sender, EventArgs e)
        {
            show_data();
        }

        private void show_data()
        {
           
              try
              {
                  MySqlConnection conn2 = new MySqlConnection(conn);
                  string query = "select distinct `date` from ama.attendance where `course_id` = " + classControl.course_id + " ";
                  MySqlDataAdapter sda = new MySqlDataAdapter(query, conn2);
                  DataTable dt = new DataTable();
                  sda.Fill(dt);
                  dataGridView1.Rows.Clear();

                  foreach (DataRow item in dt.Rows)
                  {
                      int n = dataGridView1.Rows.Add();
                      dataGridView1.Rows[n].Cells[0].Value = item[0].ToString();
                  }
              }
              catch (Exception ex)
              {
                  MessageBox.Show(ex.Message);
              }
             

        }

        private void buttonBack_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex == -1)  // ignore header row and any column
                return; 
            if (e.ColumnIndex == 2)  //delete
            {
                DialogResult dialogResult = MessageBox.Show("Are you Sure?", "Warning!", MessageBoxButtons.YesNo);
                if (dialogResult == DialogResult.Yes)
                {
                    MySqlConnection conn2 = new MySqlConnection(conn);
                    string query = " delete from ama.attendance where course_id = " + classControl.course_id + " and `date` = '" + dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString() + "' ";
                    // MessageBox.Show(query);
                    MySqlCommand command1 = new MySqlCommand(query, conn2);
                    MySqlDataReader myReader;
                    conn2.Open();
                    myReader = command1.ExecuteReader();
                    MessageBox.Show("Record Deleted!");
                    show_data();

                    while (myReader.Read())
                    {

                    }
                    conn2.Close();
                }
                else if (dialogResult == DialogResult.No)
                {
                    return;
                }

              

            }
            if (e.ColumnIndex == 1)  // update
            {
                clicked_date = dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString();
                
                // updateClassControl1.BringToFront();
                // panelClassControl.SendToBack();
                viewRecordForm recordViewForm = new viewRecordForm();
                recordViewForm.StartPosition = FormStartPosition.CenterParent;
                ((Form)this.TopLevelControl).Hide();
                
                recordViewForm.ShowDialog();
                ((Form)this.TopLevelControl).Show();
            }
            if (e.ColumnIndex == 0 )
            {
              //  string course_code = dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString();
               // course_id = get_id(course_code);
               // recordsForm formRecord = new recordsForm();
               // ((Form)this.TopLevelControl).Hide();

               // formRecord.ShowDialog();
              //  ((Form)this.TopLevelControl).Show();

            }

        }

        private int checkDate()
        {
           
            MySqlConnection conn2 = new MySqlConnection(conn);
            string query = "select distinct `date` from ama.attendance where  course_id = " + classControl.course_id + "  and date = '" + DateTime.Now.ToString("dd-MM-yy") + "' ";
          //  MessageBox.Show(query);
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

        //check if any student in database
        private int checkStudent()
        {

            MySqlConnection conn2 = new MySqlConnection(conn);
            string query = "select * from ama.student where  course_id = " + classControl.course_id + "  ";
            //  MessageBox.Show(query);
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

        
        
        private void buttontakeAttendance_Click(object sender, EventArgs e)
        {
            int checkCurrentDate = checkDate();
            int checkstudent = checkStudent();
            if (checkCurrentDate == 1)
            {
                MessageBox.Show("Attendance Already Taken!");
                return;
            }
            if (checkstudent == 0)
            {
                MessageBox.Show("No student in database! Please add first.");
                return;
            }

            TakeAttendanceForm takeForm = new TakeAttendanceForm();
            takeForm.StartPosition = FormStartPosition.CenterParent;
            ((Form)this.TopLevelControl).Hide();

            takeForm.ShowDialog();
            ((Form)this.TopLevelControl).Show();
        }

        private void buttonAddStudent_Click(object sender, EventArgs e)
        {
            AddStudent addStudent = new AddStudent();
            addStudent.StartPosition = FormStartPosition.CenterParent;
             ((Form)this.TopLevelControl).Hide();

             addStudent.ShowDialog();
              ((Form)this.TopLevelControl).Show();
        }

        private void buttonfaceAttendance_Click(object sender, EventArgs e)
        {
            int checkCurrentDate = checkDate();
            if (checkCurrentDate == 1)
            {
                MessageBox.Show("Attendance Already Taken!");
                return;
            }
            faceRecognizeForm faceForm = new faceRecognizeForm();
            faceForm.StartPosition = FormStartPosition.CenterParent;
            ((Form)this.TopLevelControl).Hide();

            faceForm.ShowDialog();
            ((Form)this.TopLevelControl).Show();
        }


        private void recordsForm_FormClosing(object sender, FormClosingEventArgs e)
        {

            //Application.Exit();
                    
        }
    }
}
