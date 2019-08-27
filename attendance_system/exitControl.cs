using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace attendance_system
{
    public partial class exitControl : UserControl
    {
        public exitControl()
        {
            InitializeComponent();
        }

        private void button_Yes_Click(object sender, EventArgs e)
        {
            Form1 f1 = new Form1();
            ((Form)this.TopLevelControl).Hide();

            f1.ShowDialog();
            ((Form)this.TopLevelControl).Close();
        }

        private void button_No_Click(object sender, EventArgs e)
        {
            this.SendToBack();
            ((Form)this.TopLevelControl).Text = "Attendance System";
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }
    }
}
