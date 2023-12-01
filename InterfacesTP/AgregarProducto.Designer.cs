namespace InterfacesTP
{
    partial class AgregarProducto
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
            this.btn_Cerrar = new System.Windows.Forms.Button();
            this.btnCrear = new System.Windows.Forms.Button();
            this.dbProducto = new System.Windows.Forms.DataGridView();
            this.lblTitle = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.lbl_Producto = new System.Windows.Forms.Label();
            this.lbl_Cantidad = new System.Windows.Forms.Label();
            this.txtb_Cantidad = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.cb_Tipo = new System.Windows.Forms.ComboBox();
            this.lbl_Nombre_Producto = new System.Windows.Forms.Label();
            this.lbl_Sucursal = new System.Windows.Forms.Label();
            this.lbl_Proveedor = new System.Windows.Forms.Label();
            this.lbl_Pedido = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.dbProducto)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btn_Cerrar
            // 
            this.btn_Cerrar.BackColor = System.Drawing.Color.Transparent;
            this.btn_Cerrar.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_Cerrar.Location = new System.Drawing.Point(609, 333);
            this.btn_Cerrar.Name = "btn_Cerrar";
            this.btn_Cerrar.Size = new System.Drawing.Size(98, 27);
            this.btn_Cerrar.TabIndex = 25;
            this.btn_Cerrar.Text = "Cerrar";
            this.btn_Cerrar.UseVisualStyleBackColor = false;
            this.btn_Cerrar.Click += new System.EventHandler(this.btn_Cerrar_Click);
            // 
            // btnCrear
            // 
            this.btnCrear.BackColor = System.Drawing.Color.AliceBlue;
            this.btnCrear.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCrear.Location = new System.Drawing.Point(314, 269);
            this.btnCrear.Name = "btnCrear";
            this.btnCrear.Size = new System.Drawing.Size(241, 27);
            this.btnCrear.TabIndex = 24;
            this.btnCrear.Text = "Agregar";
            this.btnCrear.UseVisualStyleBackColor = false;
            this.btnCrear.Click += new System.EventHandler(this.btnCrear_Click);
            // 
            // dbProducto
            // 
            this.dbProducto.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dbProducto.Location = new System.Drawing.Point(314, 80);
            this.dbProducto.MultiSelect = false;
            this.dbProducto.Name = "dbProducto";
            this.dbProducto.RowTemplate.Height = 25;
            this.dbProducto.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dbProducto.Size = new System.Drawing.Size(241, 168);
            this.dbProducto.TabIndex = 23;
            this.dbProducto.SelectionChanged += new System.EventHandler(this.dbProducto_SelectionChanged);
            // 
            // lblTitle
            // 
            this.lblTitle.AutoSize = true;
            this.lblTitle.BackColor = System.Drawing.Color.Transparent;
            this.lblTitle.Font = new System.Drawing.Font("Century Gothic", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTitle.Location = new System.Drawing.Point(451, 24);
            this.lblTitle.Name = "lblTitle";
            this.lblTitle.Size = new System.Drawing.Size(265, 36);
            this.lblTitle.TabIndex = 22;
            this.lblTitle.Text = "Agregar Producto";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(32, 152);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(51, 16);
            this.label3.TabIndex = 21;
            this.label3.Text = "Sucursal";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(32, 126);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(64, 16);
            this.label2.TabIndex = 20;
            this.label2.Text = "Proveedor";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(32, 100);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(46, 16);
            this.label1.TabIndex = 19;
            this.label1.Text = "Pedido";
            // 
            // lbl_Producto
            // 
            this.lbl_Producto.AutoSize = true;
            this.lbl_Producto.BackColor = System.Drawing.Color.Transparent;
            this.lbl_Producto.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_Producto.Location = new System.Drawing.Point(32, 260);
            this.lbl_Producto.Name = "lbl_Producto";
            this.lbl_Producto.Size = new System.Drawing.Size(57, 16);
            this.lbl_Producto.TabIndex = 29;
            this.lbl_Producto.Text = "Producto";
            // 
            // lbl_Cantidad
            // 
            this.lbl_Cantidad.AutoSize = true;
            this.lbl_Cantidad.BackColor = System.Drawing.Color.Transparent;
            this.lbl_Cantidad.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_Cantidad.Location = new System.Drawing.Point(32, 289);
            this.lbl_Cantidad.Name = "lbl_Cantidad";
            this.lbl_Cantidad.Size = new System.Drawing.Size(61, 16);
            this.lbl_Cantidad.TabIndex = 31;
            this.lbl_Cantidad.Text = "Cantidad";
            // 
            // txtb_Cantidad
            // 
            this.txtb_Cantidad.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtb_Cantidad.Location = new System.Drawing.Point(139, 286);
            this.txtb_Cantidad.Name = "txtb_Cantidad";
            this.txtb_Cantidad.Size = new System.Drawing.Size(100, 21);
            this.txtb_Cantidad.TabIndex = 32;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.Transparent;
            this.label5.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(32, 232);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(82, 16);
            this.label5.TabIndex = 33;
            this.label5.Text = "Tipo Producto";
            // 
            // cb_Tipo
            // 
            this.cb_Tipo.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_Tipo.FormattingEnabled = true;
            this.cb_Tipo.Location = new System.Drawing.Point(139, 229);
            this.cb_Tipo.Name = "cb_Tipo";
            this.cb_Tipo.Size = new System.Drawing.Size(100, 24);
            this.cb_Tipo.TabIndex = 34;
            this.cb_Tipo.SelectedIndexChanged += new System.EventHandler(this.cbTipo_SelectedIndexChanged);
            // 
            // lbl_Nombre_Producto
            // 
            this.lbl_Nombre_Producto.AutoSize = true;
            this.lbl_Nombre_Producto.BackColor = System.Drawing.Color.Transparent;
            this.lbl_Nombre_Producto.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_Nombre_Producto.Location = new System.Drawing.Point(136, 260);
            this.lbl_Nombre_Producto.Name = "lbl_Nombre_Producto";
            this.lbl_Nombre_Producto.Size = new System.Drawing.Size(50, 16);
            this.lbl_Nombre_Producto.TabIndex = 30;
            this.lbl_Nombre_Producto.Text = "Nombre";
            // 
            // lbl_Sucursal
            // 
            this.lbl_Sucursal.AutoSize = true;
            this.lbl_Sucursal.BackColor = System.Drawing.Color.Transparent;
            this.lbl_Sucursal.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_Sucursal.Location = new System.Drawing.Point(136, 152);
            this.lbl_Sucursal.Name = "lbl_Sucursal";
            this.lbl_Sucursal.Size = new System.Drawing.Size(50, 16);
            this.lbl_Sucursal.TabIndex = 28;
            this.lbl_Sucursal.Text = "Nombre";
            // 
            // lbl_Proveedor
            // 
            this.lbl_Proveedor.AutoSize = true;
            this.lbl_Proveedor.BackColor = System.Drawing.Color.Transparent;
            this.lbl_Proveedor.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_Proveedor.Location = new System.Drawing.Point(136, 126);
            this.lbl_Proveedor.Name = "lbl_Proveedor";
            this.lbl_Proveedor.Size = new System.Drawing.Size(50, 16);
            this.lbl_Proveedor.TabIndex = 27;
            this.lbl_Proveedor.Text = "Nombre";
            // 
            // lbl_Pedido
            // 
            this.lbl_Pedido.AutoSize = true;
            this.lbl_Pedido.BackColor = System.Drawing.Color.Transparent;
            this.lbl_Pedido.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_Pedido.Location = new System.Drawing.Point(136, 100);
            this.lbl_Pedido.Name = "lbl_Pedido";
            this.lbl_Pedido.Size = new System.Drawing.Size(50, 16);
            this.lbl_Pedido.TabIndex = 26;
            this.lbl_Pedido.Text = "Nombre";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.DimGray;
            this.panel1.Controls.Add(this.lblTitle);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(719, 73);
            this.panel1.TabIndex = 35;
            // 
            // AgregarProducto
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(719, 372);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.cb_Tipo);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txtb_Cantidad);
            this.Controls.Add(this.lbl_Cantidad);
            this.Controls.Add(this.lbl_Nombre_Producto);
            this.Controls.Add(this.lbl_Producto);
            this.Controls.Add(this.lbl_Sucursal);
            this.Controls.Add(this.lbl_Proveedor);
            this.Controls.Add(this.lbl_Pedido);
            this.Controls.Add(this.btn_Cerrar);
            this.Controls.Add(this.btnCrear);
            this.Controls.Add(this.dbProducto);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.DoubleBuffered = true;
            this.ForeColor = System.Drawing.Color.Black;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Name = "AgregarProducto";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "AgregarProducto";
            this.Load += new System.EventHandler(this.AgregarProducto_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dbProducto)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button btn_Cerrar;
        private System.Windows.Forms.Button btnCrear;
        private System.Windows.Forms.DataGridView dbProducto;
        private System.Windows.Forms.Label lblTitle;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lbl_Producto;
        private System.Windows.Forms.Label lbl_Cantidad;
        private System.Windows.Forms.TextBox txtb_Cantidad;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cb_Tipo;
        private System.Windows.Forms.Label lbl_Nombre_Producto;
        private System.Windows.Forms.Label lbl_Sucursal;
        private System.Windows.Forms.Label lbl_Proveedor;
        private System.Windows.Forms.Label lbl_Pedido;
        private System.Windows.Forms.Panel panel1;
    }
}