using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace InterfacesTP
{
    public partial class UI_GestionRol : Form
    {
        // Constructor de la clase UI_GestionRol
        public UI_GestionRol()
        {
            InitializeComponent();
            // Asigna el evento seleccion_rol al evento SelectionChanged del DataGridView
            //dbRol.SelectionChanged += seleccion_rol;

            btnCrear.Enabled = false;
        }

        // Variable para almacenar el usuario a modificar
        private BLL.BLL.Entidades.Usuario_Ent usuariomodificar = new BLL.BLL.Entidades.Usuario_Ent();

        // Método para cargar datos en el formulario
        public void Cargar_datos(BLL.BLL.Entidades.Usuario_Ent usuariomodificaradato)
        {
            // Obtiene la lista de roles
            BLL.BLL.Clases.Rol_BLL rol = new BLL.BLL.Clases.Rol_BLL();
            List<BLL.BLL.Entidades.Rol_Ent> lista = rol.Traer();

            // Configura las columnas del DataGridView
            dbRol.DataSource = lista;
            dbRol.Columns["id_rol"].Visible = false;
            dbRol.Refresh();

            // Almacena el usuario a modificar
            usuariomodificar = usuariomodificaradato;

            // Muestra información del usuario en el formulario
            this.lbl_Apellido.Text = usuariomodificar.Apellido;
            this.lbl_Nombre.Text = usuariomodificar.Nombre;
            this.lbl_Rol.Text = usuariomodificar.Rol.Nombre_Rol;
        }

        // Método que maneja el evento de hacer clic en el botón "Cerrar"
        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        // Método que maneja el evento de cambio de selección en el DataGridView
        private void seleccion_rol(object sender, EventArgs e)
        {
            if (dbRol.SelectedRows.Count > 0)
            {
                DataGridViewRow selectedRow = dbRol.SelectedRows[0];
                BLL.BLL.Entidades.Rol_Ent rolSeleccionado = (BLL.BLL.Entidades.Rol_Ent)selectedRow.DataBoundItem;

                // Verifica si el rol seleccionado es diferente al rol actual del usuario
                if (rolSeleccionado.id_rol != usuariomodificar.Rol.id_rol)
                {
                    // Cambia el estilo del Label a negrita
                    lbl_Rol.Font = new Font(lbl_Rol.Font, FontStyle.Bold);
                    lbl_Rol.Text = rolSeleccionado.Nombre_Rol;
                }
                else
                {
                    // Si no hay filas seleccionadas, vuelve al estilo de fuente predeterminado (no negrita)
                    lbl_Rol.Font = new Font(lbl_Rol.Font, FontStyle.Regular);
                    lbl_Rol.Text = rolSeleccionado.Nombre_Rol;
                }
            }
        }

        // Método que maneja el evento de hacer clic en el botón "Guardar"
        private void btnCrear_Click(object sender, EventArgs e)
        {
            if (dbRol.SelectedRows.Count > 0)
            {
                DataGridViewRow selectedRow = dbRol.SelectedRows[0];
                BLL.BLL.Entidades.Rol_Ent rolSeleccionado = (BLL.BLL.Entidades.Rol_Ent)selectedRow.DataBoundItem;

                // Verifica si el rol seleccionado es diferente al rol actual del usuario
                if (rolSeleccionado.id_rol != usuariomodificar.Rol.id_rol)
                {
                    // Crea una copia del usuario actual y asigna el nuevo rol
                    BLL.BLL.Entidades.Usuario_Ent usuariomodificado = new BLL.BLL.Entidades.Usuario_Ent();
                    usuariomodificado = usuariomodificar;
                    usuariomodificado.Rol = rolSeleccionado;

                    // Guarda la entidad del usuario con el nuevo rol
                    BLL.BLL.Clases.Usuario_BLL usur = new BLL.BLL.Clases.Usuario_BLL();
                    usur.Guardar(usuariomodificado);

                }
                else
                {
                    // Muestra un mensaje indicando que no se producirán cambios
                    MessageBox.Show("No se producirán cambios, el rol seleccionado ya está asignado.");
                }
            }
            else
            {
                // Muestra un mensaje indicando que se debe seleccionar un rol
                MessageBox.Show("Debe seleccionar un Rol para asignar.");
            }
        }

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

        public void LlenarGrilla(bool x = false, BLL.BLL.Entidades.Usuario_Ent usuariomodificaradato = null)
        {
            if (x == false)
            {
                // Obtiene la lista de roles
                BLL.BLL.Clases.Rol_BLL rol = new BLL.BLL.Clases.Rol_BLL();
                List<BLL.BLL.Entidades.Rol_Ent> lista = rol.Traer();

                // Configura las columnas del DataGridView
                dbRol.DataSource = lista;
                dbRol.Columns["id_rol"].Visible = false;
                dbRol.Refresh();
            }
            if(x == true)
            {
                // Obtiene la lista de roles
                BLL.BLL.Clases.Rol_BLL rol = new BLL.BLL.Clases.Rol_BLL();
                List<BLL.BLL.Entidades.Rol_Ent> lista = rol.Traer();

                // Configura las columnas del DataGridView
                dbRol.DataSource = lista;
                dbRol.Columns["id_rol"].Visible = false;
                dbRol.Refresh();

                // Almacena el usuario a modificar
                usuariomodificar = usuariomodificaradato;

                // Muestra información del usuario en el formulario
                this.lbl_Apellido.Text = usuariomodificar.Apellido;
                this.lbl_Nombre.Text = usuariomodificar.Nombre;
                this.lbl_Rol.Text = usuariomodificar.Rol.Nombre_Rol;
            }

        }
        private void UI_GestionRol_Load(object sender, EventArgs e)
        {
            this.Dock = DockStyle.Fill;
            LlenarGrilla();
            cargardatos();
        }

        private void dbUsuario_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridViewRow selectedRow = dbUsuario.SelectedRows[0];
            BLL.BLL.Entidades.Usuario_Ent usuarioSeleccionado = (BLL.BLL.Entidades.Usuario_Ent)selectedRow.DataBoundItem;
            LlenarGrilla(true,usuarioSeleccionado);

            btnCrear.Enabled = true; // Solo si hay un usuario seleccionado se habilita el boton
        }

        private void lblTitle_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }
    }
}