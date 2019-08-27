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
using System.IO;
using System.Security.Cryptography;

namespace attendance_system
{
    public partial class admincontrol1 : UserControl
    {
        string conn = "datasource=localhost;username=root;password=";
        public admincontrol1()
        {
            InitializeComponent();
           
        }

        
        bool empty_check()
        {
            if (userbox.Text == "" ||  nameBox.Text == "" || rankBox.Text == "" || deptBox.Text == "" || mailBox.Text == "" || facultyBox.Text == "" )
            {
                return true;
            }
            else
                return false;

        }
   

      
     
        private void panel_UpPaswd_Click(object sender, EventArgs e)
        {
            try
            {


                if (empty_check())
                {
                    MessageBox.Show("Please fill up all the fields!");
                    return;
                }

                // byte[] salt;
                // new RNGCryptoServiceProvider().GetBytes(salt = new byte[16]);
                //  var pbkdf2 = new Rfc2898DeriveBytes(passbox.Text, salt, 10000);
                //  byte[] hash = pbkdf2.GetBytes(20);
                //  byte[] hashbytes = new byte[36];
                //  Array.Copy(salt, 0, hashbytes, 0, 16);
                //  Array.Copy(hash, 0, hashbytes, 16, 20);
                //  string savedPasswordHash = Convert.ToBase64String(hashbytes);



                string name = nameBox.Text;
                string faculty = facultyBox.Text;
                string dept = deptBox.Text;
                string email = mailBox.Text;
                string rank = rankBox.Text;
                string pass = passbox.Text;
                string query = "";
                if (passbox.Text == "")
                {
                    query = "update ama.teacher set rank = '" + rank + "', faculty = '" + faculty + "', department = '" + dept + "', email = '" + email + "' where id = " + Form1.user_id + "  ";

                }
                else
                {
                    query = "update ama.teacher set rank = '" + rank + "', faculty = '" + faculty + "', department = '" + dept + "', email = '" + email + "',   password = '" + pass + "' where id = " + Form1.user_id + "  ";

                }
                MySqlConnection conn2 = new MySqlConnection(conn);
                //MessageBox.Show(query);
                MySqlCommand command1 = new MySqlCommand(query, conn2);
                MySqlDataReader myReader;
                conn2.Open();
                myReader = command1.ExecuteReader();
                MessageBox.Show("User updated!");
                //clear_all();

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

        private void admincontrol1_Load(object sender, EventArgs e)
        {
            try
            {


                string query = " select * from ama.teacher where id = " + Form1.user_id + "  ";
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
                    userbox.Text = dt.Rows[0][6].ToString();
                    userbox.ReadOnly = true;
                    nameBox.Text = dt.Rows[0][1].ToString();
                    facultyBox.Text = dt.Rows[0][3].ToString();
                    deptBox.Text = dt.Rows[0][4].ToString();
                    mailBox.Text = dt.Rows[0][5].ToString();
                    rankBox.Text = dt.Rows[0][2].ToString();
                    passbox.Text = "";
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void panel_UpPaswd_Paint(object sender, PaintEventArgs e)
        {

        }


    }
}
