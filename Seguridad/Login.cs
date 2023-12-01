using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Seguridad
{
    // Clase encargada de gestionar la validación de usuarios durante el proceso de inicio de sesión
    public class Login
    {
        // Método para validar las credenciales de un usuario
        public bool validarUsuario(string nombreUsuario, string contraseña)
        {
            // Instancia de la clase de lógica de negocios para usuarios
            BLL.BLL.Clases.Usuario_BLL usuario = new BLL.BLL.Clases.Usuario_BLL();

            // Obtiene la entidad de usuario correspondiente al nombre de usuario proporcionado
            BLL.BLL.Entidades.Usuario_Ent usuario_entidad = usuario.TraerUnoPorUsuario(nombreUsuario);

            // Verifica si se encontró un usuario y si las credenciales coinciden
            if (usuario_entidad != null && nombreUsuario == usuario_entidad.Nombre_Usuario && contraseña == usuario_entidad.Contraseña)
            {
                // Las credenciales son válidas, retorna true
                return true;
            }
            else
            {
                // Las credenciales son inválidas, retorna false
                return false;
            }
        }
    }
}
