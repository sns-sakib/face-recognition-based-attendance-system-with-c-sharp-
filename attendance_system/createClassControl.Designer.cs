namespace attendance_system
{
    partial class createClassControl
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(createClassControl));
            this.label1 = new System.Windows.Forms.Label();
            this.ccodeBox = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.ctitleBox = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.semBox = new System.Windows.Forms.TextBox();
            this.button_insert = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.panelCreate = new System.Windows.Forms.Panel();
            this.panelCreate.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(301, 109);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(172, 29);
            this.label1.TabIndex = 0;
            this.label1.Text = "Course Code";
            // 
            // ccodeBox
            // 
            this.ccodeBox.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.ccodeBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ccodeBox.Location = new System.Drawing.Point(500, 116);
            this.ccodeBox.Name = "ccodeBox";
            this.ccodeBox.Size = new System.Drawing.Size(189, 34);
            this.ccodeBox.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(301, 168);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(161, 29);
            this.label2.TabIndex = 0;
            this.label2.Text = "Course Title";
            // 
            // ctitleBox
            // 
            this.ctitleBox.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.ctitleBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ctitleBox.Location = new System.Drawing.Point(500, 175);
            this.ctitleBox.Name = "ctitleBox";
            this.ctitleBox.Size = new System.Drawing.Size(189, 34);
            this.ctitleBox.TabIndex = 1;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.White;
            this.label3.Location = new System.Drawing.Point(301, 238);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(130, 29);
            this.label3.TabIndex = 0;
            this.label3.Text = "Semester";
            // 
            // semBox
            // 
            this.semBox.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.semBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.semBox.Location = new System.Drawing.Point(500, 245);
            this.semBox.Name = "semBox";
            this.semBox.Size = new System.Drawing.Size(189, 34);
            this.semBox.TabIndex = 1;
            // 
            // button_insert
            // 
            this.button_insert.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("button_insert.BackgroundImage")));
            this.button_insert.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.button_insert.FlatAppearance.BorderSize = 0;
            this.button_insert.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.button_insert.Location = new System.Drawing.Point(9, 17);
            this.button_insert.Name = "button_insert";
            this.button_insert.Size = new System.Drawing.Size(48, 48);
            this.button_insert.TabIndex = 10;
            this.button_insert.UseVisualStyleBackColor = true;
            this.button_insert.Click += new System.EventHandler(this.button_insert_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(21, 68);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(40, 20);
            this.label4.TabIndex = 9;
            this.label4.Text = "Save";
            this.label4.Click += new System.EventHandler(this.button_insert_Click);
            // 
            // panelCreate
            // 
            this.panelCreate.Controls.Add(this.button_insert);
            this.panelCreate.Controls.Add(this.label4);
            this.panelCreate.Location = new System.Drawing.Point(552, 411);
            this.panelCreate.Name = "panelCreate";
            this.panelCreate.Size = new System.Drawing.Size(62, 90);
            this.panelCreate.TabIndex = 11;
            this.panelCreate.Click += new System.EventHandler(this.panelCreate_Click);
            this.panelCreate.Paint += new System.Windows.Forms.PaintEventHandler(this.panelCreate_Paint);
            // 
            // createClassControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.Controls.Add(this.panelCreate);
            this.Controls.Add(this.semBox);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.ctitleBox);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.ccodeBox);
            this.Controls.Add(this.label1);
            this.Name = "createClassControl";
            this.Size = new System.Drawing.Size(1147, 519);
            this.panelCreate.ResumeLayout(false);
            this.panelCreate.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox ccodeBox;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox ctitleBox;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox semBox;
        private System.Windows.Forms.Button button_insert;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Panel panelCreate;
    }
}
