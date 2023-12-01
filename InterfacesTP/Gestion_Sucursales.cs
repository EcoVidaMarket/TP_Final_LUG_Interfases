using BLL.BLL.Clases;
using BLL.BLL.Entidades;
using System.Collections.Generic;
using System.Windows.Forms;
using System;
using System.Linq;

namespace InterfacesTP
{
    public partial class Gestion_Sucursales : Form
    {
        // Declaración de variables miembro para las instancias de las clases de gestión de datos y las listas de entidades.
        private Provincia_BLL provin;
        private Partido_BLL part;
        private Localidad_BLL loca;
        private List<Provincia_Ent> listaProvincia;
        private List<Partido_Ent> listaPartido;
        private List<Localidad_Ent> listaLocalidad;
        private List<Partido_Ent> listaPartidoCB;
        private List<Localidad_Ent> listaLocalidadCB;

        /// <summary>
        /// Constructor de la clase Gestion_Sucursales.
        /// </summary>
        public Gestion_Sucursales()
        {
            // Inicializa los componentes del formulario.
            InitializeComponent();

            // Inicializa los datos, el DataGridView y los ComboBoxes.
            InitializeData();
            InitializeDataGridView();
            InitializeComboBoxes();
        }

        /// <summary>
        /// Inicializa los datos necesarios para el formulario.
        /// </summary>
        private void InitializeData()
        {
            // Inicializa las instancias de las clases de gestión de datos (BLL).
            provin = new Provincia_BLL();
            part = new Partido_BLL();
            loca = new Localidad_BLL();

            // Obtiene las listas de Provincias, Partidos y Localidades.
            listaProvincia = provin.Traer();
            listaPartido = part.Traer();
            listaLocalidad = loca.Traer();

            // Inserta un elemento inicial en la lista de Provincias.
           

            // Inicializa las listas de Partidos y Localidades para los ComboBoxes.
            listaPartidoCB = new List<Partido_Ent>();
            listaLocalidadCB = new List<Localidad_Ent>();
        }

        /// <summary>
        /// Inicializa el DataGridView con los datos de las Sucursales.
        /// </summary>
        private void InitializeDataGridView()
        {
            // Crea una instancia de la clase de gestión de datos de Sucursales (BLL).
            Sucursal_BLL sucur = new Sucursal_BLL();

            // Obtiene la lista de Sucursales y la asigna al DataSource del DataGridView.
            List<Sucursal_Ent> lista = sucur.Traer();
            dbSucursal.DataSource = lista;

            // Oculta la columna ID_Sucursal en el DataGridView.
            dbSucursal.Columns["ID_Sucursal"].Visible = false;

            // Actualiza y limpia la selección en el DataGridView.
            dbSucursal.Refresh();
            dbSucursal.ClearSelection();

            // Asocia el evento de formato de celda al DataGridView.
            dbSucursal.CellFormatting += dbSucursal_CellFormatting;
        }

