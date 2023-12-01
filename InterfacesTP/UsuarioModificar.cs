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
    public partial class UsuarioModificar : Form
    {
        // Constructor de la clase UsuarioModificar
        public UsuarioModificar()
        {
            InitializeComponent();
        }

        // Instancia de la entidad de usuario que se modificará
        BLL.BLL.Entidades.Usuario_Ent usuariomodificar = new BLL.BLL.Entidades.Usuario_Ent();

        // Método para cargar datos en el formulario
        public void Cargar_datos(BLL.BLL.Entidades.Usuario_Ent usuariomodificaradato)
        {
            // Asigna la entidad de usuario proporcionada a la instancia local
            usuariomodificar = usuariomodificaradato;

            // Llena los campos del formulario con los datos del usuario
            this.txtb_Apellido.Text = usuariomodificar.Apellido;
            this.txtb_DNI.Text = usuariomodificar.DNI.ToString();
            this.txtb_Email.Text = usuariomodificar.Email;
            this.txtb_Nombre.Text = usuariomodificar.Nombre;
            this.txtb_User_Name.Text = usuariomodificar.Nombre_Usuario;
            this.txtb_password.Text = usuariomodificar.Contraseña;

            // Verifica el estado del usuario y establece el CheckBox correspondiente
            if (usuariomodificar.Estado == 1)
            {
                this.checkBox1.Checked = true;  // Usuario habilitado
            }
        }

        // Evento Click del botón "Guardar"
        private void button1_Click(object sender, EventArgs e)
        {
            // Crea una nueva instancia de la entidad de usuario a modificar
            BLL.BLL.Entidades.Usuario_Ent usuariomodificado = new BLL.BLL.Entidades.Usuario_Ent();
            usuariomodificado = usuariomodificar;

            // Actualiza los campos de la entidad con los valores del formulario
            usuariomodificado.Apellido = this.txtb_Apellido.Text;
            usuariomodificado.DNI = int.Parse(txtb_DNI.Text);
            usuariomodificado.Email = this.txtb_Email.Text;
            usuariomodificado.Nombre = this.txtb_Nombre.Text;
            usuariomodificado.Nombre_Usuario = this.txtb_User_Name.Text;
            usuariomodificado.Contraseña = this.txtb_password.Text;

            // Verifica el estado del CheckBox y asigna el estado correspondiente al usuario
            if (this.checkBox1.Checked)
            {
                usuariomodificado.Estado = 1;  // Usuario habilitado
            }
            else
            {
                usuariomodificado.Estado = 0;  // Usuario deshabilitado
            }

            // Instancia de la clase de lógica de negocios para usuarios
            BLL.BLL.Clases.Usuario_BLL usur = new BLL.BLL.Clases.Usuario_BLL();

            // Guarda la entidad de usuario modificada
            usur.Guardar(usuariomodificado);

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
