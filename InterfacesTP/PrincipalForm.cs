using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using System.IO;

using System.Diagnostics;
using System.Reflection.Emit;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;


namespace InterfacesTP
{
    public partial class PrincipalForm : Form
    {
        // Variable para controlar la visibilidad del panel de opciones de usuarios
        bool panelUsuariosV = false;
        private Form formularioAbierto;
        private BLL.BLL.Entidades.Usuario_Ent usr;

        // Constructor de la clase PrincipalForm
        public PrincipalForm(BLL.BLL.Entidades.Usuario_Ent usuario)
        {
            formularioAbierto = null;
            InitializeComponent();
            usr = usuario;

           
            switch (usr.Rol.id_rol)
            {
                // Caso 1: Si numero es igual a 1 significa que inicio sistema un ADMINISTRADOR
                case 1:
                    
                    pnlDesplegable.Visible = false;
                    break;

                // Caso 2:  Si numero es igual a 2 significa que inicio sistema un OPERADOR
                case 2:
                    // Oculta botones usuario
                    btnUsuarios.Hide();
                    button4.Hide();
                    pictureBox7.Hide();
                    pictureBox6.Hide();
                    panel.Hide();
                    panel44.Hide();
                    paneol.Hide();
                    //Oculta Bitacora
                    pictureBox8.Hide();
                    panel12.Hide();
                   
                  
                    break;

                // Caso 3:  Si numero es igual a 2 significa que inicio sistema un OBSERVADOR
                case 3:
                    // Oculta botones usuario
                    btnUsuarios.Hide();
                    button4.Hide();
                    pictureBox7.Hide();
                    pictureBox6.Hide();
                    panel.Hide();
                    panel44.Hide();
                    paneol.Hide();
                    
                    //Oculta Bitacora
                    pictureBox8.Hide();
                    panel12.Hide();
                    button3.Hide();
                    //Oculta Sucursales
                    pictureBox9.Hide();
                    panel13.Hide();
                    //Oculta Proveedores
                    panel15.Hide();
                    pictureBox10.Hide();
                    button5.Hide();
                    break;

                // Caso 4:  Si numero es igual a 2 significa que inicio sistema un TRANSPORTISTA
                case 4:
                    // Oculta botones usuario
                    btnUsuarios.Hide();
                    button4.Hide();
                    pictureBox7.Hide();
                    pictureBox6.Hide();
                    panel.Hide();
                    panel44.Hide();
                    paneol.Hide();
                    //Oculta Bitacora
                    pictureBox8.Hide();
                    panel12.Hide();
                    button3.Hide();
                    //Oculta Sucursales
                    pictureBox9.Hide();
                    panel13.Hide();
                    //Oculta Proveedores
                    panel15.Hide();
                    pictureBox10.Hide();
                    button5.Hide();
                    //Oculta Ordenes
                    button1.Hide();
                    pictureBox3.Hide();
                    panel7.Hide();
                    break;

            }


        }

        private void PrincipalForm_Load(object sender, EventArgs e)
        {
            txtBitacora.Visible = false;
        }
        private void FormularioCerrado(object sender, FormClosedEventArgs e)
        {
            formularioAbierto = null;
        }
       

