using System;
using BLL.BLL.Clases;
using BLL.BLL.Entidades;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Button;

namespace InterfacesTP
{
    // La clase UI_GestionOrdenPedido es una interfaz de usuario (Form)
    public partial class UI_GestionOrdenPedido : Form
    {
        // Declaración de variables miembro privadas
        private Proveedor_BLL provee;
        private Sucursal_BLL sucur;
        private Pedido_BLL pedid;
        private PedidoProducto_BLL pedprod;
        private List<Proveedor_Ent> listaProveedor;
        private List<Sucursal_Ent> listaSucursal;
        private List<Pedido_Ent> listaPedido;
        private List<PedidoProducto_Ent> listapedprod;
        private int inicio = 0;
        private BLL.BLL.Entidades.Usuario_Ent usr;
        // Constructor de la clase
        public UI_GestionOrdenPedido(BLL.BLL.Entidades.Usuario_Ent usuario)
        {
            // Inicializa la interfaz de usuario
            InitializeComponent();

            // Inicializa los datos y la interfaz de usuario


            InitializeData();
            InitializeUI();
            usr = usuario;
            switch (usr.Rol.id_rol)
            {
                // Caso 1: Si numero es igual a 1 significa que inicio sistema un ADMINISTRADOR
                case 1:

                    break;

                // Caso 2:  Si numero es igual a 2 significa que inicio sistema un OPERADOR
                case 2:

                    break;

                // Caso 3:  Si numero es igual a 2 significa que inicio sistema un OBSERVADOR
                case 3:
                    cb_Sucursal.Hide();
                    lbl_Sucursal.Hide();
                    label2.Hide();
                    cb_Proveedor.Hide();
                    btn_Agregar_Producto.Hide();
                    btn_Quitar_Producto.Hide();
                    btnCrear.Hide();
                    button1.Hide();
                    break;

                // Caso 4:  Si numero es igual a 2 significa que inicio sistema un TRANSPORTISTA
                case 4:
                    this.Close();
                    break;

            }


        }

        private void UI_GestionOrdenPedido_Load(object sender, EventArgs e)
        {
            this.Dock = DockStyle.Fill;
        }





        // Inicializa las variables de datos
        private void InitializeData()
        {
            // Inicializa instancias de las clases de lógica de negocios
            provee = new Proveedor_BLL();
            sucur = new Sucursal_BLL();
            pedid = new Pedido_BLL();
            pedprod = new PedidoProducto_BLL();

            // Obtiene listas de datos de proveedores, sucursales, pedidos y productos
            listaProveedor = provee.Traer();
            listaSucursal = sucur.Traer();
            listaPedido = pedid.Traer();
            listapedprod = pedprod.Traer();
        }

        // Inicializa la interfaz de usuario
        private void InitializeUI()
        {
            // Inicializa el control DataGridView y los ComboBoxes
            InitializeDataGridView();
            InitializeComboBoxes();

            // Oculta botones en la interfaz de usuario
            btn_Quitar_Producto.Hide();
            btn_Agregar_Producto.Hide();
        }

        // Inicializa el control DataGridView
        private void InitializeDataGridView()
        {

            // Actualiza los datos en el DataGridView
            actualizarDatos();

            // Oculta la columna "Estado" en el DataGridView
            dbPedido.Columns["Estado"].Visible = false;
            dbPedido.Refresh();
            dbPedido.ClearSelection();

            // Asocia métodos de formato a eventos de celdas en el DataGridView
            dbPedido.CellFormatting += dbPedido_CellFormatting;
            dbProducto.CellFormatting += dbProducto_CellFormatting;

            // Configura la selección única en el DataGridView
            dbPedido.MultiSelect = false;
            dbProducto.MultiSelect = false;
        }

        // Inicializa los ComboBoxes en la interfaz de usuario
        private void InitializeComboBoxes()
        {
            // Configura los datos y la presentación de los ComboBoxes
            cb_Proveedor.DataSource = listaProveedor;
            cb_Proveedor.DisplayMember = "Nombre";
            cb_Proveedor.ValueMember = "ID_Proveedor";
            cb_Sucursal.DataSource = listaSucursal;
            cb_Sucursal.DisplayMember = "Nombre";
            cb_Sucursal.ValueMember = "ID_Sucursal";
        }

        // Actualiza los datos en la interfaz de usuario, mostrando solo los pedidos con estado 1
        private void actualizarDatos()
        {
            if (inicio != 0)
            {

                // Obtiene la lista completa de pedidos y de productos asociados
                listaPedido = pedid.Traer();
                listapedprod = pedprod.Traer();
            }
            else
            {
                inicio = 1;
            }


            // Filtra la lista de pedidos para mostrar solo los que tienen estado 1
            var listapedidopasar = listaPedido.Where(x => x.Estado == 1).ToList();

            // Asigna la lista filtrada al origen de datos del DataGridView de pedidos
            dbPedido.DataSource = listapedidopasar;

            // Actualiza y limpia el DataGridView de productos asociados

        }

