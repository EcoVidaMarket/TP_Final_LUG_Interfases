
using System;
using System.Security.Claims;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Collections;
using System.Net;

namespace BLL
{
    namespace BLL.Clases
    {
        // Clase que maneja la lógica de negocio para la entidad Usuario
        public class Usuario_BLL
        {
            // Método para guardar un usuario en la base de datos
            public int Guardar(BLL.Entidades.Usuario_Ent usr)
            {
                int errores = 1;
                try
                {
                    // Instancia del mapeador para la entidad Usuario
                    BLL.Map.Usuario_map map = new Map.Usuario_map();
                    // Llama al método guardar del mapeador para almacenar el usuario en la base de datos
                    int entidad = map.guardar(usr);
                    map = null; // Liberar recursos
                }
                catch (Exception ex)
                {
                    errores = -1; // Manejo de errores: si hay una excepción, se establece errores a -1
                }

                return errores; // Retorna el estado de la operación (éxito o error)
            }

            // Método para obtener una lista de objetos Usuario_Ent desde la base de datos
            public List<BLL.Entidades.Usuario_Ent> Traer()
            {
                // Instancia del mapeador para la entidad Usuario
                BLL.Map.Usuario_map map = new Map.Usuario_map();
                // Llama al método Traer del mapeador para obtener la lista de usuarios
                List<BLL.Entidades.Usuario_Ent> lista_entidad = map.Traer();
                map = null; // Liberar recursos
                return lista_entidad; // Retorna la lista de usuarios recuperada de la base de datos
            }

            // Método para obtener un objeto Usuario_Ent por su ID o DNI desde la base de datos
            public BLL.Entidades.Usuario_Ent TraerID_DNI(int variable, int funcion)
            {
                // Instancia del mapeador para la entidad Usuario
                BLL.Map.Usuario_map map = new Map.Usuario_map();

                // Utiliza una estructura switch para determinar la función a ejecutar
                switch (funcion)
                {
                    // Caso 1: Obtener usuario por ID
                    case 1:
                        BLL.Entidades.Usuario_Ent entidad = map.Traer(variable, 1);
                        map = null; // Liberar recursos
                        return entidad; // Retorna el usuario obtenido por ID

                    // Caso 2: Obtener usuario por DNI
                    case 2:
                        BLL.Entidades.Usuario_Ent entidad_dos = map.Traer(variable, 2);
                        map = null; // Liberar recursos
                        return entidad_dos; // Retorna el usuario obtenido por DNI

                    // En caso predeterminado, devuelve un objeto Usuario_Ent vacío
                    default:
                        BLL.Entidades.Usuario_Ent entidad_tres = new BLL.Entidades.Usuario_Ent();
                        return entidad_tres;
                }
            }

            // Método para obtener un objeto Usuario_Ent por su ID desde la base de datos
            public BLL.Entidades.Usuario_Ent TraerID(int variable)
            {
                // Instancia del mapeador para la entidad Usuario
                BLL.Map.Usuario_map map = new Map.Usuario_map();
                // Llama al método Traer del mapeador para obtener un usuario por ID
                BLL.Entidades.Usuario_Ent entidad = map.Traer(variable, 1);
                map = null; // Liberar recursos
                return entidad; // Retorna el usuario obtenido por ID
            }

            // Método para obtener un objeto Usuario_Ent por su Apellido desde la base de datos
            public BLL.Entidades.Usuario_Ent TraerUnoPorApellido(string Apellido)
            {
                // Instancia del mapeador para la entidad Usuario
                BLL.Map.Usuario_map map = new Map.Usuario_map();
                // Llama al método Traer del mapeador para obtener un usuario por Apellido
                BLL.Entidades.Usuario_Ent entidad = map.Traer(Apellido, 2);
                map = null; // Liberar recursos
                return entidad; // Retorna el usuario obtenido por Apellido
            }

