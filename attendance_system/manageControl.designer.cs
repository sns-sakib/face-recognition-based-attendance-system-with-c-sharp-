namespace attendance_system
{
    partial class employeecontrol
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(employeecontrol));
            this.label_Payslip = new System.Windows.Forms.Label();
            this.label_ManageEmployee = new System.Windows.Forms.Label();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.label_Create = new System.Windows.Forms.Label();
            this.paneldrop = new System.Windows.Forms.Panel();
            this.panel_Create = new System.Windows.Forms.Panel();
            this.button_Create = new System.Windows.Forms.Button();
            this.panel_view = new System.Windows.Forms.Panel();
            this.button_view = new System.Windows.Forms.Button();
            this.label_view = new System.Windows.Forms.Label();
            this.panel_dislplay = new System.Windows.Forms.Panel();
            this.button_display = new System.Windows.Forms.Button();
            this.label_display = new System.Windows.Forms.Label();
            this.panel_basic_salary = new System.Windows.Forms.Panel();
            this.button_basic_salary = new System.Windows.Forms.Button();
            this.label_basic_salary = new System.Windows.Forms.Label();
            this.panel_bonus_ = new System.Windows.Forms.Panel();
            this.button_bonus = new System.Windows.Forms.Button();
            this.label_bonus_ = new System.Windows.Forms.Label();
            this.panel_incentives = new System.Windows.Forms.Panel();
            this.button_incentives = new System.Windows.Forms.Button();
            this.label_incentives = new System.Windows.Forms.Label();
            this.panel_deductions = new System.Windows.Forms.Panel();
            this.button_deduction = new System.Windows.Forms.Button();
            this.label_deductions = new System.Windows.Forms.Label();
            this.panel_payslip = new System.Windows.Forms.Panel();
            this.button_payslip = new System.Windows.Forms.Button();
            this.panel2 = new System.Windows.Forms.Panel();
            this.button_manage_employee = new System.Windows.Forms.Button();
            this.panel_empCtrl = new System.Windows.Forms.Panel();
            this.classControl1 = new attendance_system.classControl();
            this.createClassControl1 = new attendance_system.createClassControl();
            this.paneldrop.SuspendLayout();
            this.panel_Create.SuspendLayout();
            this.panel_view.SuspendLayout();
            this.panel_dislplay.SuspendLayout();
            this.panel_basic_salary.SuspendLayout();
            this.panel_bonus_.SuspendLayout();
            this.panel_incentives.SuspendLayout();
            this.panel_deductions.SuspendLayout();
            this.panel_payslip.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel_empCtrl.SuspendLayout();
            this.SuspendLayout();
            // 
            // label_Payslip
            // 
            this.label_Payslip.AutoSize = true;
            this.label_Payslip.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_Payslip.ForeColor = System.Drawing.Color.Black;
            this.label_Payslip.Location = new System.Drawing.Point(16, 91);
            this.label_Payslip.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label_Payslip.Name = "label_Payslip";
            this.label_Payslip.Size = new System.Drawing.Size(61, 23);
            this.label_Payslip.TabIndex = 13;
            this.label_Payslip.Text = "Payslip";
            this.label_Payslip.Click += new System.EventHandler(this.button_payslip_Click);
            // 
            // label_ManageEmployee
            // 
            this.label_ManageEmployee.AutoSize = true;
            this.label_ManageEmployee.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_ManageEmployee.ForeColor = System.Drawing.Color.Black;
            this.label_ManageEmployee.Location = new System.Drawing.Point(29, 91);
            this.label_ManageEmployee.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label_ManageEmployee.Name = "label_ManageEmployee";
            this.label_ManageEmployee.Size = new System.Drawing.Size(115, 23);
            this.label_ManageEmployee.TabIndex = 13;
            this.label_ManageEmployee.Text = "Manage Class";
            this.label_ManageEmployee.Click += new System.EventHandler(this.button_manage_employee_Click);
            // 
            // timer1
            // 
            this.timer1.Interval = 20;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick_1);
            // 
            // label_Create
            // 
            this.label_Create.AutoSize = true;
            this.label_Create.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_Create.Location = new System.Drawing.Point(59, 14);
            this.label_Create.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label_Create.Name = "label_Create";
            this.label_Create.Size = new System.Drawing.Size(46, 23);
            this.label_Create.TabIndex = 13;
            this.label_Create.Text = "Add ";
            this.label_Create.Click += new System.EventHandler(this.button_Create_Click);
            // 
            // paneldrop
            // 
            this.paneldrop.BackColor = System.Drawing.Color.Transparent;
            this.paneldrop.Controls.Add(this.panel_Create);
            this.paneldrop.Controls.Add(this.panel_view);
            this.paneldrop.Cursor = System.Windows.Forms.Cursors.Hand;
            this.paneldrop.Location = new System.Drawing.Point(61, 286);
            this.paneldrop.Margin = new System.Windows.Forms.Padding(4);
            this.paneldrop.MaximumSize = new System.Drawing.Size(200, 185);
            this.paneldrop.Name = "paneldrop";
            this.paneldrop.Size = new System.Drawing.Size(200, 130);
            this.paneldrop.TabIndex = 12;
            // 
            // panel_Create
            // 
            this.panel_Create.BackColor = System.Drawing.Color.Honeydew;
            this.panel_Create.Controls.Add(this.button_Create);
            this.panel_Create.Controls.Add(this.label_Create);
            this.panel_Create.Location = new System.Drawing.Point(20, 10);
            this.panel_Create.Margin = new System.Windows.Forms.Padding(4);
            this.panel_Create.Name = "panel_Create";
            this.panel_Create.Size = new System.Drawing.Size(152, 49);
            this.panel_Create.TabIndex = 14;
            this.panel_Create.Paint += new System.Windows.Forms.PaintEventHandler(this.panel_Create_Paint);
            // 
            // button_Create
            // 
            this.button_Create.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("button_Create.BackgroundImage")));
            this.button_Create.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.button_Create.FlatAppearance.BorderSize = 0;
            this.button_Create.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button_Create.Location = new System.Drawing.Point(8, 5);
            this.button_Create.Margin = new System.Windows.Forms.Padding(4);
            this.button_Create.Name = "button_Create";
            this.button_Create.Size = new System.Drawing.Size(43, 39);
            this.button_Create.TabIndex = 13;
            this.button_Create.UseVisualStyleBackColor = true;
            this.button_Create.Click += new System.EventHandler(this.button_Create_Click);
            // 
            // panel_view
            // 
            this.panel_view.BackColor = System.Drawing.Color.Azure;
            this.panel_view.Controls.Add(this.button_view);
            this.panel_view.Controls.Add(this.label_view);
            this.panel_view.Location = new System.Drawing.Point(20, 66);
            this.panel_view.Margin = new System.Windows.Forms.Padding(4);
            this.panel_view.Name = "panel_view";
            this.panel_view.Size = new System.Drawing.Size(152, 49);
            this.panel_view.TabIndex = 14;
            // 
            // button_view
            // 
            this.button_view.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("button_view.BackgroundImage")));
            this.button_view.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.button_view.FlatAppearance.BorderSize = 0;
            this.button_view.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button_view.Location = new System.Drawing.Point(8, 4);
            this.button_view.Margin = new System.Windows.Forms.Padding(4);
            this.button_view.Name = "button_view";
            this.button_view.Size = new System.Drawing.Size(43, 39);
            this.button_view.TabIndex = 13;
            this.button_view.UseVisualStyleBackColor = true;
            this.button_view.Click += new System.EventHandler(this.button_view_Click);
            // 
            // label_view
            // 
            this.label_view.AutoSize = true;
            this.label_view.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_view.Location = new System.Drawing.Point(59, 14);
            this.label_view.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label_view.Name = "label_view";
            this.label_view.Size = new System.Drawing.Size(46, 23);
            this.label_view.TabIndex = 13;
            this.label_view.Text = "View";
            this.label_view.Click += new System.EventHandler(this.button_view_Click);
            // 
            // panel_dislplay
            // 
            this.panel_dislplay.Controls.Add(this.button_display);
            this.panel_dislplay.Controls.Add(this.label_display);
            this.panel_dislplay.Cursor = System.Windows.Forms.Cursors.Hand;
            this.panel_dislplay.Location = new System.Drawing.Point(937, 162);
            this.panel_dislplay.Margin = new System.Windows.Forms.Padding(4);
            this.panel_dislplay.Name = "panel_dislplay";
            this.panel_dislplay.Size = new System.Drawing.Size(123, 123);
            this.panel_dislplay.TabIndex = 14;
            // 
            // button_display
            // 
            this.button_display.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("button_display.BackgroundImage")));
            this.button_display.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.button_display.FlatAppearance.BorderSize = 0;
            this.button_display.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button_display.Location = new System.Drawing.Point(20, 7);
            this.button_display.Margin = new System.Windows.Forms.Padding(4);
            this.button_display.Name = "button_display";
            this.button_display.Size = new System.Drawing.Size(85, 79);
            this.button_display.TabIndex = 13;
            this.button_display.UseVisualStyleBackColor = true;
            this.button_display.Click += new System.EventHandler(this.button_display_Click);
            // 
            // label_display
            // 
            this.label_display.AutoSize = true;
            this.label_display.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_display.ForeColor = System.Drawing.Color.Black;
            this.label_display.Location = new System.Drawing.Point(17, 91);
            this.label_display.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label_display.Name = "label_display";
            this.label_display.Size = new System.Drawing.Size(94, 23);
            this.label_display.TabIndex = 13;
            this.label_display.Text = "Display List";
            // 
            // panel_basic_salary
            // 
            this.panel_basic_salary.Controls.Add(this.button_basic_salary);
            this.panel_basic_salary.Controls.Add(this.label_basic_salary);
            this.panel_basic_salary.Cursor = System.Windows.Forms.Cursors.Hand;
            this.panel_basic_salary.Location = new System.Drawing.Point(261, 162);
            this.panel_basic_salary.Margin = new System.Windows.Forms.Padding(4);
            this.panel_basic_salary.Name = "panel_basic_salary";
            this.panel_basic_salary.Size = new System.Drawing.Size(135, 123);
            this.panel_basic_salary.TabIndex = 14;
            // 
            // button_basic_salary
            // 
            this.button_basic_salary.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("button_basic_salary.BackgroundImage")));
            this.button_basic_salary.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.button_basic_salary.FlatAppearance.BorderSize = 0;
            this.button_basic_salary.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button_basic_salary.Location = new System.Drawing.Point(25, 7);
            this.button_basic_salary.Margin = new System.Windows.Forms.Padding(4);
            this.button_basic_salary.Name = "button_basic_salary";
            this.button_basic_salary.Size = new System.Drawing.Size(85, 79);
            this.button_basic_salary.TabIndex = 13;
            this.button_basic_salary.UseVisualStyleBackColor = true;
            this.button_basic_salary.Click += new System.EventHandler(this.button_basic_salary_Click);
            // 
            // label_basic_salary
            // 
            this.label_basic_salary.AutoSize = true;
            this.label_basic_salary.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_basic_salary.ForeColor = System.Drawing.Color.Black;
            this.label_basic_salary.Location = new System.Drawing.Point(11, 91);
            this.label_basic_salary.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label_basic_salary.Name = "label_basic_salary";
            this.label_basic_salary.Size = new System.Drawing.Size(98, 23);
            this.label_basic_salary.TabIndex = 13;
            this.label_basic_salary.Text = "Basic Salary";
            this.label_basic_salary.Click += new System.EventHandler(this.button_basic_salary_Click);
            // 
            // panel_bonus_
            // 
            this.panel_bonus_.Controls.Add(this.button_bonus);
            this.panel_bonus_.Controls.Add(this.label_bonus_);
            this.panel_bonus_.Cursor = System.Windows.Forms.Cursors.Hand;
            this.panel_bonus_.Location = new System.Drawing.Point(412, 162);
            this.panel_bonus_.Margin = new System.Windows.Forms.Padding(4);
            this.panel_bonus_.Name = "panel_bonus_";
            this.panel_bonus_.Size = new System.Drawing.Size(101, 123);
            this.panel_bonus_.TabIndex = 14;
            // 
            // button_bonus
            // 
            this.button_bonus.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("button_bonus.BackgroundImage")));
            this.button_bonus.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.button_bonus.FlatAppearance.BorderSize = 0;
            this.button_bonus.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button_bonus.Location = new System.Drawing.Point(8, 7);
            this.button_bonus.Margin = new System.Windows.Forms.Padding(4);
            this.button_bonus.Name = "button_bonus";
            this.button_bonus.Size = new System.Drawing.Size(85, 79);
            this.button_bonus.TabIndex = 13;
            this.button_bonus.UseVisualStyleBackColor = true;
            this.button_bonus.Click += new System.EventHandler(this.button_bonus_Click);
            // 
            // label_bonus_
            // 
            this.label_bonus_.AutoSize = true;
            this.label_bonus_.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_bonus_.ForeColor = System.Drawing.Color.Black;
            this.label_bonus_.Location = new System.Drawing.Point(17, 91);
            this.label_bonus_.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label_bonus_.Name = "label_bonus_";
            this.label_bonus_.Size = new System.Drawing.Size(57, 23);
            this.label_bonus_.TabIndex = 13;
            this.label_bonus_.Text = "Bonus";
            this.label_bonus_.Click += new System.EventHandler(this.button_bonus_Click);
            // 
            // panel_incentives
            // 
            this.panel_incentives.Controls.Add(this.button_incentives);
            this.panel_incentives.Controls.Add(this.label_incentives);
            this.panel_incentives.Cursor = System.Windows.Forms.Cursors.Hand;
            this.panel_incentives.Location = new System.Drawing.Point(529, 162);
            this.panel_incentives.Margin = new System.Windows.Forms.Padding(4);
            this.panel_incentives.Name = "panel_incentives";
            this.panel_incentives.Size = new System.Drawing.Size(124, 123);
            this.panel_incentives.TabIndex = 14;
            // 
            // button_incentives
            // 
            this.button_incentives.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("button_incentives.BackgroundImage")));
            this.button_incentives.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.button_incentives.FlatAppearance.BorderSize = 0;
            this.button_incentives.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button_incentives.Location = new System.Drawing.Point(19, 7);
            this.button_incentives.Margin = new System.Windows.Forms.Padding(4);
            this.button_incentives.Name = "button_incentives";
            this.button_incentives.Size = new System.Drawing.Size(85, 79);
            this.button_incentives.TabIndex = 13;
            this.button_incentives.UseVisualStyleBackColor = true;
            this.button_incentives.Click += new System.EventHandler(this.button_incentives_Click);
            // 
            // label_incentives
            // 
            this.label_incentives.AutoSize = true;
            this.label_incentives.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_incentives.ForeColor = System.Drawing.Color.Black;
            this.label_incentives.Location = new System.Drawing.Point(17, 91);
            this.label_incentives.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label_incentives.Name = "label_incentives";
            this.label_incentives.Size = new System.Drawing.Size(86, 23);
            this.label_incentives.TabIndex = 13;
            this.label_incentives.Text = "Incentives";
            this.label_incentives.Click += new System.EventHandler(this.button_incentives_Click);
            // 
            // panel_deductions
            // 
            this.panel_deductions.Controls.Add(this.button_deduction);
            this.panel_deductions.Controls.Add(this.label_deductions);
            this.panel_deductions.Cursor = System.Windows.Forms.Cursors.Hand;
            this.panel_deductions.Location = new System.Drawing.Point(669, 162);
            this.panel_deductions.Margin = new System.Windows.Forms.Padding(4);
            this.panel_deductions.Name = "panel_deductions";
            this.panel_deductions.Size = new System.Drawing.Size(135, 123);
            this.panel_deductions.TabIndex = 14;
            // 
            // button_deduction
            // 
            this.button_deduction.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("button_deduction.BackgroundImage")));
            this.button_deduction.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.button_deduction.FlatAppearance.BorderSize = 0;
            this.button_deduction.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button_deduction.Location = new System.Drawing.Point(23, 7);
            this.button_deduction.Margin = new System.Windows.Forms.Padding(4);
            this.button_deduction.Name = "button_deduction";
            this.button_deduction.Size = new System.Drawing.Size(85, 79);
            this.button_deduction.TabIndex = 13;
            this.button_deduction.UseVisualStyleBackColor = true;
            this.button_deduction.Click += new System.EventHandler(this.button_deduction_Click);
            // 
            // label_deductions
            // 
            this.label_deductions.AutoSize = true;
            this.label_deductions.Font = new System.Drawing.Font("Segoe UI", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_deductions.ForeColor = System.Drawing.Color.Black;
            this.label_deductions.Location = new System.Drawing.Point(17, 91);
            this.label_deductions.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label_deductions.Name = "label_deductions";
            this.label_deductions.Size = new System.Drawing.Size(89, 23);
            this.label_deductions.TabIndex = 13;
            this.label_deductions.Text = "Deduction";
            this.label_deductions.Click += new System.EventHandler(this.button_deduction_Click);
            // 
            // panel_payslip
            // 
            this.panel_payslip.Controls.Add(this.label_Payslip);
            this.panel_payslip.Controls.Add(this.button_payslip);
            this.panel_payslip.Cursor = System.Windows.Forms.Cursors.Hand;
            this.panel_payslip.Location = new System.Drawing.Point(820, 162);
            this.panel_payslip.Margin = new System.Windows.Forms.Padding(4);
            this.panel_payslip.Name = "panel_payslip";
            this.panel_payslip.Size = new System.Drawing.Size(101, 123);
            this.panel_payslip.TabIndex = 14;
            // 
            // button_payslip
            // 
            this.button_payslip.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("button_payslip.BackgroundImage")));
            this.button_payslip.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.button_payslip.FlatAppearance.BorderSize = 0;
            this.button_payslip.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button_payslip.Location = new System.Drawing.Point(8, 7);
            this.button_payslip.Margin = new System.Windows.Forms.Padding(4);
            this.button_payslip.Name = "button_payslip";
            this.button_payslip.Size = new System.Drawing.Size(85, 79);
            this.button_payslip.TabIndex = 13;
            this.button_payslip.UseVisualStyleBackColor = true;
            this.button_payslip.Click += new System.EventHandler(this.button_payslip_Click);
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.label_ManageEmployee);
            this.panel2.Controls.Add(this.button_manage_employee);
            this.panel2.Cursor = System.Windows.Forms.Cursors.Hand;
            this.panel2.Location = new System.Drawing.Point(75, 162);
            this.panel2.Margin = new System.Windows.Forms.Padding(4);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(171, 123);
            this.panel2.TabIndex = 14;
            // 
            // button_manage_employee
            // 
            this.button_manage_employee.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("button_manage_employee.BackgroundImage")));
            this.button_manage_employee.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.button_manage_employee.FlatAppearance.BorderSize = 0;
            this.button_manage_employee.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button_manage_employee.Location = new System.Drawing.Point(43, 7);
            this.button_manage_employee.Margin = new System.Windows.Forms.Padding(4);
            this.button_manage_employee.Name = "button_manage_employee";
            this.button_manage_employee.Size = new System.Drawing.Size(85, 79);
            this.button_manage_employee.TabIndex = 13;
            this.button_manage_employee.UseVisualStyleBackColor = true;
            this.button_manage_employee.Click += new System.EventHandler(this.button_manage_employee_Click);
            // 
            // panel_empCtrl
            // 
            this.panel_empCtrl.Controls.Add(this.panel_bonus_);
            this.panel_empCtrl.Controls.Add(this.panel_basic_salary);
            this.panel_empCtrl.Controls.Add(this.panel_dislplay);
            this.panel_empCtrl.Controls.Add(this.panel_payslip);
            this.panel_empCtrl.Controls.Add(this.panel_deductions);
            this.panel_empCtrl.Controls.Add(this.panel2);
            this.panel_empCtrl.Controls.Add(this.panel_incentives);
            this.panel_empCtrl.Controls.Add(this.paneldrop);
            this.panel_empCtrl.Location = new System.Drawing.Point(3, 11);
            this.panel_empCtrl.Margin = new System.Windows.Forms.Padding(4);
            this.panel_empCtrl.Name = "panel_empCtrl";
            this.panel_empCtrl.Size = new System.Drawing.Size(1147, 534);
            this.panel_empCtrl.TabIndex = 15;
            // 
            // classControl1
            // 
            this.classControl1.Location = new System.Drawing.Point(6, -2);
            this.classControl1.Name = "classControl1";
            this.classControl1.Size = new System.Drawing.Size(1147, 542);
            this.classControl1.TabIndex = 17;
            // 
            // createClassControl1
            // 
            this.createClassControl1.Location = new System.Drawing.Point(3, 10);
            this.createClassControl1.Name = "createClassControl1";
            this.createClassControl1.Size = new System.Drawing.Size(1147, 546);
            this.createClassControl1.TabIndex = 16;
            // 
            // employeecontrol
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.Controls.Add(this.panel_empCtrl);
            this.Controls.Add(this.createClassControl1);
            this.Controls.Add(this.classControl1);
            this.Location = new System.Drawing.Point(13, 106);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "employeecontrol";
            this.Size = new System.Drawing.Size(1147, 545);
            this.Load += new System.EventHandler(this.employeecontrol_Load_1);
            this.paneldrop.ResumeLayout(false);
            this.panel_Create.ResumeLayout(false);
            this.panel_Create.PerformLayout();
            this.panel_view.ResumeLayout(false);
            this.panel_view.PerformLayout();
            this.panel_dislplay.ResumeLayout(false);
            this.panel_dislplay.PerformLayout();
            this.panel_basic_salary.ResumeLayout(false);
            this.panel_basic_salary.PerformLayout();
            this.panel_bonus_.ResumeLayout(false);
            this.panel_bonus_.PerformLayout();
            this.panel_incentives.ResumeLayout(false);
            this.panel_incentives.PerformLayout();
            this.panel_deductions.ResumeLayout(false);
            this.panel_deductions.PerformLayout();
            this.panel_payslip.ResumeLayout(false);
            this.panel_payslip.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel_empCtrl.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.Label label_ManageEmployee;
        private System.Windows.Forms.Label label_Payslip;
        private System.Windows.Forms.Label label_Create;
        private System.Windows.Forms.Panel paneldrop;
        private System.Windows.Forms.Button button_Create;
        private System.Windows.Forms.Panel panel_Create;
        private System.Windows.Forms.Panel panel_view;
        private System.Windows.Forms.Button button_view;
        private System.Windows.Forms.Label label_view;
        private System.Windows.Forms.Panel panel_dislplay;
        private System.Windows.Forms.Button button_display;
        private System.Windows.Forms.Label label_display;
        private System.Windows.Forms.Panel panel_basic_salary;
        private System.Windows.Forms.Button button_basic_salary;
        private System.Windows.Forms.Label label_basic_salary;
        private System.Windows.Forms.Panel panel_bonus_;
        private System.Windows.Forms.Button button_bonus;
        private System.Windows.Forms.Label label_bonus_;
        private System.Windows.Forms.Panel panel_incentives;
        private System.Windows.Forms.Button button_incentives;
        private System.Windows.Forms.Label label_incentives;
        private System.Windows.Forms.Panel panel_deductions;
        private System.Windows.Forms.Button button_deduction;
        private System.Windows.Forms.Label label_deductions;
        private System.Windows.Forms.Panel panel_payslip;
        private System.Windows.Forms.Button button_payslip;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Button button_manage_employee;

        public System.Windows.Forms.Panel panel_empCtrl;
        private createClassControl createClassControl1;
        private classControl classControl1;
    }
}