        // Maneja el evento de cambio de selección en el DataGridView de pedidos
        private void dbPedido_SelectionChanged(object sender, EventArgs e)
        {
            if (dbPedido.SelectedRows.Count > 0)
            {
                // Obtiene la fila seleccionada y configura el texto del botón
                DataGridViewRow selectedRow = dbPedido.SelectedRows[0];
                btnCrear.Text = "Modificar";

                // Obtiene el objeto Pedido_Ent asociado a la fila seleccionada
                Pedido_Ent pedidoSeleccionada = (Pedido_Ent)selectedRow.DataBoundItem;

                // Llena los campos relacionados con el pedido seleccionado
                FillPedidoFields(pedidoSeleccionada);
                if (usr.Rol.id_rol > 2)
                {
                    btn_Agregar_Producto.Hide();
                    btn_Quitar_Producto.Hide();
                }
            }
            else
            {
                // Configura el texto del botón y oculta el botón de agregar producto
                btnCrear.Text = "Crear";
                btn_Agregar_Producto.Hide();
            }
        }

        // Llena los campos relacionados con un pedido seleccionado en la interfaz de usuario
        private void FillPedidoFields(Pedido_Ent pedido)
        {
            // Configura los ComboBoxes con la lista completa de sucursales y proveedores
            cb_Sucursal.DataSource = listaSucursal;
            cb_Sucursal.ValueMember = "ID_Sucursal";
            cb_Sucursal.SelectedValue = pedido.Sucursal.ID_Sucursal;
            cb_Proveedor.DataSource = listaProveedor;
            cb_Proveedor.ValueMember = "id_Proveedor";
            cb_Proveedor.SelectedValue = pedido.Proveedor.ID_Proveedor;

            // Filtra la lista de productos asociados al pedido y con estado 1
            var listapedprodpasar = listapedprod
                .Where(x => x.Pedido.ID_Pedido == pedido.ID_Pedido && x.Estado == 1)
                .ToList();

            // Asigna la lista filtrada al origen de datos del DataGridView de productos
            dbProducto.DataSource = listapedprodpasar;

            // Muestra el botón de agregar producto y configura la visibilidad de algunas columnas
            btn_Agregar_Producto.Show();
            dbProducto.Columns["Pedido"].Visible = false;
            dbProducto.Columns["ID_PedidoProducto"].Visible = false;
            dbProducto.Columns["Estado"].Visible = false;

            // Actualiza y limpia el DataGridView de productos
            dbProducto.Refresh();
            dbProducto.ClearSelection();
        }
        // Maneja el evento de cambio de selección en el DataGridView de productos
        private void dbProducto_SelectionChanged(object sender, EventArgs e)
        {

            // Muestra u oculta el botón "Quitar Producto" dependiendo de si hay filas seleccionadas en el DataGridView de productos
            btn_Quitar_Producto.ShowOrHide(dbProducto.SelectedRows.Count > 0);
            if (usr.Rol.id_rol > 2)
            {
                btn_Quitar_Producto.Hide();
            }
        }

        // Maneja el evento de formato de celda en el DataGridView de pedidos
        private void dbPedido_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            // Formatea la celda de la columna "Sucursal" mostrando el nombre de la sucursal en lugar del objeto completo
            if (dbPedido.Columns[e.ColumnIndex].Name == "Sucursal" && e.Value != null)
            {
                Sucursal_Ent sucurs = (Sucursal_Ent)e.Value;
                e.Value = sucurs.Nombre;
                e.FormattingApplied = true;
            }

            // Formatea la celda de la columna "Proveedor" mostrando el nombre del proveedor en lugar del objeto completo
            if (dbPedido.Columns[e.ColumnIndex].Name == "Proveedor" && e.Value != null)
            {
                Proveedor_Ent proveed = (Proveedor_Ent)e.Value;
                e.Value = proveed.Nombre;
                e.FormattingApplied = true;
            }
        }

