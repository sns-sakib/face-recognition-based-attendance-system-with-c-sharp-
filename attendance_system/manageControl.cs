using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using MySql.Data.MySqlClient;
using System.IO;

namespace attendance_system
{
    public partial class employeecontrol : UserControl
    {
        string conn = "datasource=localhost;username=root;password=";
        bool isCollapsed = true;
        int g_id = 0;

        public employeecontrol()
        {

            InitializeComponent();
            // preliControl1.BringToFront();
            //  paneldrop.BringToFront();
            paneldrop.Height = 0;
            isCollapsed = true;
            panel_empCtrl.BringToFront();
            createClassControl1.SendToBack();
        }


        private void timer1_Tick_1(object sender, EventArgs e)
        {
            if (isCollapsed)
            {
                paneldrop.Height += 15;
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


        private void employeecontrol_Load_1(object sender, EventArgs e)
        {

            paneldrop.BringToFront();
        }

        private void button_manage_employee_Click(object sender, EventArgs e)
        {
            timer1.Start();
        }

        private void button_Create_Click(object sender, EventArgs e)
        {
            panel_empCtrl.SendToBack();
            createClassControl1.BringToFront();
        }


        private void button_view_Click(object sender, EventArgs e)
        {
            paneldrop.BringToFront();
            classControl1.BringToFront();
          
        }
    

        private void button_basic_salary_Click(object sender, EventArgs e)
        {
          
            paneldrop.BringToFront();
        }

        private void button_bonus_Click(object sender, EventArgs e)
        {
          
            paneldrop.BringToFront();
        }

        private void button_incentives_Click(object sender, EventArgs e)
        {
         
            paneldrop.BringToFront();
        }

        private void button_deduction_Click(object sender, EventArgs e)
        {
           
            paneldrop.BringToFront();
        }

        private void button_payslip_Click(object sender, EventArgs e)
        {
          
            paneldrop.BringToFront();
        }

        private void button_display_Click(object sender, EventArgs e)
        {
           
            paneldrop.BringToFront();
           
        }

        private void panel_Create_Paint(object sender, PaintEventArgs e)
        {

        }

      



     
    }
}
