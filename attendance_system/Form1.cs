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
using System.IO;
using System.Security.Cryptography;


namespace attendance_system
{
    public partial class Form1 : Form
    {
        bool state = false;
        public static string user = "";
        public static int user_id = 0;
        string conn = "datasource=localhost;username=root;password=";
        //  MySqlConnection conn2 = new MySqlConnection(conn);
        public Form1()
        {
            InitializeComponent();
            this.label7.Text = "1.Chinmay Bepery\n Associate Professor,\nDepartment of CIT,\n2.Naimur Rahman\n Assistant Professor,\nDepartment of EEE,\nFaculty of Computer Science & Engineering,\nPatuakhali Science and Technology University.";

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            timer1.Start();
            Clock.Text = DateTime.Now.ToLongTimeString();

        }
        private void timer1_Tick(object sender, EventArgs e)
        {
            Clock.Text = DateTime.Now.ToLongTimeString();
            timer1.Start();
        }

        private void button_Login_Click(object sender, EventArgs e)
        {
            if (namebox.Text == "")
            {
                MessageBox.Show("Please Enter a Valid User Name!");
                return;
            }
            //  MessageBox.Show("check");
            try
            {

                MySqlConnection conn2 = new MySqlConnection(conn);
                string query = "Select * from ama.teacher where username COLLATE utf8_bin = '" + namebox.Text + "' ";
                MySqlDataAdapter sda = new MySqlDataAdapter(query, conn2);
                DataTable dtbt = new DataTable();
                sda.Fill(dtbt);

                ///Password Check
                if (dtbt.Rows.Count == 1)
                {
                    if (state == false)
                    {
                        hasUserName(true);

                        return;

                    }
                    if (passbox.Text == "")
                    {
                        MessageBox.Show("Please Enter Password!");
                        return;
                    }
                    string savedPassswordHash = dtbt.Rows[0][7].ToString();
                   // byte[] hashBytes = Convert.FromBase64String(savedPassswordHash);
                  //  byte[] salt = new byte[16];
                  //  Array.Copy(hashBytes, 0, salt, 0, 16);
                  //  var pbkdf2 = new Rfc2898DeriveBytes(passbox.Text, salt, 10000);
                  //  byte[] hash = pbkdf2.GetBytes(20);
                    int ok = 1;
                   // for (int i = 0; i < 20; i++)
                  //  {
                    //    if (hashBytes[i + 16] != hash[i])
                    //    {
                    //        ok = 0;
                     //       break;
                     //   }
                    //////////////////////////not using hashing////////////

                    //
                   // }
                    if (savedPassswordHash != passbox.Text.ToString())
                    {
                        ok = 0;
                    }
                    if (ok == 1)
                    {
                        user = namebox.Text;
                        user_id = Int32.Parse(dtbt.Rows[0][0].ToString());
                        main f3 = new main();              //Here, Form3 existed
                        this.Hide();
                        f3.ShowDialog();
                        Close();
                    }
                    else
                    {
                        MessageBox.Show("Incorrect Password!");
                        //namebox.Text = "";
                        passbox.Text = "";
                    }

                }
                else
                {
                    MessageBox.Show("User Doesn't Exist!");
                    // namebox.Text = "";
                    passbox.Text = "";
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

        private void hasUserName(bool input)
        {
            pictureBox_usrname.Visible = !input;
            pictureBox_paswd.Visible = input;
            panel_inputStatus.Visible = false;
            label_UserName.Visible = !input;
            namebox.Visible = !input;
            this.BackColor = Color.FromName("LightSeaGreen");

            label_Password.Visible = input;
            passbox.Visible = input;
            state = input;
            button_Back.Visible = input;
            button_Back.ForeColor = Color.FromName("Silver");

            button_Login.ForeColor = Color.FromName("GreenYellow");
            panel_inputStatus.BackColor = Color.FromName("GreenYellow");

            button_Login.Text = "Login";
            passbox.Text = "";

        }


        private void button_Minimize_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void button_Back_Click(object sender, EventArgs e)
        {
            // this.BackColor = Color.FromName("SpringGreen");
            BackColor = System.Drawing.Color.Black;
            hasUserName(false);
            namebox.Text = "";
            button_Login.ForeColor = Color.FromName("LightSeaGreen");
            panel_inputStatus.BackColor = Color.FromName("Turquoise");
            button_Login.Text = "Next";
            button_Back.ForeColor = Color.FromArgb(100, 100, 100);


        }

        private void namebox_MouseClick(object sender, MouseEventArgs e)
        {
            panel_inputStatus.Visible = true;

        }

        private void passbox_TextChanged(object sender, EventArgs e)
        {
            panel_inputStatus.Visible = true;

        }

        private void passbox_MouseClick(object sender, MouseEventArgs e)
        {
            panel_inputStatus.Visible = true;

        }

        private void namebox_TextChanged(object sender, EventArgs e)
        {
            panel_inputStatus.Visible = true;

        }

        private void button_Exit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button_AboutUs_Click(object sender, EventArgs e)
        {
            panel_Content.SendToBack();
            panel_AboutUs.BringToFront();
        }

        private void panel_AboutUs_Click(object sender, EventArgs e)
        {
            panel_AboutUs.SendToBack();
            panel_Content.BringToFront();
        }

        private void buttonReg_Click(object sender, EventArgs e)
        {
            registration formReg = new registration();
            this.Hide();
            formReg.ShowDialog();
            this.Show();
        }





    }
}
