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
    public partial class updateStudentForm : Form
    {

        string conn = "datasource=localhost;username=root;password=";
        public updateStudentForm()
        {
            InitializeComponent();
        }

        bool empty_check()
        {
            if (rollBox.Text == "" || nameBox.Text == "" || sessionBox.Text == "")
            {
                return true;
            }
            else
                return false;

        }

        private void show_data()
        {
            try
            {



                string query = " select * from ama.student where  id = " + TakeAttendanceForm.current_student_id + "  ";
                MySqlConnection conn2 = new MySqlConnection(conn);
                MySqlDataAdapter sda = new MySqlDataAdapter(query, conn2);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count == 0)
                {
                    //problem   MessageBox.Show("No result found!");
                    return;
                }
                if (dt.Rows.Count == 1)
                {
                    rollBox.Text = dt.Rows[0][2].ToString();
                    //ccodeBox.ReadOnly = true;
                    nameBox.Text = dt.Rows[0][1].ToString();
                    sessionBox.Text = dt.Rows[0][5].ToString();

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

        private void updateStudentForm_Load(object sender, EventArgs e)
        {
            show_data();
        }

        private void buttonUpdate_Click(object sender, EventArgs e)
        {
            try
            {


                if (empty_check())
                {
                    MessageBox.Show("Please fill up all the fields!");
                    return;
                }



                string roll = rollBox.Text;
                string name = nameBox.Text;
                string session = sessionBox.Text;



                MySqlConnection conn2 = new MySqlConnection(conn);
                string query = "update ama.student set roll  = " + Convert.ToInt32(roll) + ", name = '" + name + "', session = '" + session + "' where id = " + TakeAttendanceForm.current_student_id + "  ";
                MessageBox.Show(query);
                MySqlCommand command1 = new MySqlCommand(query, conn2);
                MySqlDataReader myReader;
                conn2.Open();
                myReader = command1.ExecuteReader();
                MessageBox.Show("Student Record updated!");


                while (myReader.Read())
                {

                }
                conn2.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void updateStudentForm_FormClosing(object sender, FormClosingEventArgs e)
        {
           // Application.Exit();
        }
    }
}
