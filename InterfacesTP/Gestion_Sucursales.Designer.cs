using System.Windows.Forms;

namespace InterfacesTP
{
    partial class Gestion_Sucursales
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
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.txtb_codPostal = new System.Windows.Forms.TextBox();
            this.txtb_Altura = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.lbl_altura = new System.Windows.Forms.Label();
            this.txtb_Calle = new System.Windows.Forms.TextBox();
            this.lbl_Calle = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtb_Nombre = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.dbSucursal = new System.Windows.Forms.DataGridView();
            this.button3 = new System.Windows.Forms.Button();
            this.btnCrear = new System.Windows.Forms.Button();
            this.cb_Provincia = new System.Windows.Forms.ComboBox();
            this.cb_Partido = new System.Windows.Forms.ComboBox();
            this.cb_Localidad = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.btn_Limpiar = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.dbSucursal)).BeginInit();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.checkBox1.Location = new System.Drawing.Point(131, 373);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(83, 20);
            this.checkBox1.TabIndex = 31;
            this.checkBox1.Text = "Habilitado";
            this.checkBox1.UseVisualStyleBackColor = true;
            // 
            // txtb_codPostal
            // 
            this.txtb_codPostal.Location = new System.Drawing.Point(222, 160);
            this.txtb_codPostal.Name = "txtb_codPostal";
            this.txtb_codPostal.Size = new System.Drawing.Size(242, 20);
            this.txtb_codPostal.TabIndex = 28;
            // 
            // txtb_Altura
            // 
            this.txtb_Altura.Location = new System.Drawing.Point(222, 134);
            this.txtb_Altura.Name = "txtb_Altura";
            this.txtb_Altura.Size = new System.Drawing.Size(242, 20);
            this.txtb_Altura.TabIndex = 27;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(128, 164);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(82, 16);
            this.label6.TabIndex = 26;
            this.label6.Text = "Codigo Postal";
            // 
            // lbl_altura
            // 
            this.lbl_altura.AutoSize = true;
            this.lbl_altura.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_altura.Location = new System.Drawing.Point(131, 136);
            this.lbl_altura.Name = "lbl_altura";
            this.lbl_altura.Size = new System.Drawing.Size(38, 16);
            this.lbl_altura.TabIndex = 25;
            this.lbl_altura.Text = "Altura";
            // 
            // txtb_Calle
            // 
            this.txtb_Calle.Location = new System.Drawing.Point(222, 108);
            this.txtb_Calle.Name = "txtb_Calle";
            this.txtb_Calle.Size = new System.Drawing.Size(242, 20);
            this.txtb_Calle.TabIndex = 24;
            // 
            // lbl_Calle
            // 
            this.lbl_Calle.AutoSize = true;
            this.lbl_Calle.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_Calle.Location = new System.Drawing.Point(131, 112);
            this.lbl_Calle.Name = "lbl_Calle";
            this.lbl_Calle.Size = new System.Drawing.Size(35, 16);
            this.lbl_Calle.TabIndex = 22;
            this.lbl_Calle.Text = "Calle";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(480, 112);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(58, 16);
            this.label5.TabIndex = 21;
            this.label5.Text = "Provincia";
            // 
            // txtb_Nombre
            // 
            this.txtb_Nombre.Location = new System.Drawing.Point(222, 82);
            this.txtb_Nombre.Name = "txtb_Nombre";
            this.txtb_Nombre.Size = new System.Drawing.Size(316, 20);
            this.txtb_Nombre.TabIndex = 19;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(128, 89);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(50, 16);
            this.label2.TabIndex = 17;
            this.label2.Text = "Nombre";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Century Gothic", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(461, 18);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(163, 36);
            this.label1.TabIndex = 16;
            this.label1.Text = "Sucursales";
            // 
            // dbSucursal
            // 
            this.dbSucursal.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dbSucursal.Location = new System.Drawing.Point(131, 214);
            this.dbSucursal.Name = "dbSucursal";
            this.dbSucursal.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dbSucursal.Size = new System.Drawing.Size(545, 144);
            this.dbSucursal.TabIndex = 37;
            this.dbSucursal.SelectionChanged += new System.EventHandler(this.dbSucursal_SelectionChanged);
            // 
            // button3
            // 
            this.button3.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button3.Location = new System.Drawing.Point(599, 364);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(124, 35);
            this.button3.TabIndex = 36;
            this.button3.Text = "Cancelar";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // btnCrear
            // 
            this.btnCrear.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCrear.Location = new System.Drawing.Point(5, 64);
            this.btnCrear.Name = "btnCrear";
            this.btnCrear.Size = new System.Drawing.Size(98, 27);
            this.btnCrear.TabIndex = 33;
            this.btnCrear.Text = "Crear";
            this.btnCrear.UseVisualStyleBackColor = true;
            this.btnCrear.Click += new System.EventHandler(this.btnCrear_Click);
            // 
            // cb_Provincia
            // 
            this.cb_Provincia.FormattingEnabled = true;
            this.cb_Provincia.Location = new System.Drawing.Point(544, 107);
            this.cb_Provincia.Name = "cb_Provincia";
            this.cb_Provincia.Size = new System.Drawing.Size(123, 21);
            this.cb_Provincia.TabIndex = 38;
            this.cb_Provincia.SelectedIndexChanged += new System.EventHandler(this.cbProvincia_SelectedIndexChanged);
            // 
            // cb_Partido
            // 
            this.cb_Partido.FormattingEnabled = true;
            this.cb_Partido.Location = new System.Drawing.Point(544, 134);
            this.cb_Partido.Name = "cb_Partido";
            this.cb_Partido.Size = new System.Drawing.Size(123, 21);
            this.cb_Partido.TabIndex = 39;
            this.cb_Partido.SelectedIndexChanged += new System.EventHandler(this.cbPartido_SelectedIndexChanged);
            // 
            // cb_Localidad
            // 
            this.cb_Localidad.FormattingEnabled = true;
            this.cb_Localidad.Location = new System.Drawing.Point(544, 159);
            this.cb_Localidad.Name = "cb_Localidad";
            this.cb_Localidad.Size = new System.Drawing.Size(123, 21);
            this.cb_Localidad.TabIndex = 40;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(480, 138);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(46, 16);
            this.label4.TabIndex = 41;
            this.label4.Text = "Partido";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(480, 164);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(62, 16);
            this.label7.TabIndex = 42;
            this.label7.Text = "Localidad";
            // 
            // btn_Limpiar
            // 
            this.btn_Limpiar.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_Limpiar.Location = new System.Drawing.Point(4, 99);
            this.btn_Limpiar.Name = "btn_Limpiar";
            this.btn_Limpiar.Size = new System.Drawing.Size(98, 27);
            this.btn_Limpiar.TabIndex = 43;
            this.btn_Limpiar.Text = "Limpiar";
            this.btn_Limpiar.UseVisualStyleBackColor = true;
            this.btn_Limpiar.Click += new System.EventHandler(this.btn_Limpiar_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Transparent;
            this.panel1.BackgroundImage = global::InterfacesTP.Properties.Resources.banner_eco_vida_market;
            this.panel1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.panel1.Controls.Add(this.btn_Limpiar);
            this.panel1.Controls.Add(this.btnCrear);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Left;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(107, 411);
            this.panel1.TabIndex = 44;
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.SystemColors.ControlDarkDark;
            this.panel2.Controls.Add(this.label1);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel2.Location = new System.Drawing.Point(107, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(628, 58);
            this.panel2.TabIndex = 45;
            // 
            // Gestion_Sucursales
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(735, 411);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.cb_Localidad);
            this.Controls.Add(this.cb_Partido);
            this.Controls.Add(this.cb_Provincia);
            this.Controls.Add(this.dbSucursal);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.checkBox1);
            this.Controls.Add(this.txtb_codPostal);
            this.Controls.Add(this.txtb_Altura);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.lbl_altura);
            this.Controls.Add(this.txtb_Calle);
            this.Controls.Add(this.lbl_Calle);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txtb_Nombre);
            this.Controls.Add(this.label2);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Gestion_Sucursales";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Gestion_Sucursales";
            this.Load += new System.EventHandler(this.Gestion_Sucursales_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dbSucursal)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.CheckBox checkBox1;
        private System.Windows.Forms.TextBox txtb_codPostal;
        private System.Windows.Forms.TextBox txtb_Altura;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label lbl_altura;
        private System.Windows.Forms.TextBox txtb_Calle;
        private System.Windows.Forms.Label lbl_Calle;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtb_Nombre;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dbSucursal;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button btnCrear;
        private System.Windows.Forms.ComboBox cb_Provincia;
        private System.Windows.Forms.ComboBox cb_Partido;
        private System.Windows.Forms.ComboBox cb_Localidad;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label7;
        private Button btn_Limpiar;
        private Panel panel1;
        private Panel panel2;
    }
}