        /// <summary>
        /// Inicializa los ComboBoxes con las listas de Provincias y las listas vacías de Partidos y Localidades.
        /// </summary>
        private void InitializeComboBoxes()
        {
            // Asigna la lista de Provincias al DataSource del ComboBox de Provincia.
            cb_Provincia.DataSource = listaProvincia;

            // Especifica las propiedades de visualización y valor para el ComboBox de Provincia.
            cb_Provincia.DisplayMember = "Nombre_Provincia";
            cb_Provincia.ValueMember = "id_provincia";
        }
        /// <summary>
        /// Maneja el evento SelectedIndexChanged del ComboBox de Provincia.
        /// Actualiza la lista de Partidos en el ComboBox de Partido según la Provincia seleccionada.
        /// </summary>
        /// <param name="sender">El objeto que desencadenó el evento.</param>
        /// <param name="e">Los datos del evento.</param>
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
        /// Maneja el evento SelectedIndexChanged del ComboBox de Partido.
        /// Actualiza la lista de Localidades en el ComboBox de Localidad según el Partido seleccionado.
        /// </summary>
        /// <param name="sender">El objeto que desencadenó el evento.</param>
        /// <param name="e">Los datos del evento.</param>
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
        /// Maneja el evento SelectionChanged del DataGridView cuando cambia la selección de filas.
        /// </summary>
        /// <param name="sender">El objeto que desencadenó el evento.</param>
        /// <param name="e">Los datos del evento.</param>
        private void dbSucursal_SelectionChanged(object sender, EventArgs e)
        {
            // Verifica si hay alguna fila seleccionada en el DataGridView.
            if (dbSucursal.SelectedRows.Count > 0)
            {
                // Obtiene la fila seleccionada.
                DataGridViewRow selectedRow = dbSucursal.SelectedRows[0];

                // Establece el texto del botón "Crear" como "Modificar".
                this.btnCrear.Text = "Modificar";

                // Obtiene la entidad de sucursal asociada a la fila seleccionada.
                BLL.BLL.Entidades.Sucursal_Ent sucursalSeleccionada = (BLL.BLL.Entidades.Sucursal_Ent)selectedRow.DataBoundItem;

                // Llena los campos del formulario con los datos de la sucursal seleccionada.
                this.txtb_Nombre.Text = sucursalSeleccionada.Nombre;
                this.txtb_Altura.Text = sucursalSeleccionada.Altura;
                this.txtb_Calle.Text = sucursalSeleccionada.Calle;
                this.txtb_codPostal.Text = sucursalSeleccionada.Codigo_Postal;

               
                var localidadLocalidad = listaLocalidad.Where(x => x.Partido == sucursalSeleccionada.Localidad.Partido).ToList();
                var partidosLoc = listaPartido.Where(x => x.id_Partido == sucursalSeleccionada.Localidad.Partido).ToList();
                var partidosLocalidad = listaPartido.Where(x => x.Provincia == partidosLoc.First().Provincia).ToList();
                        

                cb_Provincia.DataSource = listaProvincia;
                cb_Provincia.ValueMember = "id_provincia";
                cb_Provincia.SelectedValue = partidosLoc.First().Provincia;
                cb_Partido.DataSource = partidosLocalidad;
                cb_Partido.ValueMember = "id_Partido";
                cb_Partido.SelectedValue = sucursalSeleccionada.Localidad.Partido;
                cb_Localidad.DataSource = localidadLocalidad;
                cb_Localidad.DisplayMember = "Nombre_Localidad";
                cb_Localidad.ValueMember = "id_Localidad";
                cb_Localidad.SelectedValue = sucursalSeleccionada.Localidad.id_Localidad; 

                // Verifica el estado de la sucursal y marca la casilla de verificación si está habilitada.
                if (sucursalSeleccionada.Estado == 1)
                {
                    this.checkBox1.Checked = true;
                }
            }
            else
            {
                // Si no hay una fila seleccionada, establece el texto del botón "Crear" como "Crear".
                this.btnCrear.Text = "Crear";
            }

            // Asocia los eventos SelectedIndexChanged a los ComboBoxes.
            cb_Provincia.SelectedIndexChanged += cbProvincia_SelectedIndexChanged;
            cb_Partido.SelectedIndexChanged += cbPartido_SelectedIndexChanged;
        }

        /// <summary>
        /// Maneja el evento CellFormatting del DataGridView para personalizar la presentación de celdas.
        /// </summary>
        /// <param name="sender">El objeto que desencadenó el evento.</param>
        /// <param name="e">Los datos del evento.</param>
        private void dbSucursal_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            // Verifica si la columna actual es la columna "Estado"
            if (dbSucursal.Columns[e.ColumnIndex].Name == "Estado")
            {
                // Convierte el valor numérico a texto indicando si está "Habilitado" o "Deshabilitado"
                if (e.Value != null)
                {
                    int valor = Convert.ToInt32(e.Value);
                    e.Value = (valor == 1) ? "Habilitado" : "Deshabilitado";
                    e.FormattingApplied = true; // Indica que se ha aplicado el formato.
                }
            }

            // Verifica si la columna actual es la columna "Localidad" y si el valor no es nulo.
            if (dbSucursal.Columns[e.ColumnIndex].Name == "Localidad" && e.Value != null)
            {
                // Convierte el valor a un objeto Localidad_Ent
                BLL.BLL.Entidades.Localidad_Ent loca = (BLL.BLL.Entidades.Localidad_Ent)e.Value;

                // Muestra el Nombre_Localidad en lugar de la representación predeterminada del objeto
                e.Value = loca.Nombre_Localidad;
                e.FormattingApplied = true; // Indica que se ha aplicado el formato.
            }
        }

