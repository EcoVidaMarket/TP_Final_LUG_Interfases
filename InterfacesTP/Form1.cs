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
    public partial class Form1 : Form
    {
        // Constructor de la clase Form1
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            //Indico que el programa debe estar atento al teclado 
            this.KeyPreview = true;
        }

        // Maneja el clic en el botón "Ingresar"
        private void btnIngresar_Click(object sender, EventArgs e)
        {
            // Instancia de la clase de seguridad para la autenticación
            Seguridad.Login login = new Seguridad.Login();

            // Valida el usuario utilizando el método de la clase de seguridad
            bool ok = login.validarUsuario(this.txtbUsuario.Text, this.txtbContraseña.Text);

            if (ok)
            {
                BLL.BLL.Clases.Usuario_BLL usr = new BLL.BLL.Clases.Usuario_BLL();
                BLL.BLL.Entidades.Usuario_Ent usuario = usr.TraerUnoPorUsuario(this.txtbUsuario.Text);
                // Si la autenticación es exitosa, muestra el formulario principal y oculta el formulario de inicio de sesión
                PrincipalForm principal = new PrincipalForm(usuario);
                this.Hide();
                principal.ShowDialog();
            }
            else
            {
                // Muestra un mensaje de error si la autenticación falla
                MessageBox.Show("Error de autenticación. Usuario o contraseña incorrectos.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        #region CODIGO DE DISEÑO

        // Código para minimizar el formulario
        private void lblMinimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        // Cambia el color de fondo del botón minimizar al pasar el ratón sobre él
        private void lblMinimizar_MouseEnter(object sender, EventArgs e)
        {
            this.lblMinimizar.BackColor = Color.LightGray;
        }

        // Restaura el color de fondo del botón minimizar al quitar el ratón de él
        private void lblMinimizar_MouseLeave(object sender, EventArgs e)
        {
            this.lblMinimizar.BackColor = Color.Transparent;
        }

        // Código para controlar el cierre del formulario (la cruz)
        private void lblCerrar_MouseEnter(object sender, EventArgs e)
        {
            this.lblCerrar.BackColor = Color.Red;
        }

        // Restaura el color de fondo del botón cerrar al quitar el ratón de él
        private void lblCerrar_MouseLeave(object sender, EventArgs e)
        {
            this.lblCerrar.BackColor = Color.Transparent;
        }

        // Cierra el formulario al hacer clic en la cruz
        private void lblCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }

        // Código para mover el formulario al arrastrar el panel de la barra de título
        bool verificador = false;
        int posX, posY;

        private void panel1_MouseUp(object sender, MouseEventArgs e)
        {
            verificador = false;
        }

        private void panel1_MouseMove(object sender, MouseEventArgs e)
        {
            if (verificador == true)
                this.SetDesktopLocation(MousePosition.X - posX, MousePosition.Y - posY);
        }

        

        private void Form1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)Keys.Enter)
            {
                btnIngresar_Click(null, null);  
                e.Handled = true;
            }
        }

        private void panel1_MouseDown(object sender, MouseEventArgs e)
        {
            verificador = true;
            posX = e.X;
            posY = e.Y;
        }

        #endregion
    }
}