        // Maneja el evento de formato de celda en el DataGridView de productos
        private void dbProducto_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            // Formatea la celda de la columna "Producto" mostrando el nombre del producto en lugar del objeto completo
            if (dbProducto.Columns[e.ColumnIndex].Name == "Producto" && e.Value != null)
            {
                Producto_Ent produc = (Producto_Ent)e.Value;
                e.Value = produc.Nombre;
                e.FormattingApplied = true;
            }
        }

        // Maneja el clic en el botón "Crear" en la interfaz de usuario
        private void btnCrear_Click(object sender, EventArgs e)
        {
            if (dbPedido.SelectedRows.Count > 0)
            {
                // Obtiene la fila seleccionada y el objeto Pedido_Ent asociado
                DataGridViewRow selectedRow = dbPedido.SelectedRows[0];
                Pedido_Ent pedidoSeleccionada = (Pedido_Ent)selectedRow.DataBoundItem;

                // Verifica si el pedido tiene productos asociados antes de modificarlo
                var listaconsulta = listapedprod.Where(x => x.Pedido.ID_Pedido == pedidoSeleccionada.ID_Pedido);
                if (listaconsulta == null)
                {
                    // Actualiza un pedido existente
                    UpdateExistingPedido(pedidoSeleccionada);
                }
                else
                {
                    MessageBox.Show("No puede modificar pedidos que poseen productos cargados.");
                }
            }
            else
            {
                // Crea un nuevo pedido
                CreateNewPedido();
            }

            // Actualiza los datos en la interfaz de usuario y limpia la selección
            actualizarDatos();

        }

        // Actualiza un pedido existente en la base de datos
        private void UpdateExistingPedido(Pedido_Ent pedidoSeleccionada)
        {
            Pedido_Ent ped = new Pedido_Ent
            {
                ID_Pedido = pedidoSeleccionada.ID_Pedido,
                Sucursal = pedidoSeleccionada.Sucursal,
                Proveedor = pedidoSeleccionada.Proveedor,
                Usuario = new Usuario_Ent { ID = 2 },
                Estado = 1
            };
            pedid.Guardar(ped);
        }

        // Crea un nuevo pedido en la base de datos
        private void CreateNewPedido()
        {
            Pedido_Ent ped = new Pedido_Ent
            {
                ID_Pedido = 0,
                Sucursal = (Sucursal_Ent)cb_Sucursal.SelectedItem,
                Proveedor = (Proveedor_Ent)cb_Proveedor.SelectedItem,
                Estado = 1,
                Usuario = usr
            };
            pedid.Guardar(ped);
        }

        // Limpia la selección en los DataGridView, recarga la lista de pedidos, y actualiza la interfaz de usuario
        private void limpiarSeleccion()
        {
            // Limpia las selecciones en los DataGridView de pedidos y productos
            dbPedido.ClearSelection();
            dbProducto.ClearSelection();





            // Limpia nuevamente las selecciones y actualiza la interfaz de usuario
            dbProducto.ClearSelection();
            dbPedido.ClearSelection();
            dbPedido.Refresh();
            dbProducto.Refresh();
        }

        // Maneja el clic en el botón "Editar" en la interfaz de usuario
        private void btnEditar_Click(object sender, EventArgs e)
        {
            if (dbPedido.SelectedRows.Count == 0)
            {
                MessageBox.Show("Debe seleccionar un pedido para agregar productos.");
            }
            else
            {
                // Obtiene la fila seleccionada y el objeto Pedido_Ent asociado
                DataGridViewRow selectedRow = dbPedido.SelectedRows[0];
                Pedido_Ent pedidoSeleccionada = (Pedido_Ent)selectedRow.DataBoundItem;

                // Abre un formulario para agregar productos al pedido seleccionado
                AgregarProducto formRol = new AgregarProducto(pedidoSeleccionada);
                formRol.ShowDialog();
                formRol.Focus();

                // Actualiza los datos en la interfaz de usuario y el DataGridView de productos
                actualizarDatos();
                ActualizarDataGridViewProductos();
            }
        }

        // Maneja el clic en un botón no identificado (button1 en el formulario)
        private void button1_Click(object sender, EventArgs e)
        {
            // Limpia la selección y actualiza los datos en la interfaz de usuario
            limpiarSeleccion();

        }

        // Actualiza el DataGridView de productos con la lista actualizada de productos
        private void ActualizarDataGridViewProductos()
        {
            // Obtiene la lista actualizada de productos y la asigna al origen de datos del DataGridView de productos


            // Refresca y limpia el DataGridView de productos
            dbPedido.Refresh();
            dbProducto.Refresh();
            dbProducto.ClearSelection();
        }


        // Maneja el clic en un botón no identificado (button3 en el formulario)
        private void button3_Click(object sender, EventArgs e)
        {
            if (dbProducto.SelectedRows.Count > 0)
            {
                // Obtiene la fila seleccionada y el objeto PedidoProducto_Ent asociado
                DataGridViewRow selectedRow = dbProducto.SelectedRows[0];
                PedidoProducto_BLL produ = new PedidoProducto_BLL();
                PedidoProducto_Ent pedproductoSeleccionada = (PedidoProducto_Ent)selectedRow.DataBoundItem;

                // Verifica si el producto no ha sido recibido antes de eliminarlo
                if (pedproductoSeleccionada.Recepcionada == 0)
                {
                    // Cambia el estado del producto a 0 (eliminado) y guarda los cambios en la base de datos
                    pedproductoSeleccionada.Estado = 0;
                    produ.Guardar(pedproductoSeleccionada);

                    // Actualiza el DataGridView de productos
                    ActualizarDataGridViewProductos();
                }
                else
                {
                    MessageBox.Show("No se puede eliminar un producto que ya posee recepción de mercadería.");
                }
            }
        }

        // Maneja el clic en el botón "Cerrar" en la interfaz de usuario
        private void btnCerrar_Click(object sender, EventArgs e)
        {
            // Cierra la ventana actual
            this.Close();
        }


    }
    // Clase de extensión para mostrar u ocultar un botón según una condición
    public static class ButtonExtensions
    {
        public static void ShowOrHide(this Button button, bool condition)
        {
            if (condition)
                button.Show();
            else
                button.Hide();
        }
    }

}