            // Método para obtener un objeto Usuario_Ent por su Email desde la base de datos
            public BLL.Entidades.Usuario_Ent TraerUnoPorEmail(string Email)
            {
                // Instancia del mapeador para la entidad Usuario
                BLL.Map.Usuario_map map = new Map.Usuario_map();
                // Llama al método Traer del mapeador para obtener un usuario por Email
                BLL.Entidades.Usuario_Ent entidad = map.Traer(Email, 1);
                map = null; // Liberar recursos
                return entidad; // Retorna el usuario obtenido por Email
            }

            // Método para obtener un objeto Usuario_Ent por su DNI desde la base de datos
            public BLL.Entidades.Usuario_Ent TraerUnoPorDNI(int DNI)
            {
                // Instancia del mapeador para la entidad Usuario
                BLL.Map.Usuario_map map = new Map.Usuario_map();
                // Llama al método Traer del mapeador para obtener un usuario por DNI
                BLL.Entidades.Usuario_Ent entidad = map.Traer(DNI, 2);
                map = null; // Liberar recursos
                return entidad; // Retorna el usuario obtenido por DNI
            }

            // Método para obtener un objeto Usuario_Ent por su Nombre de Usuario desde la base de datos
            public BLL.Entidades.Usuario_Ent TraerUnoPorUsuario(string Nombre_Usuario)
            {
                // Instancia del mapeador para la entidad Usuario
                BLL.Map.Usuario_map map = new Map.Usuario_map();
                // Llama al método Traer del mapeador para obtener un usuario por Nombre de Usuario
                BLL.Entidades.Usuario_Ent entidad = map.Traer(Nombre_Usuario, 2);
                map = null; // Liberar recursos
                return entidad; // Retorna el usuario obtenido por Nombre de Usuario
            }
        }
    }

    namespace BLL.Entidades
    {
        // Clase que representa la entidad Usuario
        public class Usuario_Ent
        {
            // Propiedad que representa el identificador único del usuario
            public int ID { get; set; }

            // Propiedad que representa el nombre del usuario
            public string Nombre { get; set; }

            // Propiedad que representa el apellido del usuario
            public string Apellido { get; set; }

            // Propiedad que representa el número de identificación del usuario (DNI)
            public int DNI { get; set; }

            // Propiedad que representa el correo electrónico del usuario
            public string Email { get; set; }

            // Propiedad que representa el nombre de usuario del usuario
            public string Nombre_Usuario { get; set; }

            // Propiedad que representa la contraseña del usuario
            public string Contraseña { get; set; }

            // Propiedad que representa el rol asociado al usuario
            public BLL.Entidades.Rol_Ent Rol { get; set; }

            // Propiedad que representa el estado del usuario (activo, inactivo, etc.)
            public int Estado { get; set; }
        }
    }

    namespace BLL.Map
    {
        // Clase que maneja la interacción entre la capa de negocios (BLL) y la capa de acceso a datos (DAL) para la entidad Usuario
        class Usuario_map
        {
            // Método que devuelve una lista de todos los usuarios en la base de datos
            public List<BLL.Entidades.Usuario_Ent> Traer()
            {
                // Se crea una instancia de la clase sqlServer que maneja la conexión y ejecución de consultas SQL
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                // Se abre una conexión a la base de datos
                SqlConnection ocnn = sqlServer.abrir_conexion();
                // Lista que almacenará los usuarios recuperados de la base de datos
                List<BLL.Entidades.Usuario_Ent> Lista = new List<Entidades.Usuario_Ent>();
                // DataTable para almacenar los resultados de la consulta SQL
                DataTable dt = new DataTable();
                // Comando SQL que llama a un procedimiento almacenado para obtener todos los usuarios
                SqlCommand ocmd = new SqlCommand("Tabla_Usuarios_Traer_Todo", ocnn);
                ocmd.CommandType = CommandType.StoredProcedure;
                // Se ejecuta la consulta y se obtiene el resultado en el DataTable
                dt = sqlServer.ejecutarSQL_DS(ocmd);
                // Se convierte el DataTable a una lista de usuarios
                Lista = castDstoEnt(dt);
                // Se cierra la conexión a la base de datos
                sqlServer.cerrar_conexion(ocnn);
                // Se devuelve la lista de usuarios
                return Lista;
            }

