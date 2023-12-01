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
        // Clase que maneja la lógica de negocio para la entidad Sucursal
        public class Sucursal_BLL
        {
            // Método para guardar un objeto Sucursal_Ent en la base de datos
            public int Guardar(BLL.Entidades.Sucursal_Ent sucursal)
            {
                int errores = 1;
                try
                {
                    // Instancia del mapeador para la entidad Sucursal
                    BLL.Map.Sucursal_map map = new Map.Sucursal_map();
                    // Llama al método guardar del mapeador para almacenar la Sucursal
                    int entidad = map.guardar(sucursal);
                    map = null; // Liberar recursos
                }
                catch (Exception ex)
                {
                    // Si ocurre una excepción, se registra y se establece errores a -1
                    errores = -1;
                }

                return errores;
            }

            // Método para obtener una lista de objetos Sucursal_Ent desde la base de datos
            public List<BLL.Entidades.Sucursal_Ent> Traer()
            {
                // Instancia del mapeador para la entidad Sucursal
                BLL.Map.Sucursal_map map = new Map.Sucursal_map();
                // Llama al método Traer del mapeador para obtener la lista de sucursales
                List<BLL.Entidades.Sucursal_Ent> lista_entidad = map.Traer();
                map = null; // Liberar recursos
                return lista_entidad;
            }

            // Método para obtener un objeto Sucursal_Ent por su ID desde la base de datos
            public BLL.Entidades.Sucursal_Ent TraerID(int variable)
            {
                // Instancia del mapeador para la entidad Sucursal
                BLL.Map.Sucursal_map map = new Map.Sucursal_map();
                // Llama al método Traer del mapeador para obtener una sucursal por su ID
                BLL.Entidades.Sucursal_Ent entidad = map.Traer(variable);
                map = null; // Liberar recursos
                return entidad;
            }
        }
    }

    // Espacio de nombres para las entidades BLL
    namespace BLL.Entidades
    {
        // Clase que representa la entidad Sucursal
        public class Sucursal_Ent
        {
            // Propiedades de la entidad
            public int ID_Sucursal { get; set; }
            public string Nombre { get; set; }
            public BLL.Entidades.Localidad_Ent Localidad { get; set; }
            public string Calle { get; set; }
            public string Altura { get; set; }
            public string Codigo_Postal { get; set; }
            public int Estado { get; set; }
        }
    }

    // Espacio de nombres para los mapeadores BLL
    namespace BLL.Map
    {
        // Clase que realiza el mapeo entre la base de datos y la entidad Sucursal
        class Sucursal_map
        {
            // Método para obtener una lista de objetos Sucursal_Ent desde la base de datos
            public List<BLL.Entidades.Sucursal_Ent> Traer()
            {
                // Instancia del objeto de acceso a datos SQL Server
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                // Instancia de conexión a la base de datos
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion(); // Abrir conexión
                // Lista para almacenar las sucursales recuperadas de la base de datos
                List<BLL.Entidades.Sucursal_Ent> Lista = new List<Entidades.Sucursal_Ent>();
                // DataTable para almacenar los resultados de la ejecución del procedimiento almacenado
                DataTable dt = new DataTable();
                // Comando SQL para ejecutar el procedimiento almacenado que obtiene todas las sucursales
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandText = "Tabla_Sucursal_Traer_Todo";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                // Ejecutar el procedimiento almacenado y obtener los resultados en un DataTable
                dt = sqlServer.ejecutarSQL_DS(ocmd);
                // Realizar el mapeo de DataTable a List<Sucursal_Ent>
                Lista = castDstoEnt(dt);
                sqlServer.cerrar_conexion(ocnn); // Cerrar conexión

                return Lista;
            }

            // Método para obtener un objeto Sucursal_Ent por su ID desde la base de datos
            public BLL.Entidades.Sucursal_Ent Traer(int buscar_int)
            {
                // Instancia del objeto de acceso a datos SQL Server
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                // Instancia de conexión a la base de datos
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion(); // Abrir conexión
                // Lista para almacenar las sucursales recuperadas de la base de datos
                List<BLL.Entidades.Sucursal_Ent> Lista = new List<Entidades.Sucursal_Ent>();
                // Objeto Sucursal_Ent temporal
                BLL.Entidades.Sucursal_Ent temp = new Entidades.Sucursal_Ent();
                // DataTable para almacenar los resultados de la ejecución del procedimiento almacenado
                DataTable dt = new DataTable();
                // Comando SQL para ejecutar el procedimiento almacenado que obtiene una sucursal por su ID
                SqlCommand ocmd = new SqlCommand();
                // Parámetro para el ID de la sucursal
                SqlParameter p1 = new SqlParameter();
                ocmd.CommandText = "Tabla_Sucursal_TraerPorID";
                p1.ParameterName = "ID_Sucursal";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                p1.Value = buscar_int.ToString();
                p1.DbType = DbType.String;
                ocmd.Parameters.Add(p1);
                // Ejecutar el procedimiento almacenado y obtener los resultados en un DataTable
                dt = sqlServer.ejecutarSQL_DS(ocmd);
                // Realizar el mapeo de DataTable a List<Sucursal_Ent>
                Lista = castDstoEnt(dt);
                sqlServer.cerrar_conexion(ocnn); // Cerrar conexión

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

            // Método privado que realiza el mapeo entre un DataTable y una lista de entidades Sucursal_Ent
            private List<BLL.Entidades.Sucursal_Ent> castDstoEnt(DataTable ds)
            {
                // Lista para almacenar las sucursales mapeadas
                List<BLL.Entidades.Sucursal_Ent> Lista_Sucursal = new List<BLL.Entidades.Sucursal_Ent>();
                // Instancia del mapeador para la entidad Localidad
                BLL.Clases.Localidad_BLL loca = new Clases.Localidad_BLL();

                foreach (DataRow fila in ds.Rows)
                {
                    // Instancia de la entidad Sucursal
                    BLL.Entidades.Sucursal_Ent Sucursal = new Entidades.Sucursal_Ent();
                    // Asignar valores desde el DataTable a las propiedades de la entidad
                    Sucursal.ID_Sucursal = int.Parse(fila["ID_Sucursal"].ToString());
                    Sucursal.Nombre = fila["Nombre"].ToString();
                    // Obtener la Localidad utilizando el método TraerID del mapeador de Localidad
                    Sucursal.Localidad = loca.TraerID(int.Parse(fila["Localidad"].ToString()));
                    Sucursal.Calle = fila["Calle"].ToString();
                    Sucursal.Altura = fila["Altura"].ToString();
                    Sucursal.Codigo_Postal = fila["Codigo_Postal"].ToString();
                    Sucursal.Estado = int.Parse(fila["Estado"].ToString());
                    // Agregar la entidad mapeada a la lista
                    Lista_Sucursal.Add(Sucursal);
                }

                return Lista_Sucursal;
            }

            // Método para guardar un objeto Sucursal_Ent en la base de datos
            public int guardar(BLL.Entidades.Sucursal_Ent sucursal)
            {
                // Instancia del objeto de acceso a datos SQL Server
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                // Instancia de conexión a la base de datos
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion(); // Abrir conexión
                // Comando SQL para ejecutar el procedimiento almacenado que agrega una nueva sucursal
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandText = "Tabla_Sucursal_agregar_sucursal";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                // Configurar los parámetros del procedimiento almacenado
                ocmd.Parameters.Add("@ID", SqlDbType.Int);
                ocmd.Parameters["@ID"].Value = sucursal.ID_Sucursal;
                ocmd.Parameters.Add("@Nombre", SqlDbType.VarChar, 50);
                ocmd.Parameters["@Nombre"].Value = sucursal.Nombre;
                ocmd.Parameters.Add("@Localidad", SqlDbType.Int);
                ocmd.Parameters["@Localidad"].Value = sucursal.Localidad.id_Localidad;
                ocmd.Parameters.Add("@Calle", SqlDbType.VarChar, 180);
                ocmd.Parameters["@Calle"].Value = sucursal.Calle;
                ocmd.Parameters.Add("@Altura", SqlDbType.VarChar, 11);
                ocmd.Parameters["@Altura"].Value = sucursal.Altura;
                ocmd.Parameters.Add("@Codigo_Postal", SqlDbType.VarChar, 11);
                ocmd.Parameters["@Codigo_Postal"].Value = sucursal.Codigo_Postal;
                ocmd.Parameters.Add("@estado", SqlDbType.Int);
                ocmd.Parameters["@estado"].Value = sucursal.Estado;
                // Ejecutar el procedimiento almacenado y obtener los resultados en un DataTable
                DataTable ds = sqlServer.ejecutarSQL_DS(ocmd);
                // Lista para almacenar las sucursales recuperadas después de guardar
                List<BLL.Entidades.Sucursal_Ent> Lista = new List<Entidades.Sucursal_Ent>();
                // Realizar el mapeo de DataTable a List<Sucursal_Ent>
                Lista = castDstoEnt(ds);
                sqlServer.cerrar_conexion(ocnn); // Cerrar conexión

                return 0; // Retorna 0, puedes ajustar según la lógica que necesites
            }
        }
    }
}
