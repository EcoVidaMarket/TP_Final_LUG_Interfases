using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL.BLL.Clases;
using BLL.BLL.Entidades;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Button;

namespace InterfacesTP
{
    public partial class AgregarProducto : Form
    {
        private BLL.BLL.Entidades.Pedido_Ent pedidoAgregar;
        private Producto_BLL produ;
        private TipoProducto_BLL tipoprodu;
        private List<Producto_Ent> listaProducto;
        private List<TipoProducto_Ent> listaTipo;
        public AgregarProducto(BLL.BLL.Entidades.Pedido_Ent pedido)
        {
            InitializeComponent();
            InitializeData(pedido);
            InitializeDataGridView();
            InitializeComboBoxes();

        }

        private void InitializeData(BLL.BLL.Entidades.Pedido_Ent pedido)
        {
            produ = new Producto_BLL();
            tipoprodu = new TipoProducto_BLL();
            pedidoAgregar = pedido;
            this.lbl_Pedido.Text = pedido.ID_Pedido.ToString();
            this.lbl_Sucursal.Text = pedido.Sucursal.Nombre;
            this.lbl_Proveedor.Text = pedido.Proveedor.Nombre;
            listaProducto = produ.Traer();
            listaTipo = tipoprodu.Traer();
            this.btnCrear.Hide();
            this.lbl_Producto.Hide();
            this.lbl_Cantidad.Hide();
            this.txtb_Cantidad.Hide();
            this.lbl_Nombre_Producto.Hide();

        }

        private void InitializeDataGridView()
        {
            // Crea una instancia de la clase de gestión de datos de Pedidos (BLL).
            // Obtiene la lista de Pedidoes y la asigna al DataSource del DataGridView.
            var listapasar = listaProducto.Where(x => x.Estado == 1 && x.Proveedor == pedidoAgregar.Proveedor.ID_Proveedor).ToList();
            dbProducto.DataSource = listapasar;

            // Oculta la columna Estado en el DataGridView.
            dbProducto.Columns["Proveedor"].Visible = false;
            dbProducto.Columns["Tipo_Producto"].Visible = false;
            dbProducto.Columns["Estado"].Visible = false;
            dbProducto.Columns[0].HeaderText = "ID";
            dbProducto.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells;
            dbProducto.AutoResizeColumns(DataGridViewAutoSizeColumnsMode.AllCells);
            // Actualiza y limpia la selección en el DataGridView.
            dbProducto.Refresh();
            dbProducto.ClearSelection();


        }
        private void InitializeComboBoxes()
        {
            // Asigna la lista de Proveedor al DataSource del ComboBox de Proveedor.
            listaTipo.Insert(0, new BLL.BLL.Entidades.TipoProducto_Ent
            {
                id_TipoProducto = 0,
                Nombre_Tipo = "Todos"

            });
            cb_Tipo.DataSource = listaTipo;

            // Especifica las propiedades de visualización y valor para el ComboBox de Proveedor.
            cb_Tipo.DisplayMember = "Nombre_Tipo";
            cb_Tipo.ValueMember = "id_TipoProducto";


        }

        private void cbTipo_SelectedIndexChanged(object sender, EventArgs e)
        {

            BLL.BLL.Entidades.TipoProducto_Ent tipoSeleccionada = (BLL.BLL.Entidades.TipoProducto_Ent)cb_Tipo.SelectedItem;
            if (tipoSeleccionada.id_TipoProducto != 0)
            {
                var listapasar = listaProducto.Where(x => x.Estado == 1 && x.Proveedor == pedidoAgregar.Proveedor.ID_Proveedor && x.Tipo_Producto == tipoSeleccionada.id_TipoProducto).ToList();
                dbProducto.DataSource = listapasar;
                dbProducto.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells;
                dbProducto.AutoResizeColumns(DataGridViewAutoSizeColumnsMode.AllCells);
                dbProducto.Refresh();
                dbProducto.ClearSelection();
            }
            else
            {
                var listapasar = listaProducto.Where(x => x.Estado == 1 && x.Proveedor == pedidoAgregar.Proveedor.ID_Proveedor).ToList();
                dbProducto.DataSource = listapasar;
                dbProducto.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells;
                dbProducto.AutoResizeColumns(DataGridViewAutoSizeColumnsMode.AllCells);
                dbProducto.Refresh();
                dbProducto.ClearSelection();
            }

        }

        private void dbProducto_SelectionChanged(object sender, EventArgs e)
        {
            // Verifica si hay alguna fila seleccionada en el DataGridView.
            if (dbProducto.SelectedRows.Count > 0)
            {
                // Obtiene la fila seleccionada.
                DataGridViewRow selectedRow = dbProducto.SelectedRows[0];

                // Establece el texto del botón "Crear" como "Modificar".
                this.lbl_Producto.Show();
                this.lbl_Cantidad.Show();
                this.txtb_Cantidad.Show();
                this.lbl_Nombre_Producto.Show();
                this.btnCrear.Show();

                // Obtiene la entidad de sucursal asociada a la fila seleccionada.
                BLL.BLL.Entidades.Producto_Ent productoSeleccionada = (BLL.BLL.Entidades.Producto_Ent)selectedRow.DataBoundItem;

                // Llena los campos del formulario con los datos de la sucursal seleccionada.

                this.lbl_Nombre_Producto.Text = productoSeleccionada.Nombre;



            }
            else
            {
                this.btnCrear.Hide();
                this.lbl_Producto.Hide();
                this.lbl_Cantidad.Hide();
                this.txtb_Cantidad.Hide();
                this.lbl_Nombre_Producto.Hide();

            }


        }

        private void btnCrear_Click(object sender, EventArgs e)
        {
            // Verifica si hay alguna fila seleccionada en el DataGridView.
            if (dbProducto.SelectedRows.Count > 0)
            {
                // Obtiene la fila seleccionada.
                DataGridViewRow selectedRow = dbProducto.SelectedRows[0];

                // Obtiene la entidad de sucursal asociada a la fila seleccionada.
                BLL.BLL.Clases.PedidoProducto_BLL produc = new BLL.BLL.Clases.PedidoProducto_BLL();
                BLL.BLL.Entidades.Producto_Ent productoSeleccionada = (BLL.BLL.Entidades.Producto_Ent)selectedRow.DataBoundItem;
                
                if (string.IsNullOrWhiteSpace(txtb_Cantidad.Text))
                {
                    MessageBox.Show("Ingrese una cantidad válida.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                // Realiza la validación de que la cantidad sea un número entero
                if (!int.TryParse(txtb_Cantidad.Text, out int cantidad))
                {
                    MessageBox.Show("La cantidad debe ser un número entero.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                // Crea una nueva entidad de sucursal con los datos del formulario.
                BLL.BLL.Entidades.PedidoProducto_Ent pro = new BLL.BLL.Entidades.PedidoProducto_Ent();
                pro.Producto = productoSeleccionada;
                pro.Pedido = pedidoAgregar;
                pro.Cantidad = int.Parse(txtb_Cantidad.Text);
                pro.Recepcionada = 0;
                pro.Estado = 1;

                produc.Guardar(pro);
            }
            else
            {

            }
        }

        private void btn_Cerrar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void AgregarProducto_Load(object sender, EventArgs e)
        {
            this.Dock = DockStyle.Fill;
        }
    }
}