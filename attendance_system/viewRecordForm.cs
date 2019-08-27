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
    public partial class viewRecordForm : Form
    {
        string conn = "datasource=localhost;username=root;password=";
        public viewRecordForm()
        {
            InitializeComponent();
        }

        private void viewRecordForm_Load(object sender, EventArgs e)
        {
            show_data();
        } 
         private void show_data()
        {
            try
            {
                string  query = "select std.id, std.roll, std.name, std.course_id, att.student_id, att.attendance_value,att.date,att.id  from ama.student std inner join ama.attendance att on std.course_id = att.course_id  and att.course_id = "+classControl.course_id+" and att.date = '"+recordsForm.clicked_date+"' and std.roll = att.student_roll order by std.roll";
             // MessageBox.Show(query);

                MySqlConnection conn2 = new MySqlConnection(conn);
                MySqlDataAdapter sda = new MySqlDataAdapter(query, conn2);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                dataGridView1.Rows.Clear();
                foreach (DataRow item in dt.Rows)
                {
                   // MessageBox.Show(item[0].ToString());
                   // MessageBox.Show(item[1].ToString());
                  //  MessageBox.Show(item[2].ToString());
                  //  MessageBox.Show(item[3].ToString());
                 //   MessageBox.Show(item[4].ToString());
                 //   MessageBox.Show(item[5].ToString());
                 //   MessageBox.Show(item[6].ToString());
                   //    MessageBox.Show(item[7].ToString());

                    int n = dataGridView1.Rows.Add();
                    dataGridView1.Rows[n].Cells[0].Value = item[1].ToString();
                    dataGridView1.Rows[n].Cells[1].Value = item[2].ToString();
                    if (item[5].ToString() == "Present")
                    {
                        dataGridView1.Rows[n].Cells[3].Value = false; //absent by default set to true
                        dataGridView1.Rows[n].Cells[2].Value = true; ;   //present
                    }
                    else if (item[5].ToString() == "Absent")
                    {
                        dataGridView1.Rows[n].Cells[3].Value = true;  //absent by default set to true
                          dataGridView1.Rows[n].Cells[2].Value = false;   //present
                    }
                  
                    //assigning the hidden columns student_id  in column 6
                    dataGridView1.Rows[n].Cells[4].Value = item[0].ToString();
                    dataGridView1.Rows[n].Cells[5].Value = item[7].ToString(); //hidden attendance id
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

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {


                int column_index = e.ColumnIndex;
                int row_Index = e.RowIndex;
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
                    //debugging
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
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void buttonUpdate_Click(object sender, EventArgs e)
        {
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



                    string query = "UPDATE ama.attendance SET `attendance_value`='" + attendance_value + "' WHERE `course_id` = " + classControl.course_id + " AND `date` = '" + recordsForm.clicked_date + "' AND `id` = " + Convert.ToInt32(row.Cells[5].Value.ToString()) + "  ";
                  //  MessageBox.Show(query);
                    MySqlConnection conn4 = new MySqlConnection(conn);

                    //   MessageBox.Show(query);

                    MySqlCommand command3 = new MySqlCommand(query, conn4);
                    MySqlDataReader myReader;
                    conn4.Open();
                    myReader = command3.ExecuteReader();
                    MessageBox.Show("Attendance Updated Successfully");

                    while (myReader.Read())
                    {

                    }
                    conn4.Close();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return;
            }
        }

        private void viewRecordForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            //Application.Exit();
        }
    }
}