            // Método que devuelve un usuario específico según el ID o DNI y la función de búsqueda
            public BLL.Entidades.Usuario_Ent Traer(int buscar_int, int funcion)
            {
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                SqlConnection ocnn = sqlServer.abrir_conexion();
                List<BLL.Entidades.Usuario_Ent> Lista = new List<Entidades.Usuario_Ent>();
                BLL.Entidades.Usuario_Ent temp = new Entidades.Usuario_Ent();
                DataTable dt = new DataTable();
                SqlCommand ocmd = new SqlCommand();
                SqlParameter p1 = new SqlParameter();

                // Switch para determinar la función de búsqueda
                switch (funcion)
                {
                    // Funcion 1 es para cuando se busca por ID
                    case 1:
                        ocmd.CommandText = "Tabla_Usuarios_TraerPorID";
                        p1.ParameterName = "ID";
                        break;
                    // Función 2 es para cuando se busca por DNI
                    case 2:
                        ocmd.CommandText = "Tabla_Usuarios_TraerPorDNI";
                        p1.ParameterName = "DNI";
                        break;
                    default:
                        temp = null;
                        return temp;
                }

                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                p1.Value = buscar_int.ToString();
                p1.DbType = DbType.String;
                ocmd.Parameters.Add(p1);
                dt = sqlServer.ejecutarSQL_DS(ocmd);
                Lista = castDstoEnt(dt);
                sqlServer.cerrar_conexion(ocnn);

                // Si se encuentra al menos un usuario, se devuelve el primero
                if (Lista.Count > 0)
                {
                    temp = Lista[0];
                }
                else
                {
                    temp = null;
                }

                return temp;
            }

            // Método que devuelve un usuario específico según el dato_string y la función de búsqueda
            public BLL.Entidades.Usuario_Ent Traer(string dato_string, int funcion)
            {
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                SqlConnection ocnn = sqlServer.abrir_conexion();
                List<BLL.Entidades.Usuario_Ent> Lista = new List<Entidades.Usuario_Ent>();
                BLL.Entidades.Usuario_Ent temp = new Entidades.Usuario_Ent();
                DataTable dt = new DataTable();
                SqlCommand ocmd = new SqlCommand();
                SqlParameter p1 = new SqlParameter();

                // Switch para determinar la función de búsqueda
                switch (funcion)
                {
                    // Funcion 1 es para cuando se busca por Email
                    case 1:
                        ocmd.CommandText = "Tabla_Usuarios_TraerPorMail";
                        p1.ParameterName = "Mail";
                        break;
                    // Función 2 es para cuando se busca por Nombre de Usuario
                    case 2:
                        ocmd.CommandText = "Tabla_Usuarios_TraerPorUsuario";
                        p1.ParameterName = "Usuario";
                        break;
                    // Función 3 es para cuando se busca por Apellido
                    case 3:
                        ocmd.CommandText = "Tabla_Usuarios_TraerPorApellido";
                        p1.ParameterName = "Apellido";
                        break;
                    default:
                        temp = null;
                        return temp;
                }

                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                p1.Value = dato_string;
                p1.DbType = DbType.String;
                ocmd.Parameters.Add(p1);
                dt = sqlServer.ejecutarSQL_DS(ocmd);
                Lista = castDstoEnt(dt);
                sqlServer.cerrar_conexion(ocnn);

                // Si se encuentra al menos un usuario, se devuelve el primero
                if (Lista.Count > 0)
                {
                    temp = Lista[0];
                }
                else
                {
                    temp = null;
                }

                return temp;
            }

