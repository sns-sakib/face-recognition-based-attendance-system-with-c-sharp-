namespace attendance_system
{
    partial class homecontrol
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(homecontrol));
            this.label_UserName = new System.Windows.Forms.Label();
            this.label_LoginInfo = new System.Windows.Forms.Label();
            this.label_Welcome = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // label_UserName
            // 
            this.label_UserName.AutoSize = true;
            this.label_UserName.BackColor = System.Drawing.Color.Transparent;
            this.label_UserName.Font = new System.Drawing.Font("Segoe UI Light", 26F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_UserName.ForeColor = System.Drawing.SystemColors.Control;
            this.label_UserName.Location = new System.Drawing.Point(37, 302);
            this.label_UserName.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label_UserName.MinimumSize = new System.Drawing.Size(289, 58);
            this.label_UserName.Name = "label_UserName";
            this.label_UserName.Size = new System.Drawing.Size(289, 60);
            this.label_UserName.TabIndex = 0;
            this.label_UserName.Text = "Azharul";
            this.label_UserName.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // label_LoginInfo
            // 
            this.label_LoginInfo.AutoSize = true;
            this.label_LoginInfo.BackColor = System.Drawing.Color.Transparent;
            this.label_LoginInfo.Font = new System.Drawing.Font("Segoe UI Light", 16F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_LoginInfo.ForeColor = System.Drawing.SystemColors.Control;
            this.label_LoginInfo.Location = new System.Drawing.Point(52, 251);
            this.label_LoginInfo.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label_LoginInfo.Name = "label_LoginInfo";
            this.label_LoginInfo.Size = new System.Drawing.Size(271, 37);
            this.label_LoginInfo.TabIndex = 0;
            this.label_LoginInfo.Text = "You are Logged in as";
            // 
            // label_Welcome
            // 
            this.label_Welcome.AutoSize = true;
            this.label_Welcome.BackColor = System.Drawing.Color.Transparent;
            this.label_Welcome.Font = new System.Drawing.Font("Bookman Old Style", 30F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_Welcome.ForeColor = System.Drawing.SystemColors.Control;
            this.label_Welcome.Location = new System.Drawing.Point(-9, 171);
            this.label_Welcome.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label_Welcome.Name = "label_Welcome";
            this.label_Welcome.Size = new System.Drawing.Size(395, 57);
            this.label_Welcome.TabIndex = 0;
            this.label_Welcome.Text = "Welcome Back!";
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(109, 4);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(4);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(141, 149);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 1;
            this.pictureBox1.TabStop = false;
            // 
            // homecontrol
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.label_LoginInfo);
            this.Controls.Add(this.label_Welcome);
            this.Controls.Add(this.label_UserName);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "homecontrol";
            this.Size = new System.Drawing.Size(381, 386);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label_UserName;
        private System.Windows.Forms.Label label_LoginInfo;
        private System.Windows.Forms.Label label_Welcome;
        private System.Windows.Forms.PictureBox pictureBox1;
    }
}
