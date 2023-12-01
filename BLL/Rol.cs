using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    // Espacio de nombres para las clases específicas de BLL
    namespace BLL.Clases
    {
        // Clase que maneja la lógica de negocio para la entidad Rol
        public class Rol_BLL
        {
            // Método para guardar un objeto Rol_Ent en la base de datos
            public int Guardar(BLL.Entidades.Rol_Ent rol)
            {
                int errores = 1;
                try
                {
                    // Instancia del mapeador para la entidad Rol
                    BLL.Map.Rol_map map = new Map.Rol_map();
                    // Llama al método guardar del mapeador para almacenar el Rol
                    int entidad = map.guardar(rol);
                    map = null; // Liberar recursos
                }
                catch (Exception ex)
                {
                    // Si ocurre una excepción, se registra y se establece errores a -1
                    errores = -1;
                }
                return errores;
            }

            // Método para obtener una lista de objetos Rol_Ent desde la base de datos
            public List<BLL.Entidades.Rol_Ent> Traer()
            {
                // Instancia del mapeador para la entidad Rol
                BLL.Map.Rol_map map = new Map.Rol_map();
                // Llama al método Traer del mapeador para obtener la lista de roles
                List<BLL.Entidades.Rol_Ent> lista_entidad = map.Traer();
                map = null; // Liberar recursos
                return lista_entidad;
            }

            // Método para obtener un objeto Rol_Ent por su ID desde la base de datos
            public BLL.Entidades.Rol_Ent TraerID(int variable)
            {
                // Instancia del mapeador para la entidad Rol
                BLL.Map.Rol_map map = new Map.Rol_map();
                // Llama al método Traer del mapeador para obtener un rol por su ID
                BLL.Entidades.Rol_Ent entidad = map.Traer(variable);
                map = null; // Liberar recursos
                return entidad;
            }
        }
    }

    // Espacio de nombres para las entidades BLL
    namespace BLL.Entidades
    {
        // Clase que representa la entidad Rol
        public class Rol_Ent
        {
            // Propiedades de la entidad
            public int id_rol { get; set; }
            public string Nombre_Rol { get; set; }
        }
    }

    // Espacio de nombres para los mapeadores BLL
    namespace BLL.Map
    {
        // Clase que realiza el mapeo entre la base de datos y la entidad Rol
        public class Rol_map
        {
            // Método para obtener una lista de objetos Rol_Ent desde la base de datos
            public List<BLL.Entidades.Rol_Ent> Traer()
            {
                // Instancia del objeto de acceso a datos SQL Server
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                // Instancia de conexión a la base de datos
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion(); // Abrir conexión
                // Lista para almacenar los roles recuperados de la base de datos
                List<BLL.Entidades.Rol_Ent> Lista = new List<Entidades.Rol_Ent>();
                // DataTable para almacenar los resultados de la ejecución del procedimiento almacenado
                DataTable dt = new DataTable();
                // Comando SQL para ejecutar el procedimiento almacenado que obtiene todos los roles
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandText = "Tabla_Rol_Traer";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                // Ejecutar el procedimiento almacenado y obtener los resultados en un DataTable
                dt = sqlServer.ejecutarSQL_DS(ocmd);
                // Realizar el mapeo de DataTable a List<Rol_Ent>
                Lista = castDstoEnt(dt);
                sqlServer.cerrar_conexion(ocnn); // Cerrar conexión

                return Lista;
            }

            // Método para obtener un objeto Rol_Ent por su ID desde la base de datos
            public BLL.Entidades.Rol_Ent Traer(int buscar_int)
            {
                // Instancia del objeto de acceso a datos SQL Server
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                // Instancia de conexión a la base de datos
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion(); // Abrir conexión
                // Lista para almacenar los roles recuperados de la base de datos
                List<BLL.Entidades.Rol_Ent> Lista = new List<Entidades.Rol_Ent>();
                // Objeto Rol_Ent temporal para almacenar el rol recuperado por su ID
                BLL.Entidades.Rol_Ent temp = new Entidades.Rol_Ent();
                // DataTable para almacenar los resultados de la ejecución del procedimiento almacenado
                DataTable dt = new DataTable();
                // Comando SQL para ejecutar el procedimiento almacenado que obtiene un rol por su ID
                SqlCommand ocmd = new SqlCommand();
                // Parámetro para pasar el ID como entrada al procedimiento almacenado
                SqlParameter p1 = new SqlParameter();
                ocmd.CommandText = "Tabla_Rol_TraerPorID";
                p1.ParameterName = "ID_ROL";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                // Configurar el parámetro con el valor de la variable y el tipo de datos
                p1.Value = buscar_int.ToString();
                p1.DbType = DbType.String;
                ocmd.Parameters.Add(p1);
                // Ejecutar el procedimiento almacenado y obtener los resultados en un DataTable
                dt = sqlServer.ejecutarSQL_DS(ocmd);
                // Realizar el mapeo de DataTable a List<Rol_Ent>
                Lista = castDstoEnt(dt);
                sqlServer.cerrar_conexion(ocnn); // Cerrar conexión

                if (Lista.Count > 0)
                {
                    // Si la lista tiene elementos, asignar el primer elemento a temp
                    temp = Lista[0];
                }
                else
                {
                    // Si la lista está vacía, asignar null a temp
                    temp = null;
                }

                return temp;
            }

            // Método privado que realiza el mapeo entre un DataTable y una lista de entidades Rol_Ent
            private List<BLL.Entidades.Rol_Ent> castDstoEnt(DataTable ds)
            {
                // Lista para almacenar los roles mapeados desde el DataTable
                List<BLL.Entidades.Rol_Ent> Lista_Rol = new List<BLL.Entidades.Rol_Ent>();
                foreach (DataRow fila in ds.Rows)
                {
                    // Crear una nueva instancia de Rol_Ent y asignar los valores desde el DataTable
                    BLL.Entidades.Rol_Ent Rol = new Entidades.Rol_Ent();
                    Rol.id_rol = int.Parse(fila["ID_ROL"].ToString());
                    Rol.Nombre_Rol = fila["Nombre_Rol"].ToString();
                    // Agregar el rol a la lista
                    Lista_Rol.Add(Rol);
                }
                return Lista_Rol;
            }

            // Método para guardar un objeto Rol_Ent en la base de datos
            public int guardar(BLL.Entidades.Rol_Ent rol)
            {
                // Instancia del objeto de acceso a datos SQL Server
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                // Instancia de conexión a la base de datos
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion(); // Abrir conexión
                // Comando SQL para ejecutar el procedimiento almacenado que agrega un nuevo rol
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandText = "Tabla_Rol_agregar_Rol";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                // Configurar los parámetros del procedimiento almacenado
                ocmd.Parameters.Add("@id", SqlDbType.Int);
                ocmd.Parameters["@id"].Value = rol.id_rol;
                ocmd.Parameters.Add("@nombre", SqlDbType.VarChar, 50);
                ocmd.Parameters["@nombre"].Value = rol.Nombre_Rol;
                // Ejecutar el procedimiento almacenado y obtener los resultados en un DataTable
                DataTable ds = sqlServer.ejecutarSQL_DS(ocmd);
                // Lista para almacenar los roles recuperados después de guardar
                List<BLL.Entidades.Rol_Ent> Lista = new List<Entidades.Rol_Ent>();
                // Realizar el mapeo de DataTable a List<Rol_Ent>
                Lista = castDstoEnt(ds);
                sqlServer.cerrar_conexion(ocnn); // Cerrar conexión

                return 0; // Retorna 0, puedes ajustar según la lógica que necesites
            }
        }
    }
}