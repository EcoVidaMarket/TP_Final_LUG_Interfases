using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Linq;

namespace InterfacesTP
{
    // Clase parcial que representa el formulario de lista de usuarios
    public partial class UsuariosLista : Form
    {
        // Constructor de la clase UsuariosLista
        public UsuariosLista()
        {
            InitializeComponent();
            // Asocia el evento CellFormatting al método dbUsuario_CellFormatting
            dbUsuario.CellFormatting += dbUsuario_CellFormatting;
        }

        // Evento Load del formulario
        private void Usuario_Lista_Load(object sender, EventArgs e)
        {
            // Carga los datos en el formulario
            this.Dock = DockStyle.Fill;
            cargardatos();
        }

        // Evento Click del botón "Crear"
        private void btnCrear_Click(object sender, EventArgs e)
        {
            // Crea una instancia del formulario para crear usuarios
            UsuarioCrear formUsuario = new UsuarioCrear();
            formUsuario.ShowDialog();
            formUsuario.Focus();
            // Recarga los datos después de cerrar el formulario de creación
            cargardatos();
        }

        // Evento Click del botón "Editar"
        private void btnEditar_Click(object sender, EventArgs e)
        {
            // Verifica si hay alguna fila seleccionada en el DataGridView
            if (dbUsuario.SelectedRows.Count > 0)
            {
                // Obtiene la fila seleccionada
                DataGridViewRow selectedRow = dbUsuario.SelectedRows[0];
                // Obtiene la entidad de usuario asociada a la fila
                BLL.BLL.Entidades.Usuario_Ent usuarioSeleccionado = (BLL.BLL.Entidades.Usuario_Ent)selectedRow.DataBoundItem;
                // Crea una instancia del formulario para modificar usuarios
                UsuarioModificar formUsuario = new UsuarioModificar();
                // Carga los datos del usuario seleccionado en el formulario de modificación
                formUsuario.Cargar_datos(usuarioSeleccionado);
                formUsuario.ShowDialog();
                formUsuario.Focus();
                // Recarga los datos después de cerrar el formulario de modificación
                cargardatos();
            }
            else
            {
                // Muestra un mensaje si no hay usuario seleccionado para modificar
                MessageBox.Show("Debe seleccionar un usuario para modificar.");
            }
        }

        // Método para cargar datos en el DataGridView
        private void cargardatos()
        {
            // Instancia de la clase de lógica de negocios para usuarios
            BLL.BLL.Clases.Usuario_BLL usr = new BLL.BLL.Clases.Usuario_BLL();
            // Obtiene la lista de usuarios
            List<BLL.BLL.Entidades.Usuario_Ent> lista = usr.Traer();
            // Configura las columnas del DataGridView
            dbUsuario.DataSource = lista;
            dbUsuario.Columns["ID"].Visible = false;
            dbUsuario.Refresh();
        }

        // Evento CellFormatting del DataGridView
        private void dbUsuario_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            // Verifica si la columna actual es la columna "Estado"
            if (dbUsuario.Columns[e.ColumnIndex].Name == "Estado")
            {
                // Convierte el valor numérico a texto (Habilitado o Deshabilitado)
                if (e.Value != null)
                {
                    int valor = Convert.ToInt32(e.Value);
                    e.Value = (valor == 1) ? "Habilitado" : "Deshabilitado";
                    e.FormattingApplied = true;
                }
            }

            // Verifica si la columna actual es la columna "Rol"
            if (dbUsuario.Columns[e.ColumnIndex].Name == "Rol" && e.Value != null)
            {
                // Convierte el valor a un objeto Rol_Ent
                BLL.BLL.Entidades.Rol_Ent rol = (BLL.BLL.Entidades.Rol_Ent)e.Value;
                // Muestra el Nombre_rol en lugar de la representación predeterminada del objeto
                e.Value = rol.Nombre_Rol;
                e.FormattingApplied = true;
            }
        }

        // Evento Click del botón "Cerrar"
        private void button1_Click(object sender, EventArgs e)
        {
            // Cierra el formulario
            this.Close();
        }

        // Evento Click del botón "Gestión de Rol"
        private void btnRol_Click(object sender, EventArgs e)
        {
            // Verifica si hay alguna fila seleccionada en el DataGridView
            if (dbUsuario.SelectedRows.Count > 0)
            {
                // Obtiene la fila seleccionada
                DataGridViewRow selectedRow = dbUsuario.SelectedRows[0];
                // Obtiene la entidad de usuario asociada a la fila
                BLL.BLL.Entidades.Usuario_Ent usuarioSeleccionado = (BLL.BLL.Entidades.Usuario_Ent)selectedRow.DataBoundItem;
                // Crea una instancia del formulario de gestión de roles
                UI_GestionRol formRol = new UI_GestionRol();
                // Carga los datos del usuario seleccionado en el formulario de gestión de roles
                formRol.Cargar_datos(usuarioSeleccionado);
                formRol.ShowDialog();
                formRol.Focus();
                // Recarga los datos después de cerrar el formulario de gestión de roles
                cargardatos();
            }
            else
            {
                // Muestra un mensaje si no hay usuario seleccionado para gestionar el rol
                MessageBox.Show("Debe seleccionar un usuario para gestionar el rol.");
            }
        }



   
    }
}
