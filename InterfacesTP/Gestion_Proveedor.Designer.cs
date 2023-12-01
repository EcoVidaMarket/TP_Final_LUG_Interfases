namespace InterfacesTP
{
    partial class Gestion_Proveedor
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
            this.btn_Limpiar = new System.Windows.Forms.Button();
            this.label7 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.cb_Localidad = new System.Windows.Forms.ComboBox();
            this.cb_Partido = new System.Windows.Forms.ComboBox();
            this.cb_Provincia = new System.Windows.Forms.ComboBox();
            this.dbProveedor = new System.Windows.Forms.DataGridView();
            this.button3 = new System.Windows.Forms.Button();
            this.btnCrear = new System.Windows.Forms.Button();
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
            this.txtb_CUIT = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.PanelInactivo = new System.Windows.Forms.Panel();
            this.panel1 = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.dbProveedor)).BeginInit();
            this.PanelInactivo.SuspendLayout();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btn_Limpiar
            // 
            this.btn_Limpiar.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_Limpiar.Location = new System.Drawing.Point(1, 94);
            this.btn_Limpiar.Name = "btn_Limpiar";
            this.btn_Limpiar.Size = new System.Drawing.Size(98, 27);
            this.btn_Limpiar.TabIndex = 63;
            this.btn_Limpiar.Text = "Limpiar";
            this.btn_Limpiar.UseVisualStyleBackColor = true;
            this.btn_Limpiar.Click += new System.EventHandler(this.btn_Limpiar_Click);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(401, 222);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(53, 13);
            this.label7.TabIndex = 62;
            this.label7.Text = "Localidad";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(401, 183);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(40, 13);
            this.label4.TabIndex = 61;
            this.label4.Text = "Partido";
            // 
            // cb_Localidad
            // 
            this.cb_Localidad.FormattingEnabled = true;
            this.cb_Localidad.Location = new System.Drawing.Point(404, 238);
            this.cb_Localidad.Name = "cb_Localidad";
            this.cb_Localidad.Size = new System.Drawing.Size(121, 21);
            this.cb_Localidad.TabIndex = 60;
            // 
            // cb_Partido
            // 
            this.cb_Partido.FormattingEnabled = true;
            this.cb_Partido.Location = new System.Drawing.Point(404, 198);
            this.cb_Partido.Name = "cb_Partido";
            this.cb_Partido.Size = new System.Drawing.Size(121, 21);
            this.cb_Partido.TabIndex = 59;
            this.cb_Partido.SelectedIndexChanged += new System.EventHandler(this.cbPartido_SelectedIndexChanged);
            // 
            // cb_Provincia
            // 
            this.cb_Provincia.FormattingEnabled = true;
            this.cb_Provincia.Location = new System.Drawing.Point(404, 154);
            this.cb_Provincia.Name = "cb_Provincia";
            this.cb_Provincia.Size = new System.Drawing.Size(121, 21);
            this.cb_Provincia.TabIndex = 58;
            this.cb_Provincia.SelectedIndexChanged += new System.EventHandler(this.cbProvincia_SelectedIndexChanged);
            // 
            // dbProveedor
            // 
            this.dbProveedor.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dbProveedor.Location = new System.Drawing.Point(128, 276);
            this.dbProveedor.Name = "dbProveedor";
            this.dbProveedor.Size = new System.Drawing.Size(551, 70);
            this.dbProveedor.TabIndex = 57;
            this.dbProveedor.SelectionChanged += new System.EventHandler(this.dbProveedor_SelectionChanged);
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(622, 373);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(98, 26);
            this.button3.TabIndex = 56;
            this.button3.Text = "Cancelar";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // btnCrear
            // 
            this.btnCrear.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCrear.Location = new System.Drawing.Point(1, 58);
            this.btnCrear.Name = "btnCrear";
            this.btnCrear.Size = new System.Drawing.Size(98, 27);
            this.btnCrear.TabIndex = 55;
            this.btnCrear.Text = "Crear";
            this.btnCrear.UseVisualStyleBackColor = true;
            this.btnCrear.Click += new System.EventHandler(this.btnCrear_Click);
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.Location = new System.Drawing.Point(128, 362);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(73, 17);
            this.checkBox1.TabIndex = 54;
            this.checkBox1.Text = "Habilitado";
            this.checkBox1.UseVisualStyleBackColor = true;
            // 
            // txtb_codPostal
            // 
            this.txtb_codPostal.Location = new System.Drawing.Point(128, 238);
            this.txtb_codPostal.Name = "txtb_codPostal";
            this.txtb_codPostal.Size = new System.Drawing.Size(244, 20);
            this.txtb_codPostal.TabIndex = 53;
            // 
            // txtb_Altura
            // 
            this.txtb_Altura.Location = new System.Drawing.Point(128, 199);
            this.txtb_Altura.Name = "txtb_Altura";
            this.txtb_Altura.Size = new System.Drawing.Size(244, 20);
            this.txtb_Altura.TabIndex = 52;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(125, 222);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(72, 13);
            this.label6.TabIndex = 51;
            this.label6.Text = "Codigo Postal";
            // 
            // lbl_altura
            // 
            this.lbl_altura.AutoSize = true;
            this.lbl_altura.Location = new System.Drawing.Point(125, 183);
            this.lbl_altura.Name = "lbl_altura";
            this.lbl_altura.Size = new System.Drawing.Size(34, 13);
            this.lbl_altura.TabIndex = 50;
            this.lbl_altura.Text = "Altura";
            // 
            // txtb_Calle
            // 
            this.txtb_Calle.Location = new System.Drawing.Point(128, 154);
            this.txtb_Calle.Name = "txtb_Calle";
            this.txtb_Calle.Size = new System.Drawing.Size(244, 20);
            this.txtb_Calle.TabIndex = 49;
            // 
            // lbl_Calle
            // 
            this.lbl_Calle.AutoSize = true;
            this.lbl_Calle.Location = new System.Drawing.Point(125, 138);
            this.lbl_Calle.Name = "lbl_Calle";
            this.lbl_Calle.Size = new System.Drawing.Size(30, 13);
            this.lbl_Calle.TabIndex = 48;
            this.lbl_Calle.Text = "Calle";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(401, 138);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(51, 13);
            this.label5.TabIndex = 47;
            this.label5.Text = "Provincia";
            // 
            // txtb_Nombre
            // 
            this.txtb_Nombre.Location = new System.Drawing.Point(128, 103);
            this.txtb_Nombre.Name = "txtb_Nombre";
            this.txtb_Nombre.Size = new System.Drawing.Size(244, 20);
            this.txtb_Nombre.TabIndex = 46;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(125, 84);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(50, 16);
            this.label2.TabIndex = 45;
            this.label2.Text = "Nombre";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Century Gothic", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(434, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(192, 36);
            this.label1.TabIndex = 44;
            this.label1.Text = "Proveedores";
            // 
            // txtb_CUIT
            // 
            this.txtb_CUIT.Location = new System.Drawing.Point(404, 103);
            this.txtb_CUIT.Name = "txtb_CUIT";
            this.txtb_CUIT.Size = new System.Drawing.Size(277, 20);
            this.txtb_CUIT.TabIndex = 65;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(401, 84);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(32, 16);
            this.label3.TabIndex = 64;
            this.label3.Text = "CUIT";
            // 
            // PanelInactivo
            // 
            this.PanelInactivo.BackColor = System.Drawing.Color.Transparent;
            this.PanelInactivo.BackgroundImage = global::InterfacesTP.Properties.Resources.banner_eco_vida_market;
            this.PanelInactivo.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.PanelInactivo.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.PanelInactivo.Controls.Add(this.btnCrear);
            this.PanelInactivo.Controls.Add(this.btn_Limpiar);
            this.PanelInactivo.Dock = System.Windows.Forms.DockStyle.Left;
            this.PanelInactivo.Location = new System.Drawing.Point(0, 0);
            this.PanelInactivo.Name = "PanelInactivo";
            this.PanelInactivo.Size = new System.Drawing.Size(107, 411);
            this.PanelInactivo.TabIndex = 66;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.ControlDarkDark;
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(107, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(628, 62);
            this.panel1.TabIndex = 67;
            // 
            // Gestion_Proveedor
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(735, 411);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.PanelInactivo);
            this.Controls.Add(this.txtb_CUIT);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.cb_Localidad);
            this.Controls.Add(this.cb_Partido);
            this.Controls.Add(this.cb_Provincia);
            this.Controls.Add(this.dbProveedor);
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
            this.Name = "Gestion_Proveedor";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Gestion_Proveedor";
            this.Load += new System.EventHandler(this.Gestion_Proveedor_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dbProveedor)).EndInit();
            this.PanelInactivo.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_Limpiar;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox cb_Localidad;
        private System.Windows.Forms.ComboBox cb_Partido;
        private System.Windows.Forms.ComboBox cb_Provincia;
        private System.Windows.Forms.DataGridView dbProveedor;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button btnCrear;
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
        private System.Windows.Forms.TextBox txtb_CUIT;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Panel PanelInactivo;
        private System.Windows.Forms.Panel panel1;
    }
}