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
using System.Data.OleDb;

namespace attendance_system
{
    public partial class AddStudent : Form
    {
        string conn = "datasource=localhost;username=root;password=";
        string path = "";

        public AddStudent()
        {
            InitializeComponent();
            buttonUpload.Enabled = false;
          //  MessageBox.Show(classControl.course_code);
        }
        bool empty_check()
        {
            if (rollBox.Text == "" || nameBox.Text == "" || sessionBox.Text == "" )
            {
                return true;
            }
            else
                return false;

        }
        public void clear_all()
        {
            // userbox.Text = "";
            rollBox.Text = "";
            nameBox.Text = "";
            sessionBox.Text = "";
           
        }


        private void buttonAdd_Click(object sender, EventArgs e)
        {
             
              if (empty_check())
              {
                  MessageBox.Show("Please fill up the fields");
              }
            try
            {
                string query = "insert into ama.student(name, roll,  course_code, course_id,session) values('" + this.nameBox.Text + "'," + this.rollBox.Text + ",'" + classControl.course_code + "'," + classControl.course_id + ", '"+ this.sessionBox.Text +"'); ";

                MySqlConnection conn2 = new MySqlConnection(conn);

                //  MessageBox.Show(query);

                MySqlCommand command1 = new MySqlCommand(query, conn2);
                MySqlDataReader myReader;
                conn2.Open();
                myReader = command1.ExecuteReader();
                MessageBox.Show("Saved!");
                clear_all();

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

        //button choose xlxs file to upload
        private void buttonChoose_Click(object sender, EventArgs e)
        {
            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {

                path = System.IO.Path.GetFullPath(openFileDialog1.FileName);
                labelPath.Text = path;
                buttonUpload.Enabled = true;
            }
              
        }

        //upload xlxs file to database
        private void buttonUpload_Click(object sender, EventArgs e)
        {
            try
            {
                if (path == "")
                {
                    return;
                }

                // String connectionString = "Provider=Microsoft.Jet.OLEDB.4.0;" + "Data Source=" + path + ";" + "Extended Properties=Excel 8.0;";
                String connectionString = "Provider=Microsoft.ACE.OLEDB.12.0; " + " Data Source=" + path + ";" + " Extended Properties='Excel 12.0 Xml;HDR=YES'";
                OleDbConnection xlConn = new OleDbConnection(connectionString);
                xlConn.Open();
                OleDbCommand selectCmd = new OleDbCommand("SELECT * FROM [Sheet1$]", xlConn);
                OleDbDataAdapter xlAdapter = new OleDbDataAdapter();
                xlAdapter.SelectCommand = selectCmd;
                DataSet xlDataset = new DataSet();
                xlAdapter.Fill(xlDataset, "XLData");
                DataTable dt = xlDataset.Tables[0];
                dataGridView1.Rows.Clear();

                foreach (DataRow item in dt.Rows)
                {
                    int n = dataGridView1.Rows.Add();
                    dataGridView1.Rows[n].Cells[0].Value = item[0].ToString();
                    dataGridView1.Rows[n].Cells[1].Value = item[1].ToString();
                    dataGridView1.Rows[n].Cells[2].Value = item[2].ToString();
                    try
                    {
                        string query = "insert into ama.student(name, roll, course_code, course_id, session) values('" + dataGridView1.Rows[n].Cells[1].Value + "', " + dataGridView1.Rows[n].Cells[0].Value + ", '" + classControl.course_code + "' , " + classControl.course_id + " ,'" + dataGridView1.Rows[n].Cells[2].Value + "') ";

                        MySqlConnection conn4 = new MySqlConnection(conn);

                        //   MessageBox.Show(query);

                        MySqlCommand command3 = new MySqlCommand(query, conn4);
                        MySqlDataReader myReader;
                        conn4.Open();
                        myReader = command3.ExecuteReader();
                        // MessageBox.Show("Saved!");

                        while (myReader.Read())
                        {

                        }
                        conn4.Close();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                        return;
                    }
                }
                MessageBox.Show("Saved!");
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

        private void AddStudent_FormClosing(object sender, FormClosingEventArgs e)
        {
            //Application.Exit();
        }
    }
}
