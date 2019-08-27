namespace attendance_system
{
    partial class updateClassForm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(updateClassForm));
            this.semBox = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.ctitleBox = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.ccodeBox = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.button_update = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.panelCreate = new System.Windows.Forms.Panel();
            this.buttonback = new System.Windows.Forms.Button();
            this.panelCreate.SuspendLayout();
            this.SuspendLayout();
            // 
            // semBox
            // 
            this.semBox.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.semBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.semBox.Location = new System.Drawing.Point(510, 223);
            this.semBox.Name = "semBox";
            this.semBox.Size = new System.Drawing.Size(248, 30);
            this.semBox.TabIndex = 3;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Font = new System.Drawing.Font("Microsoft YaHei", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.label3.Location = new System.Drawing.Point(233, 223);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(148, 37);
            this.label3.TabIndex = 19;
            this.label3.Text = "Semester";
            // 
            // ctitleBox
            // 
            this.ctitleBox.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.ctitleBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ctitleBox.Location = new System.Drawing.Point(510, 153);
            this.ctitleBox.Name = "ctitleBox";
            this.ctitleBox.Size = new System.Drawing.Size(248, 30);
            this.ctitleBox.TabIndex = 2;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font("Microsoft YaHei", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.label2.Location = new System.Drawing.Point(233, 153);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(184, 37);
            this.label2.TabIndex = 20;
            this.label2.Text = "Course Title";
            // 
            // ccodeBox
            // 
            this.ccodeBox.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.ccodeBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ccodeBox.Location = new System.Drawing.Point(510, 94);
            this.ccodeBox.Name = "ccodeBox";
            this.ccodeBox.Size = new System.Drawing.Size(248, 30);
            this.ccodeBox.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Microsoft YaHei", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.label1.Location = new System.Drawing.Point(233, 94);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(194, 37);
            this.label1.TabIndex = 21;
            this.label1.Text = "Course Code";
            // 
            // button_update
            // 
            this.button_update.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("button_update.BackgroundImage")));
            this.button_update.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.button_update.FlatAppearance.BorderSize = 0;
            this.button_update.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.button_update.Location = new System.Drawing.Point(12, 17);
            this.button_update.Name = "button_update";
            this.button_update.Size = new System.Drawing.Size(48, 48);
            this.button_update.TabIndex = 4;
            this.button_update.UseVisualStyleBackColor = true;
            this.button_update.Click += new System.EventHandler(this.button_update_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(7, 68);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(58, 20);
            this.label4.TabIndex = 9;
            this.label4.Text = "Update";
            this.label4.Click += new System.EventHandler(this.button_update_Click);
            // 
            // panelCreate
            // 
            this.panelCreate.Controls.Add(this.button_update);
            this.panelCreate.Controls.Add(this.label4);
            this.panelCreate.Location = new System.Drawing.Point(510, 387);
            this.panelCreate.Name = "panelCreate";
            this.panelCreate.Size = new System.Drawing.Size(75, 90);
            this.panelCreate.TabIndex = 25;
            // 
            // buttonback
            // 
            this.buttonback.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(64)))));
            this.buttonback.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.buttonback.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.buttonback.Image = ((System.Drawing.Image)(resources.GetObject("buttonback.Image")));
            this.buttonback.Location = new System.Drawing.Point(1023, 22);
            this.buttonback.Name = "buttonback";
            this.buttonback.Size = new System.Drawing.Size(66, 41);
            this.buttonback.TabIndex = 26;
            this.buttonback.UseVisualStyleBackColor = false;
            this.buttonback.Click += new System.EventHandler(this.buttonback_Click);
            // 
            // updateClassForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.ClientSize = new System.Drawing.Size(1129, 499);
            this.Controls.Add(this.buttonback);
            this.Controls.Add(this.semBox);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.ctitleBox);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.ccodeBox);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.panelCreate);
            this.Name = "updateClassForm";
            this.Text = "updateClassForm";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.updateClassForm_FormClosing);
            this.Load += new System.EventHandler(this.updateClassForm_Load);
            this.panelCreate.ResumeLayout(false);
            this.panelCreate.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox semBox;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox ctitleBox;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox ccodeBox;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button button_update;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Panel panelCreate;
        private System.Windows.Forms.Button buttonback;

    }
}