        /// <summary>
        /// Maneja el evento de clic en el botón "Crear".
        /// Crea una nueva sucursal o modifica una existente según la selección en el DataGridView.
        /// </summary>
        /// <param name="sender">El objeto que desencadenó el evento.</param>
        /// <param name="e">Los datos del evento.</param>
        private void btnCrear_Click(object sender, EventArgs e)
        {
            // Verifica si hay alguna fila seleccionada en el DataGridView.
            if (dbSucursal.SelectedRows.Count > 0)
            {
                // Obtiene la fila seleccionada.
                DataGridViewRow selectedRow = dbSucursal.SelectedRows[0];

                // Obtiene la entidad de sucursal asociada a la fila seleccionada.
                BLL.BLL.Clases.Sucursal_BLL sucur = new BLL.BLL.Clases.Sucursal_BLL();
                BLL.BLL.Entidades.Sucursal_Ent sucursalSeleccionada = (BLL.BLL.Entidades.Sucursal_Ent)selectedRow.DataBoundItem;

                // Crea una nueva entidad de sucursal con los datos del formulario.
                BLL.BLL.Entidades.Sucursal_Ent suc = new BLL.BLL.Entidades.Sucursal_Ent();
                suc.ID_Sucursal = sucursalSeleccionada.ID_Sucursal;
                suc.Nombre = txtb_Nombre.Text;
                suc.Calle = txtb_Calle.Text;
                suc.Altura = txtb_Altura.Text;

                suc.Codigo_Postal = txtb_codPostal.Text;
                suc.Localidad = (BLL.BLL.Entidades.Localidad_Ent)cb_Localidad.SelectedItem;

                // Establece el estado de la sucursal según la casilla de verificación.
                suc.Estado = checkBox1.Checked ? 1 : 0;

                // Guarda la sucursal modificada en la base de datos.
                sucur.Guardar(suc);
            }
            else
            {
                // En caso de que no haya una fila seleccionada, crea una nueva entidad de sucursal.
                BLL.BLL.Clases.Sucursal_BLL sucur = new BLL.BLL.Clases.Sucursal_BLL();
                BLL.BLL.Entidades.Sucursal_Ent suc = new BLL.BLL.Entidades.Sucursal_Ent();
                suc.ID_Sucursal = 0;
                suc.Nombre = txtb_Nombre.Text;
                suc.Calle = txtb_Calle.Text;
                suc.Altura = txtb_Altura.Text;
                suc.Codigo_Postal = txtb_codPostal.Text;
                suc.Localidad = (BLL.BLL.Entidades.Localidad_Ent)cb_Localidad.SelectedItem;

                // Establece el estado de la sucursal según la casilla de verificación.
                suc.Estado = checkBox1.Checked ? 1 : 0;

                // Guarda la nueva sucursal en la base de datos.
                sucur.Guardar(suc);
            }

            // Limpia la selección y actualiza los ComboBoxes.
            limpiarSeleccion();
            cb_Provincia.SelectedIndexChanged += cbProvincia_SelectedIndexChanged;
            cb_Partido.SelectedIndexChanged += cbPartido_SelectedIndexChanged;
        }

        /// <summary>
        /// Limpia la selección actual y restablece los campos del formulario a su estado inicial.
        /// </summary>
        private void limpiarSeleccion()
        {
            // Limpiar la selección en el DataGridView.
            dbSucursal.ClearSelection();

            // Limpiar los campos de entrada de texto.
            this.txtb_Nombre.Clear();
            this.txtb_Altura.Clear();
            this.txtb_Calle.Clear();
            this.txtb_codPostal.Clear();

            // Desmarcar la casilla de verificación.
            this.checkBox1.Checked = false;

            // Restablecer la selección en el ComboBox de Provincia.
            cb_Provincia.SelectedIndex = 0;

            // Recargar la lista de sucursales en el DataGridView.
            BLL.BLL.Clases.Sucursal_BLL sucur = new BLL.BLL.Clases.Sucursal_BLL();
            List<BLL.BLL.Entidades.Sucursal_Ent> lista = sucur.Traer();
            dbSucursal.DataSource = lista;

            // Ocultar la columna ID_Sucursal en el DataGridView.
            dbSucursal.Columns["ID_Sucursal"].Visible = false;

            // Actualizar la visualización del DataGridView.
            dbSucursal.Refresh();

            // Limpiar la selección nuevamente en el DataGridView.
            dbSucursal.ClearSelection();
        }

        /// <summary>
        /// Maneja el evento de clic en el botón "Cerrar".
        /// Cierra el formulario actual.
        /// </summary>
        /// <param name="sender">El objeto que desencadenó el evento.</param>
        /// <param name="e">Los datos del evento.</param>
        private void button3_Click(object sender, EventArgs e)
        {
            // Cierra el formulario actual.
            this.Close();
        }
        /// <summary>
        /// Maneja el evento de clic en el botón "Limpiar".
        /// Limpia la selección actual y restablece los campos del formulario a su estado inicial.
        /// </summary>
        /// <param name="sender">El objeto que desencadenó el evento.</param>
        /// <param name="e">Los datos del evento.</param>
        private void btn_Limpiar_Click(object sender, EventArgs e)
        {
            // Llama al método limpiarSeleccion para limpiar la selección actual y restablecer los campos.
            limpiarSeleccion();
        }

        private void Gestion_Sucursales_Load(object sender, EventArgs e)
        {
            this.Dock = DockStyle.Fill;
        }
    }
}

