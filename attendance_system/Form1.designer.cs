namespace attendance_system
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.panel_Content = new System.Windows.Forms.Panel();
            this.pictureBox_usrname = new System.Windows.Forms.PictureBox();
            this.label_UserName = new System.Windows.Forms.Label();
            this.pictureBox_paswd = new System.Windows.Forms.PictureBox();
            this.panel_inputStatus = new System.Windows.Forms.Panel();
            this.label_Password = new System.Windows.Forms.Label();
            this.button_Login = new System.Windows.Forms.Button();
            this.button_AboutUs = new System.Windows.Forms.Button();
            this.button_Back = new System.Windows.Forms.Button();
            this.button_Minimize = new System.Windows.Forms.Button();
            this.button_Exit = new System.Windows.Forms.Button();
            this.Clock = new System.Windows.Forms.Label();
            this.passbox = new System.Windows.Forms.TextBox();
            this.panel_NameboxBackground = new System.Windows.Forms.Panel();
            this.namebox = new System.Windows.Forms.TextBox();
            this.panel_AboutUs = new System.Windows.Forms.Panel();
            this.label4 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.buttonReg = new System.Windows.Forms.Button();
            this.labelQ = new System.Windows.Forms.Label();
            this.panel_Content.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox_usrname)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox_paswd)).BeginInit();
            this.panel_NameboxBackground.SuspendLayout();
            this.panel_AboutUs.SuspendLayout();
            this.SuspendLayout();
            // 
            // timer1
            // 
            this.timer1.Enabled = true;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // panel_Content
            // 
            this.panel_Content.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(22)))), ((int)(((byte)(22)))), ((int)(((byte)(22)))));
            this.panel_Content.Controls.Add(this.pictureBox_usrname);
            this.panel_Content.Controls.Add(this.labelQ);
            this.panel_Content.Controls.Add(this.label_UserName);
            this.panel_Content.Controls.Add(this.pictureBox_paswd);
            this.panel_Content.Controls.Add(this.panel_inputStatus);
            this.panel_Content.Controls.Add(this.label_Password);
            this.panel_Content.Controls.Add(this.buttonReg);
            this.panel_Content.Controls.Add(this.button_Login);
            this.panel_Content.Controls.Add(this.button_AboutUs);
            this.panel_Content.Controls.Add(this.button_Back);
            this.panel_Content.Controls.Add(this.button_Minimize);
            this.panel_Content.Controls.Add(this.button_Exit);
            this.panel_Content.Controls.Add(this.Clock);
            this.panel_Content.Controls.Add(this.passbox);
            this.panel_Content.Controls.Add(this.panel_NameboxBackground);
            this.panel_Content.Location = new System.Drawing.Point(3, 2);
            this.panel_Content.Margin = new System.Windows.Forms.Padding(4);
            this.panel_Content.Name = "panel_Content";
            this.panel_Content.Size = new System.Drawing.Size(456, 620);
            this.panel_Content.TabIndex = 8;
            // 
            // pictureBox_usrname
            // 
            this.pictureBox_usrname.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox_usrname.Image")));
            this.pictureBox_usrname.Location = new System.Drawing.Point(117, 265);
            this.pictureBox_usrname.Margin = new System.Windows.Forms.Padding(4);
            this.pictureBox_usrname.Name = "pictureBox_usrname";
            this.pictureBox_usrname.Size = new System.Drawing.Size(43, 39);
            this.pictureBox_usrname.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox_usrname.TabIndex = 8;
            this.pictureBox_usrname.TabStop = false;
            // 
            // label_UserName
            // 
            this.label_UserName.AutoSize = true;
            this.label_UserName.CausesValidation = false;
            this.label_UserName.Font = new System.Drawing.Font("Segoe UI Light", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_UserName.ForeColor = System.Drawing.Color.Silver;
            this.label_UserName.Location = new System.Drawing.Point(171, 270);
            this.label_UserName.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label_UserName.Name = "label_UserName";
            this.label_UserName.Size = new System.Drawing.Size(128, 32);
            this.label_UserName.TabIndex = 0;
            this.label_UserName.Text = "User Name";
            // 
            // pictureBox_paswd
            // 
            this.pictureBox_paswd.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox_paswd.Image")));
            this.pictureBox_paswd.Location = new System.Drawing.Point(117, 265);
            this.pictureBox_paswd.Margin = new System.Windows.Forms.Padding(4);
            this.pictureBox_paswd.Name = "pictureBox_paswd";
            this.pictureBox_paswd.Size = new System.Drawing.Size(43, 39);
            this.pictureBox_paswd.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox_paswd.TabIndex = 8;
            this.pictureBox_paswd.TabStop = false;
            this.pictureBox_paswd.Visible = false;
            // 
            // panel_inputStatus
            // 
            this.panel_inputStatus.BackColor = System.Drawing.Color.Turquoise;
            this.panel_inputStatus.Location = new System.Drawing.Point(77, 353);
            this.panel_inputStatus.Margin = new System.Windows.Forms.Padding(4);
            this.panel_inputStatus.Name = "panel_inputStatus";
            this.panel_inputStatus.Size = new System.Drawing.Size(284, 4);
            this.panel_inputStatus.TabIndex = 6;
            this.panel_inputStatus.Visible = false;
            // 
            // label_Password
            // 
            this.label_Password.AutoSize = true;
            this.label_Password.Font = new System.Drawing.Font("Segoe UI Light", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_Password.ForeColor = System.Drawing.Color.Silver;
            this.label_Password.Location = new System.Drawing.Point(171, 270);
            this.label_Password.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label_Password.Name = "label_Password";
            this.label_Password.Size = new System.Drawing.Size(107, 32);
            this.label_Password.TabIndex = 0;
            this.label_Password.Text = "Password";
            this.label_Password.Visible = false;
            // 
            // button_Login
            // 
            this.button_Login.FlatAppearance.BorderColor = System.Drawing.Color.Aqua;
            this.button_Login.FlatAppearance.BorderSize = 0;
            this.button_Login.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button_Login.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button_Login.ForeColor = System.Drawing.Color.LightSeaGreen;
            this.button_Login.Location = new System.Drawing.Point(145, 372);
            this.button_Login.Margin = new System.Windows.Forms.Padding(4);
            this.button_Login.Name = "button_Login";
            this.button_Login.Size = new System.Drawing.Size(139, 39);
            this.button_Login.TabIndex = 3;
            this.button_Login.Text = "Next";
            this.button_Login.UseVisualStyleBackColor = true;
            this.button_Login.Click += new System.EventHandler(this.button_Login_Click);
            // 
            // button_AboutUs
            // 
            this.button_AboutUs.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("button_AboutUs.BackgroundImage")));
            this.button_AboutUs.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.button_AboutUs.Cursor = System.Windows.Forms.Cursors.Hand;
            this.button_AboutUs.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button_AboutUs.FlatAppearance.BorderSize = 0;
            this.button_AboutUs.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button_AboutUs.Font = new System.Drawing.Font("Segoe UI Emoji", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button_AboutUs.ForeColor = System.Drawing.Color.Crimson;
            this.button_AboutUs.Location = new System.Drawing.Point(411, 578);
            this.button_AboutUs.Margin = new System.Windows.Forms.Padding(4);
            this.button_AboutUs.Name = "button_AboutUs";
            this.button_AboutUs.Size = new System.Drawing.Size(32, 30);
            this.button_AboutUs.TabIndex = 7;
            this.button_AboutUs.UseVisualStyleBackColor = true;
            this.button_AboutUs.Click += new System.EventHandler(this.button_AboutUs_Click);
            // 
            // button_Back
            // 
            this.button_Back.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button_Back.FlatAppearance.BorderSize = 0;
            this.button_Back.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button_Back.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button_Back.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(100)))), ((int)(((byte)(100)))));
            this.button_Back.Location = new System.Drawing.Point(145, 421);
            this.button_Back.Margin = new System.Windows.Forms.Padding(4);
            this.button_Back.Name = "button_Back";
            this.button_Back.Size = new System.Drawing.Size(139, 39);
            this.button_Back.TabIndex = 4;
            this.button_Back.Text = "Back";
            this.button_Back.UseVisualStyleBackColor = true;
            this.button_Back.Visible = false;
            this.button_Back.Click += new System.EventHandler(this.button_Back_Click);
            // 
            // button_Minimize
            // 
            this.button_Minimize.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button_Minimize.FlatAppearance.BorderSize = 0;
            this.button_Minimize.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button_Minimize.ForeColor = System.Drawing.SystemColors.AppWorkspace;
            this.button_Minimize.Location = new System.Drawing.Point(373, 4);
            this.button_Minimize.Margin = new System.Windows.Forms.Padding(4);
            this.button_Minimize.Name = "button_Minimize";
            this.button_Minimize.Size = new System.Drawing.Size(37, 28);
            this.button_Minimize.TabIndex = 5;
            this.button_Minimize.Text = "➖";
            this.button_Minimize.UseVisualStyleBackColor = true;
            this.button_Minimize.Click += new System.EventHandler(this.button_Minimize_Click);
            // 
            // button_Exit
            // 
            this.button_Exit.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button_Exit.FlatAppearance.BorderSize = 0;
            this.button_Exit.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button_Exit.ForeColor = System.Drawing.SystemColors.AppWorkspace;
            this.button_Exit.Location = new System.Drawing.Point(413, 4);
            this.button_Exit.Margin = new System.Windows.Forms.Padding(4);
            this.button_Exit.Name = "button_Exit";
            this.button_Exit.Size = new System.Drawing.Size(37, 28);
            this.button_Exit.TabIndex = 6;
            this.button_Exit.Text = "✖";
            this.button_Exit.UseVisualStyleBackColor = true;
            this.button_Exit.Click += new System.EventHandler(this.button_Exit_Click);
            // 
            // Clock
            // 
            this.Clock.AutoSize = true;
            this.Clock.CausesValidation = false;
            this.Clock.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Clock.ForeColor = System.Drawing.Color.LightSeaGreen;
            this.Clock.Location = new System.Drawing.Point(177, 9);
            this.Clock.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.Clock.Name = "Clock";
            this.Clock.Size = new System.Drawing.Size(90, 20);
            this.Clock.TabIndex = 2;
            this.Clock.Text = "11:00:23 AM";
            // 
            // passbox
            // 
            this.passbox.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(80)))), ((int)(((byte)(80)))), ((int)(((byte)(80)))));
            this.passbox.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.passbox.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.passbox.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(210)))), ((int)(((byte)(210)))), ((int)(((byte)(210)))));
            this.passbox.Location = new System.Drawing.Point(85, 324);
            this.passbox.Margin = new System.Windows.Forms.Padding(4);
            this.passbox.Name = "passbox";
            this.passbox.PasswordChar = '*';
            this.passbox.Size = new System.Drawing.Size(267, 27);
            this.passbox.TabIndex = 1;
            this.passbox.Visible = false;
            this.passbox.MouseClick += new System.Windows.Forms.MouseEventHandler(this.passbox_MouseClick);
            this.passbox.TextChanged += new System.EventHandler(this.passbox_TextChanged);
            // 
            // panel_NameboxBackground
            // 
            this.panel_NameboxBackground.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(80)))), ((int)(((byte)(80)))), ((int)(((byte)(80)))));
            this.panel_NameboxBackground.Controls.Add(this.namebox);
            this.panel_NameboxBackground.Location = new System.Drawing.Point(77, 318);
            this.panel_NameboxBackground.Margin = new System.Windows.Forms.Padding(4);
            this.panel_NameboxBackground.Name = "panel_NameboxBackground";
            this.panel_NameboxBackground.Size = new System.Drawing.Size(284, 36);
            this.panel_NameboxBackground.TabIndex = 7;
            // 
            // namebox
            // 
            this.namebox.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(80)))), ((int)(((byte)(80)))), ((int)(((byte)(80)))));
            this.namebox.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.namebox.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.namebox.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.namebox.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(210)))), ((int)(((byte)(210)))), ((int)(((byte)(210)))));
            this.namebox.Location = new System.Drawing.Point(8, 6);
            this.namebox.Margin = new System.Windows.Forms.Padding(4);
            this.namebox.Name = "namebox";
            this.namebox.Size = new System.Drawing.Size(267, 27);
            this.namebox.TabIndex = 1;
            this.namebox.MouseClick += new System.Windows.Forms.MouseEventHandler(this.namebox_MouseClick);
            this.namebox.TextChanged += new System.EventHandler(this.namebox_TextChanged);
            // 
            // panel_AboutUs
            // 
            this.panel_AboutUs.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(22)))), ((int)(((byte)(22)))), ((int)(((byte)(22)))));
            this.panel_AboutUs.Controls.Add(this.label4);
            this.panel_AboutUs.Controls.Add(this.label8);
            this.panel_AboutUs.Controls.Add(this.label5);
            this.panel_AboutUs.Controls.Add(this.label2);
            this.panel_AboutUs.Controls.Add(this.label7);
            this.panel_AboutUs.Controls.Add(this.label6);
            this.panel_AboutUs.Location = new System.Drawing.Point(16, 8);
            this.panel_AboutUs.Margin = new System.Windows.Forms.Padding(4);
            this.panel_AboutUs.Name = "panel_AboutUs";
            this.panel_AboutUs.Size = new System.Drawing.Size(429, 573);
            this.panel_AboutUs.TabIndex = 8;
            this.panel_AboutUs.Click += new System.EventHandler(this.panel_AboutUs_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.SystemColors.ButtonShadow;
            this.label4.Location = new System.Drawing.Point(-88, 586);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(58, 23);
            this.label4.TabIndex = 5;
            this.label4.Text = "Nestlé";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.CausesValidation = false;
            this.label8.Font = new System.Drawing.Font("Segoe UI", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.ForeColor = System.Drawing.Color.Silver;
            this.label8.Location = new System.Drawing.Point(161, 342);
            this.label8.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(99, 30);
            this.label8.TabIndex = 0;
            this.label8.Text = "Advisor:";
            this.label8.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.CausesValidation = false;
            this.label5.Font = new System.Drawing.Font("Segoe UI", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.Color.Silver;
            this.label5.Location = new System.Drawing.Point(136, 106);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(147, 30);
            this.label5.TabIndex = 0;
            this.label5.Text = "Prepared By:";
            this.label5.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.CausesValidation = false;
            this.label2.Font = new System.Drawing.Font("Segoe UI", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.Silver;
            this.label2.Location = new System.Drawing.Point(27, 17);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(391, 32);
            this.label2.TabIndex = 0;
            this.label2.Text = "Attendance Management System";
            // 
            // label7
            // 
            this.label7.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.ForeColor = System.Drawing.SystemColors.ButtonShadow;
            this.label7.Location = new System.Drawing.Point(4, 372);
            this.label7.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(425, 191);
            this.label7.TabIndex = 5;
            this.label7.Text = resources.GetString("label7.Text");
            this.label7.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.SystemColors.ButtonShadow;
            this.label6.Location = new System.Drawing.Point(139, 256);
            this.label6.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(158, 69);
            this.label6.TabIndex = 5;
            this.label6.Text = "Syed Nazmus Sakib\r\n    ID: 1602022\r\n ";
            this.label6.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // buttonReg
            // 
            this.buttonReg.FlatAppearance.BorderColor = System.Drawing.Color.Aqua;
            this.buttonReg.FlatAppearance.BorderSize = 0;
            this.buttonReg.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonReg.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.buttonReg.ForeColor = System.Drawing.Color.LightSeaGreen;
            this.buttonReg.Location = new System.Drawing.Point(292, 513);
            this.buttonReg.Margin = new System.Windows.Forms.Padding(4);
            this.buttonReg.Name = "buttonReg";
            this.buttonReg.Size = new System.Drawing.Size(139, 39);
            this.buttonReg.TabIndex = 3;
            this.buttonReg.Text = "Register";
            this.buttonReg.UseVisualStyleBackColor = true;
            this.buttonReg.Click += new System.EventHandler(this.buttonReg_Click);
            // 
            // labelQ
            // 
            this.labelQ.AutoSize = true;
            this.labelQ.CausesValidation = false;
            this.labelQ.Font = new System.Drawing.Font("Segoe UI Light", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelQ.ForeColor = System.Drawing.Color.Silver;
            this.labelQ.Location = new System.Drawing.Point(126, 525);
            this.labelQ.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labelQ.Name = "labelQ";
            this.labelQ.Size = new System.Drawing.Size(158, 20);
            this.labelQ.TabIndex = 0;
            this.labelQ.Text = "Don\'t Have an account? ";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.LightSeaGreen;
            this.ClientSize = new System.Drawing.Size(462, 625);
            this.Controls.Add(this.panel_Content);
            this.Controls.Add(this.panel_AboutUs);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.MaximizeBox = false;
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Login - Nestlé ECS";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.panel_Content.ResumeLayout(false);
            this.panel_Content.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox_usrname)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox_paswd)).EndInit();
            this.panel_NameboxBackground.ResumeLayout(false);
            this.panel_NameboxBackground.PerformLayout();
            this.panel_AboutUs.ResumeLayout(false);
            this.panel_AboutUs.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.Panel panel_Content;
        private System.Windows.Forms.TextBox namebox;
        private System.Windows.Forms.TextBox passbox;
        private System.Windows.Forms.Panel panel_NameboxBackground;
        private System.Windows.Forms.Panel panel_inputStatus;
        private System.Windows.Forms.Label label_Password;
        private System.Windows.Forms.Button button_Login;
        private System.Windows.Forms.Button button_AboutUs;
        private System.Windows.Forms.Button button_Back;
        private System.Windows.Forms.Button button_Minimize;
        private System.Windows.Forms.Label label_UserName;
        private System.Windows.Forms.Button button_Exit;
        private System.Windows.Forms.Label Clock;
        private System.Windows.Forms.PictureBox pictureBox_usrname;
        private System.Windows.Forms.PictureBox pictureBox_paswd;
        private System.Windows.Forms.Panel panel_AboutUs;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label labelQ;
        private System.Windows.Forms.Button buttonReg;
    }
}

