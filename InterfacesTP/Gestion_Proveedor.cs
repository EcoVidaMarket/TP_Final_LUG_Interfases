using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace InterfacesTP
{
    public partial class Gestion_Proveedor : Form
    {
        private BLL.BLL.Clases.Provincia_BLL provin;
        private BLL.BLL.Clases.Partido_BLL part;
        private BLL.BLL.Clases.Localidad_BLL loca;
        private List<BLL.BLL.Entidades.Provincia_Ent> listaProvincia;
        private List<BLL.BLL.Entidades.Partido_Ent> listaPartido;
        private List<BLL.BLL.Entidades.Localidad_Ent> listaLocalidad;
        private List<BLL.BLL.Entidades.Partido_Ent> listaPartidoCB;
        private List<BLL.BLL.Entidades.Localidad_Ent> listaLocalidadCB;


        public Gestion_Proveedor()
        {
            // Inicialización de componentes del formulario
            InitializeComponent();

            // Asignar evento CellFormatting al control DataGridView (dbProveedor)
            dbProveedor.CellFormatting += dbProveedor_CellFormatting;

            // Inicializar instancias de las clases de lógica de negocio para Provincia, Partido y Localidad
            provin = new BLL.BLL.Clases.Provincia_BLL();
            part = new BLL.BLL.Clases.Partido_BLL();
            loca = new BLL.BLL.Clases.Localidad_BLL();

            // Obtener listas de Provincias, Partidos y Localidades desde la base de datos
            listaProvincia = provin.Traer();
            listaPartido = part.Traer();
            listaLocalidad = loca.Traer();

            // Insertar un elemento "Seleccione una Provincia" al inicio de la lista de Provincias
            listaProvincia.Insert(0, new BLL.BLL.Entidades.Provincia_Ent { id_provincia = 0, Nombre_Provincia = "Seleccione una Provincia" });

            // Inicializar listas para Partidos y Localidades a utilizar en ComboBox
            listaPartidoCB = new List<BLL.BLL.Entidades.Partido_Ent>();
            listaLocalidadCB = new List<BLL.BLL.Entidades.Localidad_Ent>();

            // Inicializar instancia de la clase de lógica de negocio para Proveedor
            BLL.BLL.Clases.Proveedor_BLL prove = new BLL.BLL.Clases.Proveedor_BLL();

            // Obtener lista de Proveedores desde la base de datos y asignarla al DataSource del DataGridView (dbProveedor)
            List<BLL.BLL.Entidades.Proveedor_Ent> lista = prove.Traer();
            dbProveedor.DataSource = lista;

            // Ocultar la columna "ID_Proveedor" en el DataGridView
            dbProveedor.Columns["ID_Proveedor"].Visible = false;

            // Actualizar y limpiar la visualización del DataGridView
            dbProveedor.Refresh();
            dbProveedor.ClearSelection();

            // Asignar la lista de Provincias al DataSource del ComboBox (cb_Provincia)
            cb_Provincia.DataSource = listaProvincia;
            cb_Provincia.DisplayMember = "Nombre_Provincia";
            cb_Provincia.ValueMember = "id_provincia";
        }

        /// <summary>
        /// Maneja los cambios en el combobox de provincia para que ajuste las opciones de partido. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void cbProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {

            // Obtiene la Provincia seleccionada del ComboBox de Provincia.
            BLL.BLL.Entidades.Provincia_Ent provinciaSeleccionada = (BLL.BLL.Entidades.Provincia_Ent)cb_Provincia.SelectedItem;

            var listaOrden = listaPartido.Where(x => x.Provincia == provinciaSeleccionada.id_provincia).ToList();

            // Limpia la lista de Partidos seleccionados.
            listaPartidoCB.Clear();

            // Ordena la lista de Partidos por nombre.
            listaPartidoCB = listaOrden.OrderBy(partido => partido.Nombre_Partido).ToList();

            // Inserta un elemento inicial en la lista de Partidos.
            listaPartidoCB.Insert(0, new BLL.BLL.Entidades.Partido_Ent
            {
                id_Partido = 0,
                Nombre_Partido = "Seleccione un Partido",
                Provincia = 0
            });

            // Actualiza el ComboBox de Partido con la nueva lista.
            cb_Partido.DataSource = listaPartidoCB;
            cb_Partido.DisplayMember = "Nombre_Partido";
            cb_Partido.ValueMember = "id_Partido";


        }
        /// <summary>
        /// Maneja los cambios en el combobox de partido para que ajuste las opciones de localidad. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void cbPartido_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Limpia la lista de Localidades seleccionadas.
            listaLocalidadCB.Clear();

            // Obtiene el Partido seleccionado del ComboBox de Partido.
            BLL.BLL.Entidades.Partido_Ent partidoSeleccionada = (BLL.BLL.Entidades.Partido_Ent)cb_Partido.SelectedItem;

            var listaOrden = listaLocalidad.Where(x => x.Partido == partidoSeleccionada.id_Partido).ToList();

            // Ordena la lista de Localidades por nombre.
            listaLocalidadCB = listaOrden.OrderBy(localidad => localidad.Nombre_Localidad).ToList();

            // Inserta un elemento inicial en la lista de Localidades.
            listaLocalidadCB.Insert(0, new BLL.BLL.Entidades.Localidad_Ent
            {
                id_Localidad = 0,
                Nombre_Localidad = "Seleccione una Localidad",
                Partido = 0
            });

            // Actualiza el ComboBox de Localidad con la nueva lista.
            cb_Localidad.DataSource = listaLocalidadCB;
            cb_Localidad.DisplayMember = "Nombre_Localidad";
            cb_Localidad.ValueMember = "id_Localidad";
        }

        /// <summary>
        /// Maneja el boton cancelar
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void button3_Click(object sender, EventArgs e)
        {
            // Cerrar el formulario
            this.Close();
        }

        /// <summary>
        /// Maneja los cambios en el datagridview de Proveedor. cambiando los datos en el formulario 
        /// para poder realizar los cambios que se desean realizar.  
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dbProveedor_SelectionChanged(object sender, EventArgs e)
        {
            if (dbProveedor.SelectedRows.Count > 0)
            {
                // Obtener la fila seleccionada en el DataGridView
                DataGridViewRow selectedRow = dbProveedor.SelectedRows[0];

                // Configurar el texto del botón según la acción a realizar (Modificar)
                this.btnCrear.Text = "Modificar";

                // Obtener la entidad del proveedor seleccionado de la fila
                BLL.BLL.Entidades.Proveedor_Ent proveedorSeleccionada = (BLL.BLL.Entidades.Proveedor_Ent)selectedRow.DataBoundItem;

                // Mostrar la información del proveedor en los controles del formulario
                this.txtb_Nombre.Text = proveedorSeleccionada.Nombre;
                this.txtb_CUIT.Text = proveedorSeleccionada.CUIT.ToString();
                this.txtb_Altura.Text = proveedorSeleccionada.Altura;
                this.txtb_Calle.Text = proveedorSeleccionada.Calle;
                this.txtb_codPostal.Text = proveedorSeleccionada.Codigo_Postal;

                // Filtrar las localidades y partidos relacionados con el proveedor seleccionado
                var localidadLocalidad = listaLocalidad.Where(x => x.Partido == proveedorSeleccionada.Localidad.Partido).ToList();
                var partidosLoc = listaPartido.Where(x => x.id_Partido == proveedorSeleccionada.Localidad.Partido).ToList();
                var partidosLocalidad = listaPartido.Where(x => x.Provincia == partidosLoc.First().Provincia).ToList();

                // Configurar los ComboBox con las listas filtradas
                cb_Provincia.DataSource = listaProvincia;
                cb_Provincia.ValueMember = "id_provincia";
                cb_Provincia.SelectedValue = partidosLoc.First().Provincia;
                cb_Partido.DataSource = partidosLocalidad;
                cb_Partido.ValueMember = "id_Partido";
                cb_Partido.SelectedValue = proveedorSeleccionada.Localidad.Partido;
                cb_Localidad.DataSource = localidadLocalidad;
                cb_Localidad.DisplayMember = "Nombre_Localidad";
                cb_Localidad.ValueMember = "id_Localidad";
                cb_Localidad.SelectedValue = proveedorSeleccionada.Localidad.id_Localidad;

                // Marcar el CheckBox según el estado del proveedor
                if (proveedorSeleccionada.Estado == 1)
                {
                    this.checkBox1.Checked = true;
                }
            }
            else
            {
                // Configurar el texto del botón según la acción a realizar (Crear)
                this.btnCrear.Text = "Crear";
            }

            // Asignar manejadores de eventos para los ComboBox
            cb_Provincia.SelectedIndexChanged += cbProvincia_SelectedIndexChanged;
            cb_Partido.SelectedIndexChanged += cbPartido_SelectedIndexChanged;
        }

        /// <summary>
        /// Ajusta los formatos de los datagridview para que los datos de las listas sean legibles. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dbProveedor_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            // Verificar si la columna actual es la columna "Estado"
            if (dbProveedor.Columns[e.ColumnIndex].Name == "Estado")
            {
                // Convertir el valor numérico a texto (Habilitado/Deshabilitado)
                if (e.Value != null)
                {
                    int valor = Convert.ToInt32(e.Value);
                    e.Value = (valor == 1) ? "Habilitado" : "Deshabilitado";
                    e.FormattingApplied = true;
                }
            }

            // Verificar si la columna actual es la columna "Localidad" y si tiene un valor
            if (dbProveedor.Columns[e.ColumnIndex].Name == "Localidad" && e.Value != null)
            {
                // Convertir el valor a un objeto Localidad_Ent
                BLL.BLL.Entidades.Localidad_Ent loca = (BLL.BLL.Entidades.Localidad_Ent)e.Value;
                // Mostrar el Nombre_Localidad en lugar de la representación predeterminada del objeto
                e.Value = loca.Nombre_Localidad;
                e.FormattingApplied = true;
            }
        }

        /// <summary>
        /// Crea o modifica el proveedor
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnCrear_Click(object sender, EventArgs e)
        {
            if (dbProveedor.SelectedRows.Count > 0)
            {
                // Obtener la fila seleccionada en el DataGridView
                DataGridViewRow selectedRow = dbProveedor.SelectedRows[0];

                // Obtener la entidad del proveedor seleccionado de la fila
                BLL.BLL.Clases.Proveedor_BLL prove = new BLL.BLL.Clases.Proveedor_BLL();
                BLL.BLL.Entidades.Proveedor_Ent proveedorSeleccionada = (BLL.BLL.Entidades.Proveedor_Ent)selectedRow.DataBoundItem;

                // Configurar la entidad del proveedor con los nuevos valores
                BLL.BLL.Entidades.Proveedor_Ent prov = new BLL.BLL.Entidades.Proveedor_Ent();
                prov.ID_Proveedor = proveedorSeleccionada.ID_Proveedor;

                // Validar y asignar el nombre
                if (!string.IsNullOrWhiteSpace(txtb_Nombre.Text))
                    prov.Nombre = txtb_Nombre.Text;
                else
                {
                    MessageBox.Show("Por favor, ingrese un nombre válido.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                // Validar y asignar el CUIT
                int cuit;
                if (int.TryParse(txtb_CUIT.Text, out cuit))
                    prov.CUIT = cuit;
                else
                {
                    MessageBox.Show("Por favor, ingrese un CUIT válido.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                // Validar y asignar la calle
                if (!string.IsNullOrWhiteSpace(txtb_Calle.Text))
                    prov.Calle = txtb_Calle.Text;
                else
                {
                    MessageBox.Show("Por favor, ingrese una calle válida.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                // Validar y asignar la Altura
                if (!string.IsNullOrWhiteSpace(txtb_Calle.Text))
                    prov.Altura = txtb_Altura.Text;
                else
                {
                    MessageBox.Show("Por favor, ingrese una altura válida.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                // Validar y asignar la Codigo postal
                if (!string.IsNullOrWhiteSpace(txtb_Calle.Text))
                    prov.Codigo_Postal = txtb_codPostal.Text;
                else
                {
                    MessageBox.Show("Por favor, ingrese un codigo postal válida.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                prov.Localidad = (BLL.BLL.Entidades.Localidad_Ent)cb_Localidad.SelectedItem;
                prov.Estado = checkBox1.Checked ? 1 : 0;

                prove.Guardar(prov);
            }
            else
            {
                // Obtener una nueva entidad de proveedor si no hay ninguna fila seleccionada
                BLL.BLL.Clases.Proveedor_BLL prove = new BLL.BLL.Clases.Proveedor_BLL();
                BLL.BLL.Entidades.Proveedor_Ent prov = new BLL.BLL.Entidades.Proveedor_Ent();
                prov.ID_Proveedor = 0;
                // Validar y asignar el nombre
                if (!string.IsNullOrWhiteSpace(txtb_Nombre.Text))
                    prov.Nombre = txtb_Nombre.Text;
                else
                {
                    MessageBox.Show("Por favor, ingrese un nombre válido.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                // Validar y asignar el CUIT
                int cuit;
                if (int.TryParse(txtb_CUIT.Text, out cuit))
                    prov.CUIT = cuit;
                else
                {
                    MessageBox.Show("Por favor, ingrese un CUIT válido.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                // Validar y asignar la calle
                if (!string.IsNullOrWhiteSpace(txtb_Calle.Text))
                    prov.Calle = txtb_Calle.Text;
                else
                {
                    MessageBox.Show("Por favor, ingrese una calle válida.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                // Validar y asignar la Altura
                if (!string.IsNullOrWhiteSpace(txtb_Calle.Text))
                    prov.Altura = txtb_Altura.Text;
                else
                {
                    MessageBox.Show("Por favor, ingrese una altura válida.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                // Validar y asignar la Codigo postal
                if (!string.IsNullOrWhiteSpace(txtb_Calle.Text))
                    prov.Codigo_Postal = txtb_codPostal.Text;
                else
                {
                    MessageBox.Show("Por favor, ingrese un codigo postal válida.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                prov.Localidad = (BLL.BLL.Entidades.Localidad_Ent)cb_Localidad.SelectedItem;
                prov.Estado = checkBox1.Checked ? 1 : 0;


                // Guardar la nueva entidad de proveedor
                prove.Guardar(prov);
            }


            // Limpiar la selección y restablecer los manejadores de eventos para los ComboBox
            limpiarSeleccion();
            cb_Provincia.SelectedIndexChanged += cbProvincia_SelectedIndexChanged;
            cb_Partido.SelectedIndexChanged += cbPartido_SelectedIndexChanged;
        }

        /// <summary>
        /// Limpia la seleccion de los datagridview
        /// </summary>
        private void limpiarSeleccion()
        {
            // Limpiar la selección en el DataGridView
            dbProveedor.ClearSelection();

            // Limpiar los TextBox y CheckBox
            this.txtb_Nombre.Clear();
            this.txtb_CUIT.Clear();
            this.txtb_Altura.Clear();
            this.txtb_Calle.Clear();
            this.txtb_codPostal.Clear();
            this.checkBox1.Checked = false;

            // Establecer la selección predeterminada en los ComboBox
            cb_Provincia.SelectedIndex = 0;

            // Obtener la lista actualizada de proveedores y actualizar el DataGridView
            BLL.BLL.Clases.Proveedor_BLL proveedorBLL = new BLL.BLL.Clases.Proveedor_BLL();
            List<BLL.BLL.Entidades.Proveedor_Ent> listaProveedores = proveedorBLL.Traer();

            // Actualizar el origen de datos del DataGridView y ajustar las columnas
            dbProveedor.DataSource = listaProveedores;
            dbProveedor.Columns["ID_Proveedor"].Visible = false;
            dbProveedor.Refresh();
            dbProveedor.ClearSelection();
        }

        /// <summary>
        /// Limpia la seleccion de los datos en todos los campos. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btn_Limpiar_Click(object sender, EventArgs e)
        {
            // Llamar al método limpiarSeleccion cuando se hace clic en el botón Limpiar
            limpiarSeleccion();
        }

        private void Gestion_Proveedor_Load(object sender, EventArgs e)
        {
            this.Dock = DockStyle.Fill;
        }
    }
}