            // Método privado para convertir un DataTable a una lista de usuarios
            private List<BLL.Entidades.Usuario_Ent> castDstoEnt(DataTable ds)
            {
                // Lista que almacenará los usuarios a ser devueltos
                List<BLL.Entidades.Usuario_Ent> Lista_usuario = new List<BLL.Entidades.Usuario_Ent>();

                // Iteración a través de las filas del DataTable
                foreach (DataRow fila in ds.Rows)
                {
                    // Se crea un objeto Usuario_Ent para almacenar la información de cada fila
                    BLL.Entidades.Usuario_Ent usuario = new Entidades.Usuario_Ent();
                    // Se asignan los valores de las columnas del DataTable a las propiedades del objeto Usuario_Ent
                    usuario.ID = int.Parse(fila["ID"].ToString());
                    usuario.Apellido = fila["Apellido"].ToString();
                    usuario.Nombre = fila["Nombre"].ToString();
                    usuario.Email = fila["Mail"].ToString();
                    usuario.Nombre_Usuario = fila["Usuario"].ToString();
                    usuario.Contraseña = fila["Contraseña"].ToString();
                    usuario.DNI = int.Parse(fila["DNI"].ToString());
                    usuario.Rol = new Entidades.Rol_Ent();
                    usuario.Rol.id_rol = int.Parse(fila["Rol"].ToString());
                    usuario.Rol.Nombre_Rol = fila["Nombre_Rol"].ToString();
                    usuario.Estado = int.Parse(fila["Estado"].ToString());
                    // Se agrega el usuario a la lista
                    Lista_usuario.Add(usuario);
                }

                // Se devuelve la lista de usuarios
                return Lista_usuario;
            }

            // Método que guarda un nuevo usuario en la base de datos
            public int guardar(BLL.Entidades.Usuario_Ent usr)
            {
                // Se crea una instancia de la clase sqlServer que maneja la conexión y ejecución de consultas SQL
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                // Se abre una conexión a la base de datos
                SqlConnection ocnn = sqlServer.abrir_conexion();
                // Se crea un nuevo comando SQL que llama a un procedimiento almacenado para agregar un nuevo usuario
                SqlCommand ocmd = new SqlCommand("Tabla_Usuarios_agregar_usuario", ocnn);
                ocmd.CommandType = CommandType.StoredProcedure;

                // Se agregan los parámetros necesarios al comando, utilizando los valores del objeto Usuario_Ent
                ocmd.Parameters.Add("@id", SqlDbType.Int).Value = usr.ID;
                ocmd.Parameters.Add("@dni", SqlDbType.Int).Value = usr.DNI;
                ocmd.Parameters.Add("@apellido", SqlDbType.VarChar, 50).Value = usr.Apellido;
                ocmd.Parameters.Add("@nombre", SqlDbType.VarChar, 50).Value = usr.Nombre;
                ocmd.Parameters.Add("@mail", SqlDbType.VarChar, 180).Value = usr.Email;
                ocmd.Parameters.Add("@usuario_nombre", SqlDbType.VarChar, 180).Value = usr.Nombre_Usuario;
                ocmd.Parameters.Add("@password", SqlDbType.VarChar, 11).Value = usr.Contraseña;
                ocmd.Parameters.Add("@rol", SqlDbType.Int).Value = usr.Rol.id_rol;
                ocmd.Parameters.Add("@estado", SqlDbType.Int).Value = usr.Estado;

                // Se ejecuta el comando y se obtiene el resultado en un DataTable
                DataTable ds = sqlServer.ejecutarSQL_DS(ocmd);
                // Lista que almacenará el nuevo usuario, aunque en este caso solo será uno
                List<BLL.Entidades.Usuario_Ent> Lista = new List<Entidades.Usuario_Ent>();
                // Se convierte el DataTable a una lista de usuarios
                Lista = castDstoEnt(ds);
                // Se cierra la conexión a la base de datos
                sqlServer.cerrar_conexion(ocnn);

                // Se devuelve 0, ya que en este caso no se está utilizando para gestionar errores
                return 0;
            }
        }
    }
}

