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
    public partial class updateClassForm : Form
    {
        string conn = "datasource=localhost;username=root;password=";

        public updateClassForm()
        {
            InitializeComponent();
        }

        bool empty_check()
        {
            if (ctitleBox.Text == "" || semBox.Text == "")
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



                string query = " select * from ama.course where  id = " + classControl.course_id + "  ";
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
                    ccodeBox.Text = dt.Rows[0][2].ToString();
                    //ccodeBox.ReadOnly = true;
                    ctitleBox.Text = dt.Rows[0][3].ToString();
                    semBox.Text = dt.Rows[0][4].ToString();

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void button_update_Click(object sender, EventArgs e)
        {
             if (empty_check())
            {
                MessageBox.Show("Please fill up all the fields!");
                return;
            }



            string ccode = ccodeBox.Text;
            string ctitle = ctitleBox.Text;
            string sem = semBox.Text;
           


            MySqlConnection conn2 = new MySqlConnection(conn);
            string query = "update ama.course set course_code  = '" + ccode + "', course_title = '" + ctitle + "', semester = '" + sem + "' where id = " + classControl.course_id + "  ";
            MessageBox.Show(query);
            MySqlCommand command1 = new MySqlCommand(query, conn2);
            MySqlDataReader myReader;
            conn2.Open();
            myReader = command1.ExecuteReader();
            MessageBox.Show("Course updated!");
           

            while (myReader.Read())
            {

            }
            conn2.Close();
        }

        private void updateClassForm_Load(object sender, EventArgs e)
        {
            show_data();
        }

        private void buttonback_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }

        private void updateClassForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            //Application.Exit();
        }
        
    }
}
