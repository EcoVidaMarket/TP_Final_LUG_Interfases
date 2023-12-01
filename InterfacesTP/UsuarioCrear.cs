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
    public partial class UsuarioCrear : Form
    {
        // Constructor de la clase UsuarioCrear
        public UsuarioCrear()
        {
            InitializeComponent();
        }

        // Evento Load del formulario UsuariosForm
        private void UsuariosForm_Load(object sender, EventArgs e)
        {
            // Establece el estilo de acoplamiento del formulario como Fill
            this.Dock = DockStyle.Fill;
        }

        // Evento Click del botón "Guardar"
        private void button1_Click(object sender, EventArgs e)
        {
            // Instancia de la clase de lógica de negocios para usuarios
            BLL.BLL.Clases.Usuario_BLL usur = new BLL.BLL.Clases.Usuario_BLL();

            // Creación de una entidad de usuario con los datos del formulario
            BLL.BLL.Entidades.Usuario_Ent usr = new BLL.BLL.Entidades.Usuario_Ent();
            usr.ID = 0;  // ID 0 indica un nuevo usuario
            usr.Nombre = txtb_Nombre.Text;
            usr.Apellido = txtb_Apellido.Text;
            usr.DNI = int.Parse(txtb_DNI.Text);
            usr.Email = txtb_Email.Text;
            usr.Nombre_Usuario = txtb_User_Name.Text;

            // Creación de una entidad de rol para asignar al usuario
            BLL.BLL.Entidades.Rol_Ent rolent = new BLL.BLL.Entidades.Rol_Ent();
            rolent.id_rol = 3;  // Asigna el rol correspondiente al nuevo usuario
            usr.Rol = rolent;

            usr.Contraseña = txtb_password.Text;

            // Verifica el estado del CheckBox y asigna el estado correspondiente al usuario
            if (checkBox1.Checked)
            {
                usr.Estado = 1;  // Usuario habilitado
            }
            else
            {
                usr.Estado = 0;  // Usuario deshabilitado
            }

            // Guarda la nueva entidad de usuario
            usur.Guardar(usr);

            // Cierra el formulario después de guardar
            this.Close();
        }

        // Evento Click del botón "Cancelar"
        private void button2_Click(object sender, EventArgs e)
        {
            // Cierra el formulario sin guardar cambios
            this.Close();
        }
    }
}
