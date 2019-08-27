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
    public partial class registration : Form
    {
        string conn = "datasource=localhost;username=root;password=";
        public registration()
        {
            InitializeComponent();
        }

        //validate email
        bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }

        private void button_reg_Click(object sender, EventArgs e)
        {
            if (userNameBox.Text == "" || nameBox.Text == "" || passBox.Text == "" || rankBox.Text == "" || deptBox.Text == "" || facultyBox.Text == "" || mailBox.Text == "")
            {
                MessageBox.Show("Don't Leave Empty Fields! ");
                return;
            }
            if (checkUser())
            {
                MessageBox.Show("User Already Exists!Try another username ");
                return;
            }
            if (IsValidEmail(mailBox.Text))
            {
                MessageBox.Show("Invalid Email!");
                return;
            }
            try
            {
                string query = "INSERT INTO ama.`teacher`(`name`, `rank`, `faculty`, `department`, `email`, `username`, `password`) VALUES ('"+nameBox.Text+"','"+rankBox.Text+"','"+facultyBox.Text+"','"+deptBox.Text+"','"+mailBox.Text+"','"+userNameBox.Text+"','"+passBox.Text+"') ";

                MySqlConnection conn2 = new MySqlConnection(conn);

                //  MessageBox.Show(query);

                MySqlCommand command1 = new MySqlCommand(query, conn2);
                MySqlDataReader myReader;
                conn2.Open();
                myReader = command1.ExecuteReader();
                MessageBox.Show("Successfully Registered");
                

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

        //check if username already exists
        public bool checkUser()
        {
            MySqlConnection conn2 = new MySqlConnection(conn);
            string query = "select username from ama.teacher where  username = '"+userNameBox.Text+"'  ";
            //  MessageBox.Show(query);
            MySqlDataAdapter sda = new MySqlDataAdapter(query, conn2);
            DataTable dtbt = new DataTable();
            sda.Fill(dtbt);

            ///date check
            if (dtbt.Rows.Count  > 0)
            {
                return true;
            }
            else
                return false;
        }

        private void buttonLogin_Click(object sender, EventArgs e)
        {
            this.DialogResult = System.Windows.Forms.DialogResult.OK;
        }
    }
}
