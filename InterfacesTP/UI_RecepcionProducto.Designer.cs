namespace ControlStock
{
    partial class UI_RecepcionProducto
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
            btnEditar = new Button();
            btnCrear = new Button();
            label1 = new Label();
            dataGridView1 = new DataGridView();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).BeginInit();
            SuspendLayout();
            // 
            // btnEditar
            // 
            btnEditar.Location = new Point(619, 117);
            btnEditar.Name = "btnEditar";
            btnEditar.Size = new Size(114, 30);
            btnEditar.TabIndex = 6;
            btnEditar.Text = "Editar Usuario";
            btnEditar.UseVisualStyleBackColor = true;
            // 
            // btnCrear
            // 
            btnCrear.Location = new Point(619, 38);
            btnCrear.Name = "btnCrear";
            btnCrear.Size = new Size(114, 31);
            btnCrear.TabIndex = 5;
            btnCrear.Text = "Crear Usuario";
            btnCrear.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI", 14.25F, FontStyle.Bold, GraphicsUnit.Point);
            label1.Location = new Point(25, 38);
            label1.Name = "label1";
            label1.Size = new Size(234, 25);
            label1.TabIndex = 4;
            label1.Text = "Recepcion de mercaderia";
            // 
            // dataGridView1
            // 
            dataGridView1.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridView1.Location = new Point(25, 189);
            dataGridView1.Name = "dataGridView1";
            dataGridView1.RowTemplate.Height = 25;
            dataGridView1.Size = new Size(708, 187);
            dataGridView1.TabIndex = 7;
            // 
            // UI_RecepcionProducto
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(762, 445);
            Controls.Add(dataGridView1);
            Controls.Add(btnEditar);
            Controls.Add(btnCrear);
            Controls.Add(label1);
            DoubleBuffered = true;
            Name = "UI_RecepcionProducto";
            Text = "Recepcion de Producto";
            ((System.ComponentModel.ISupportInitialize)dataGridView1).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private Button btnEditar;
        private Button btnCrear;
        private Label label1;
        private DataGridView dataGridView1;
    }
}