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
    public partial class TakeAttendanceForm : Form
    {
        public static int current_student_id = 0;
        string conn = "datasource=localhost;username=root;password=";
        public TakeAttendanceForm()
        {
            InitializeComponent();
            updateButton.Text = "Update";
            deleteButton.Text = "Delete";
        }

        private void TakeAttendanceForm_Load(object sender, EventArgs e)
        {
            show_data();
        }
        private void show_data()
        {
            try
            {
                string query = "select * from ama.student where `course_id` = '" + classControl.course_id + "' order by roll ";

                MySqlConnection conn2 = new MySqlConnection(conn);
                MySqlDataAdapter sda = new MySqlDataAdapter(query, conn2);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                dataGridView1.Rows.Clear();
                foreach (DataRow item in dt.Rows)
                {
                    int n = dataGridView1.Rows.Add();
                    dataGridView1.Rows[n].Cells[0].Value = item[2].ToString();
                    dataGridView1.Rows[n].Cells[1].Value = item[1].ToString();
                    dataGridView1.Rows[n].Cells[3].Value = true;   //absent by default set to true
                    dataGridView1.Rows[n].Cells[2].Value = false;   //present
                    //assigning the hidden columns student_id  in column 6
                    dataGridView1.Rows[n].Cells[6].Value = item[0].ToString();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

            int column_index = e.ColumnIndex;
            int row_Index = e.RowIndex;
            if (e.RowIndex == -1)  // ignore header row and any column
                return; 
            if (e.ColumnIndex == 2 || e.ColumnIndex == 3)
            {
                if (Convert.ToBoolean(dataGridView1.Rows[row_Index].Cells[column_index].Value))
                {
                    dataGridView1.Rows[row_Index].Cells[2].Value = true;
                    dataGridView1.Rows[row_Index].Cells[3].Value = true;
                    dataGridView1.Rows[row_Index].Cells[column_index].Value = false; // if current check box is true , make false after click
                }
                else if (!Convert.ToBoolean(dataGridView1.Rows[row_Index].Cells[column_index].Value))
                {
                    dataGridView1.Rows[row_Index].Cells[2].Value = false;
                    dataGridView1.Rows[row_Index].Cells[3].Value = false;    //make all the checkbox of the row false, then , make current checkbox true
                    dataGridView1.Rows[row_Index].Cells[column_index].Value = true; // if current check box is false , make it true after click
                }

                if (dataGridView1.Rows[row_Index].Cells[column_index].Value == null)
                {
                   // MessageBox.Show("null");
                }
                else
                {
                   // MessageBox.Show(dataGridView1.Rows[row_Index].Cells[column_index].Value.ToString());
                }
            }
           
        }

        private void buttonBack_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }

        //check date 
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

       
        ///submit attendance
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



                    string query = "insert into ama.attendance(student_id, student_roll, course_code, course_id, attendance_value, date) values('" + row.Cells[6].Value + "', " + row.Cells[0].Value + ", '" + classControl.course_code + "' , " + classControl.course_id + " ,'" + attendance_value + "', '" + DateTime.Now.ToString("dd-MM-yy") + "') ";
                  //  MessageBox.Show(query);
                    MySqlConnection conn4 = new MySqlConnection(conn);

                    //   MessageBox.Show(query);

                    MySqlCommand command3 = new MySqlCommand(query, conn4);
                    MySqlDataReader myReader;
                    conn4.Open();
                    myReader = command3.ExecuteReader();
                   //  MessageBox.Show("Attendance Taken Successfully");

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

        ///delete or update

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 5)  //delete
            {
                DialogResult dialogResult = MessageBox.Show("Are You Sure?", "Warning!", MessageBoxButtons.YesNo);
                if (dialogResult == DialogResult.Yes)
                {
                    MySqlConnection conn2 = new MySqlConnection(conn);
                    string query = " delete from ama.student where id = " + Convert.ToInt32(dataGridView1.Rows[e.RowIndex].Cells[6].Value.ToString()) + " and course_id = " + classControl.course_id + " ";
                   // MessageBox.Show(query);
                    MySqlCommand command1 = new MySqlCommand(query, conn2);
                    MySqlDataReader myReader;
                    conn2.Open();
                    myReader = command1.ExecuteReader();
                    MessageBox.Show("Student Record Deleted!");
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
            if (e.ColumnIndex == 4)  // update
            {
                // MessageBox.Show("clicked");
                current_student_id = Convert.ToInt32(dataGridView1.Rows[e.RowIndex].Cells[6].Value.ToString());
                updateStudentForm formupdateStudent = new updateStudentForm();
                formupdateStudent.StartPosition = FormStartPosition.CenterParent;
                 ((Form)this.TopLevelControl).Hide();

                 formupdateStudent.ShowDialog();
                 ((Form)this.TopLevelControl).Show();
            }
            if (e.ColumnIndex == 0)
            {
                //  string course_code = dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString();
                // course_id = get_id(course_code);
                // recordsForm formRecord = new recordsForm();
                // ((Form)this.TopLevelControl).Hide();

                // formRecord.ShowDialog();
                //  ((Form)this.TopLevelControl).Show();

            }

        }

        private void TakeAttendanceForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            //Application.Exit();
        }
    }
}
