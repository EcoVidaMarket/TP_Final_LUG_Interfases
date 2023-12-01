using System.Drawing;
using System.Windows.Forms;
namespace InterfacesTP

{
    partial class UI_GestionOrdenPedido
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
            this.btn_Agregar_Producto = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.dbPedido = new System.Windows.Forms.DataGridView();
            this.cb_Sucursal = new System.Windows.Forms.ComboBox();
            this.lbl_Sucursal = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.cb_Proveedor = new System.Windows.Forms.ComboBox();
            this.dbProducto = new System.Windows.Forms.DataGridView();
            this.panel2 = new System.Windows.Forms.Panel();
            this.btn_Quitar_Producto = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnCrear = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dbPedido)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dbProducto)).BeginInit();
            this.panel2.SuspendLayout();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btn_Agregar_Producto
            // 
            this.btn_Agregar_Producto.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_Agregar_Producto.Location = new System.Drawing.Point(124, 216);
            this.btn_Agregar_Producto.Name = "btn_Agregar_Producto";
            this.btn_Agregar_Producto.Size = new System.Drawing.Size(111, 26);
            this.btn_Agregar_Producto.TabIndex = 6;
            this.btn_Agregar_Producto.Text = "Agregar Producto";
            this.btn_Agregar_Producto.UseVisualStyleBackColor = true;
            this.btn_Agregar_Producto.Click += new System.EventHandler(this.btnEditar_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Century Gothic", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(364, 26);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(256, 36);
            this.label1.TabIndex = 4;
            this.label1.Text = "Orden de Pedido";
            // 
            // dbPedido
            // 
            this.dbPedido.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dbPedido.Location = new System.Drawing.Point(124, 111);
            this.dbPedido.Name = "dbPedido";
            this.dbPedido.RowTemplate.Height = 25;
            this.dbPedido.Size = new System.Drawing.Size(594, 86);
            this.dbPedido.TabIndex = 9;
            this.dbPedido.SelectionChanged += new System.EventHandler(this.dbPedido_SelectionChanged);
            // 
            // cb_Sucursal
            // 
            this.cb_Sucursal.FormattingEnabled = true;
            this.cb_Sucursal.Location = new System.Drawing.Point(178, 78);
            this.cb_Sucursal.Name = "cb_Sucursal";
            this.cb_Sucursal.Size = new System.Drawing.Size(121, 21);
            this.cb_Sucursal.TabIndex = 10;
            // 
            // lbl_Sucursal
            // 
            this.lbl_Sucursal.AutoSize = true;
            this.lbl_Sucursal.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_Sucursal.Location = new System.Drawing.Point(121, 78);
            this.lbl_Sucursal.Name = "lbl_Sucursal";
            this.lbl_Sucursal.Size = new System.Drawing.Size(51, 16);
            this.lbl_Sucursal.TabIndex = 11;
            this.lbl_Sucursal.Text = "Sucursal";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(527, 80);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(64, 16);
            this.label2.TabIndex = 13;
            this.label2.Text = "Proveedor";
            // 
            // cb_Proveedor
            // 
            this.cb_Proveedor.FormattingEnabled = true;
            this.cb_Proveedor.Location = new System.Drawing.Point(597, 78);
            this.cb_Proveedor.Name = "cb_Proveedor";
            this.cb_Proveedor.Size = new System.Drawing.Size(121, 21);
            this.cb_Proveedor.TabIndex = 12;
            // 
            // dbProducto
            // 
            this.dbProducto.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dbProducto.Location = new System.Drawing.Point(124, 248);
            this.dbProducto.Name = "dbProducto";
            this.dbProducto.RowTemplate.Height = 25;
            this.dbProducto.Size = new System.Drawing.Size(594, 121);
            this.dbProducto.TabIndex = 14;
            this.dbProducto.SelectionChanged += new System.EventHandler(this.dbProducto_SelectionChanged);
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.DimGray;
            this.panel2.Controls.Add(this.label1);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel2.Location = new System.Drawing.Point(107, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(628, 62);
            this.panel2.TabIndex = 18;
            // 
            // btn_Quitar_Producto
            // 
            this.btn_Quitar_Producto.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_Quitar_Producto.Location = new System.Drawing.Point(241, 216);
            this.btn_Quitar_Producto.Name = "btn_Quitar_Producto";
            this.btn_Quitar_Producto.Size = new System.Drawing.Size(111, 26);
            this.btn_Quitar_Producto.TabIndex = 19;
            this.btn_Quitar_Producto.Text = "Quitar Producto";
            this.btn_Quitar_Producto.UseVisualStyleBackColor = true;
            this.btn_Quitar_Producto.Click += new System.EventHandler(this.button3_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Transparent;
            this.panel1.BackgroundImage = global::InterfacesTP.Properties.Resources.banner_eco_vida_market;
            this.panel1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.panel1.Controls.Add(this.btnCrear);
            this.panel1.Controls.Add(this.button2);
            this.panel1.Controls.Add(this.button1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Left;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(107, 411);
            this.panel1.TabIndex = 17;
            // 
            // btnCrear
            // 
            this.btnCrear.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCrear.Location = new System.Drawing.Point(4, 276);
            this.btnCrear.Name = "btnCrear";
            this.btnCrear.Size = new System.Drawing.Size(98, 27);
            this.btnCrear.TabIndex = 5;
            this.btnCrear.Text = "Crear OP";
            this.btnCrear.UseVisualStyleBackColor = true;
            this.btnCrear.Click += new System.EventHandler(this.btnCrear_Click);
            // 
            // button2
            // 
            this.button2.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button2.Location = new System.Drawing.Point(4, 342);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(98, 27);
            this.button2.TabIndex = 16;
            this.button2.Text = "Cancelar";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.btnCerrar_Click);
            // 
            // button1
            // 
            this.button1.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.Location = new System.Drawing.Point(4, 309);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(98, 27);
            this.button1.TabIndex = 15;
            this.button1.Text = "Limpiar";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // UI_GestionOrdenPedido
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(735, 411);
            this.Controls.Add(this.btn_Quitar_Producto);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.dbProducto);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.cb_Proveedor);
            this.Controls.Add(this.lbl_Sucursal);
            this.Controls.Add(this.cb_Sucursal);
            this.Controls.Add(this.dbPedido);
            this.Controls.Add(this.btn_Agregar_Producto);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "UI_GestionOrdenPedido";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Orden de Pedido";
            this.Load += new System.EventHandler(this.UI_GestionOrdenPedido_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dbPedido)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dbProducto)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Button btn_Agregar_Producto;
        private Button btnCrear;
        private Label label1;
        private DataGridView dbPedido;
        private ComboBox cb_Sucursal;
        private Label lbl_Sucursal;
        private Label label2;
        private ComboBox cb_Proveedor;
        private DataGridView dbProducto;
        private Button button1;
        private Button button2;
        private Panel panel1;
        private Panel panel2;
        private Button btn_Quitar_Producto;
    }
}