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
    public partial class homecontrol : UserControl
    {
        public homecontrol()
        {
            InitializeComponent();
            label_UserName.Text = Form1.user;
        }
    }
}
