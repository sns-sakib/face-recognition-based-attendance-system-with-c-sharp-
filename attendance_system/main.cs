using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace attendance_system
{
    public partial class main : Form
    {
        bool isCollapsed = true;
        public main()
        {
            InitializeComponent();
            paneldrop.Height = 0;
            isCollapsed = true;
        }

        private void main_Load(object sender, EventArgs e)
        {
            panel_curtain.BringToFront();
            homecontrol1.BringToFront();
            paneldrop.BringToFront();
        }

        private void button_Home_Click(object sender, EventArgs e)
        {

            panel_curtain.BringToFront();
            homecontrol1.BringToFront();
            paneldrop.BringToFront();
            paneldrop.Height = 0;
            isCollapsed = true;
          //  isCollapsed = true;
           // timer1.Start();
        }

        private void button_AdminPanel_Click(object sender, EventArgs e)
        {
            this.Text = "Admin Panel - Attendance System";
            homecontrol1.SendToBack();
            panel_curtain.BringToFront();
            admincontrol12.BringToFront();
            //InitializeComponent();
            paneldrop.BringToFront();
          //  isCollapsed = true;
           //  timer1.Start();
            paneldrop.Height = 0;
            isCollapsed = true;
            
            
            
        }

        private void button_Settings_Click(object sender, EventArgs e)
        {
           // this.Text = "Manage - Attendance System";
          //  homecontrol1.SendToBack();
          //  panel_curtain.BringToFront();
           // employeecontrol2.BringToFront();
           // employeecontrol2.panel_empCtrl.BringToFront();
            timer1.Start();


           
        }

      

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (isCollapsed)
            {
                paneldrop.Height += 30;
                if (paneldrop.Size == paneldrop.MaximumSize)
                {
                    timer1.Stop();
                    isCollapsed = false;
                }
            }
            else
            {
                paneldrop.Height -= 30;
                if (paneldrop.Height == 0)
                {
                    timer1.Stop();
                    isCollapsed = true;
                }
            }
        }

        private void button_Create_Click(object sender, EventArgs e)
        {
            this.Text = "Create Class - Attendance System";
            homecontrol1.SendToBack();
            panel_curtain.BringToFront();

            createClassControl1.BringToFront();
            paneldrop.BringToFront();
          //  isCollapsed = true;
            paneldrop.Height = 0;
            isCollapsed = true;
        }

        private void button_Update_Click(object sender, EventArgs e)
        {
            this.Text = "Class - Attendance System";
            homecontrol1.SendToBack();
            panel_curtain.BringToFront();

            classControl1.BringToFront();
            paneldrop.BringToFront();
          //  isCollapsed = true;
            paneldrop.Height = 0;
            isCollapsed = true;
        }

        private void button_Logout_Click(object sender, EventArgs e)
        {
            this.Text = "Logout - Nestlé ECS";
            exitControl1.BringToFront();
        }
        
    }
}
