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
    public partial class createClassControl : UserControl
    {
        string conn = "datasource=localhost;username=root;password=";
        public createClassControl()
        {
            InitializeComponent();
        }

      

        private void panelCreate_Click(object sender, EventArgs e)
        {

        }

        private void panelCreate_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button_insert_Click(object sender, EventArgs e)
        {

            int id = 0;
            if (ccodeBox.Text == "" || ctitleBox.Text == "" || semBox.Text == "")
            {
                MessageBox.Show("Please Fillup All the Required Fields.");
                return;
            }
            try
            {
                string query = "insert into ama.course(teacher_id, course_code, course_title,semester) values(" + Form1.user_id + ",'" + this.ccodeBox.Text + "','" + this.ctitleBox.Text + "','" + this.semBox.Text + "'); ";

                MySqlConnection conn2 = new MySqlConnection(conn);

                //  MessageBox.Show(query);

                MySqlCommand command1 = new MySqlCommand(query, conn2);
                MySqlDataReader myReader;
                conn2.Open();
                myReader = command1.ExecuteReader();
                MessageBox.Show("Saved!");

                while (myReader.Read())
                {

                }
                conn2.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return;
            }
        }
    }
}