        private void AbrirFormulario(Form nuevoFormulario)
        {
            if (formularioAbierto != null && formularioAbierto.GetType() == nuevoFormulario.GetType())
            {
                // Si el formulario abierto es del mismo tipo que el nuevo formulario,
                // no hacemos nada o mostramos un mensaje, según tu preferencia.
                MessageBox.Show("El formulario ya está abierto", "Información", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                // Cerrar el formulario abierto si existe
                if (formularioAbierto != null)
                {
                    formularioAbierto.Close();
                    formularioAbierto = null;
                }

                // Abrir el nuevo formulario
                formularioAbierto = nuevoFormulario;
                formularioAbierto.FormClosed += FormularioCerrado;
                formularioAbierto.MdiParent = this;
                formularioAbierto.Show();
                panelCentral.Visible = false;
            }
        }


        // Maneja el clic en el botón de usuarios para mostrar/ocultar el panel de opciones de usuarios
        private void btnUsuarios_Click(object sender, EventArgs e)
        {
            // CÓDIGO DE DISEÑO
            if (panelUsuariosV == false)
            {
                panelUsuariosV = true;
                pnlDesplegable.Visible = true;
                this.btnUsuarios.BackColor = Color.FromArgb(157, 179, 197);
            }
            else
            {
                panelUsuariosV = false;
                pnlDesplegable.Visible = false;
                this.btnUsuarios.BackColor = Color.FromArgb(175, 200, 219);
            }
        }

        // Maneja el clic en el botón de roles para abrir el formulario de gestión de roles
        private void btnRoles_Click(object sender, EventArgs e)
        {
            AbrirFormulario(new UI_GestionRol());
                       

            
        }

        // Maneja el clic en el botón de gestión de usuarios para abrir el formulario de lista de usuarios
        private void btnGestiona_Click(object sender, EventArgs e)
        {
            AbrirFormulario(new UsuariosLista());
        }

              

        // Maneja el clic en el botón de gestionar órdenes de pedido para abrir el formulario correspondiente
        private void button1_Click(object sender, EventArgs e)
        {
            AbrirFormulario(new UI_GestionOrdenPedido(usr));
        }

        private void button3_Click(object sender, EventArgs e)
        {
            AbrirFormulario(new Gestion_Sucursales());
        }

        private void button5_Click(object sender, EventArgs e)
        {
            AbrirFormulario(new Gestion_Proveedor());
        }

        private void button4_Click(object sender, EventArgs e)
        {
            if (formularioAbierto != null)
            {
                formularioAbierto.Close();
                formularioAbierto = null;
            }

           string rutaArchivo = "bitacora.txt";

            try
            {
                // Lee el contenido del archivo
                string contenidoArchivo = File.ReadAllText(rutaArchivo);

                // Asigna el contenido al Text del Label

                txtBitacora.Visible = true;
                txtBitacora.Text = contenidoArchivo;
                txtBitacora.ScrollBars = ScrollBars.Vertical;
                txtBitacora.Font = new System.Drawing.Font(txtBitacora.Font.FontFamily, 12);

            }
            catch (Exception ex)
            {
                // Maneja las excepciones, por ejemplo, si el archivo no existe
                MessageBox.Show("Error: " + ex.Message);
            }

            panelCentral.BackgroundImage = null;
            panelCentral.Visible = true;
        }




        #region CODIGO DE DISEÑO

        // Maneja el clic en el botón cerrar para cerrar la aplicación
        private void lblCerrar_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        // Cambia el color de fondo del botón cerrar al pasar el ratón sobre él
        private void lblCerrar_MouseEnter(object sender, EventArgs e)
        {
            this.lblCerrar.BackColor = Color.Red;
        }

        // Restaura el color de fondo del botón cerrar al quitar el ratón de él
        private void lblCerrar_MouseLeave(object sender, EventArgs e)
        {
            this.lblCerrar.BackColor = Color.Transparent;
        }

        // Maneja el clic en el botón minimizar para minimizar el formulario
        private void lblMinimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        // Restaura el color de fondo del botón minimizar al quitar el ratón de él
        private void lblMinimizar_MouseLeave(object sender, EventArgs e)
        {
            this.lblMinimizar.BackColor = Color.Transparent;
        }

        // Cambia el color de fondo del botón minimizar al pasar el ratón sobre él
        private void lblMinimizar_MouseEnter(object sender, EventArgs e)
        {
            this.lblMinimizar.BackColor = Color.LightGray;
        }

        // Maneja el movimiento del formulario al arrastrar el panel de la barra de título
        bool verificador = false;
        int posX, posY;

        private void panelBarraTitulo_MouseUp(object sender, MouseEventArgs e)
        {
            verificador = false;
        }

        private void panelBarraTitulo_MouseMove(object sender, MouseEventArgs e)
        {
            if (verificador == true)
                this.SetDesktopLocation(MousePosition.X - posX, MousePosition.Y - posY);
        }

        

        // Inicia el arrastre del formulario al mantener presionado el botón izquierdo del ratón en la barra de título
        private void panelBarraTitulo_MouseDown(object sender, MouseEventArgs e)
        {
            verificador = true;
            posX = e.X;
            posY = e.Y;
        }

    #endregion
    }


}