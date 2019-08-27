using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace attendance_system
{
    public partial class classControl : UserControl
    {
        string conn = "datasource=localhost;username=root;password=";
        public static int course_id = 0 ;
        public static string course_code = "";

        public classControl()
        {
            InitializeComponent();
            panelClassControl.BringToFront();
          
            updateButton.Text = "Update";
            deleteButton.Text = "Delete";
           
        }

        private void classControl_Load(object sender, EventArgs e)
        {
            show_course();
           
        }
        private void show_course()
        {

            try
            {
                string query = "select * from ama.course where teacher_id = " + Form1.user_id + " ";

                MySqlConnection conn2 = new MySqlConnection(conn);
                MySqlDataAdapter sda = new MySqlDataAdapter(query, conn2);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                dataGridView1.Rows.Clear();

                foreach (DataRow item in dt.Rows)
                {
                    int n = dataGridView1.Rows.Add();
                    dataGridView1.Rows[n].Cells[0].Value = item[2].ToString();
                    dataGridView1.Rows[n].Cells[1].Value = item[3].ToString();



                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {


                if (e.RowIndex == -1)  // ignore header row and any column
                    return;
                if (e.ColumnIndex == 3)  //delete
                {
                    DialogResult dialogResult = MessageBox.Show("Are You Sure?", "Warning!", MessageBoxButtons.YesNo);
                    if (dialogResult == DialogResult.No)
                    {
                        return;
                    }
                    else if (dialogResult == DialogResult.Yes)
                    {
                        MySqlConnection conn2 = new MySqlConnection(conn);
                        string query = " delete from ama.course where teacher_id = " + Form1.user_id + " and course_code = '" + dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString() + "' ";
                        // MessageBox.Show(query);
                        MySqlCommand command1 = new MySqlCommand(query, conn2);
                        MySqlDataReader myReader;
                        conn2.Open();
                        myReader = command1.ExecuteReader();
                        MessageBox.Show("Course Deleted!");
                        show_course();

                        while (myReader.Read())
                        {

                        }
                        conn2.Close();
                    }




                }
                if (e.ColumnIndex == 2)  // update
                {

                    course_code = dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString();
                    course_id = get_id(course_code);
                    //  MessageBox.Show(course_code);
                    // MessageBox.Show(course_id.ToString());
                    // updateClassControl1.BringToFront();
                    // panelClassControl.SendToBack();
                    updateClassForm formupdate = new updateClassForm();
                    formupdate.StartPosition = FormStartPosition.CenterParent;
                    ((Form)this.TopLevelControl).Hide();

                    formupdate.ShowDialog();
                    ((Form)this.TopLevelControl).Show();
                }
                if (e.ColumnIndex == 0 || e.ColumnIndex == 1)
                {
                    course_code = dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString();
                    course_id = get_id(course_code);
                    recordsForm formRecord = new recordsForm();
                    formRecord.StartPosition = FormStartPosition.CenterParent;
                    ((Form)this.TopLevelControl).Hide();

                    formRecord.ShowDialog();
                    ((Form)this.TopLevelControl).Show();

                    // ((FormClosingEventArgs)e).Cancel = formRecord.DialogResult == DialogResult.Cancel;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }
        private int get_id(string course_code){
              try
            {
                // getting last inserted id
                string cmd = "select id from ama.course where teacher_id = " + Form1.user_id +" and course_code = '"+ course_code +"'";
                MySqlConnection conn3 = new MySqlConnection(conn);
                MySqlCommand command2 = new MySqlCommand(cmd, conn3);
                conn3.Open();
                var query_id = command2.ExecuteScalar();
                conn3.Close();


                string current_id = Convert.ToString(query_id);
                return Convert.ToInt32(current_id);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return 0;
            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
