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
        // Clase que maneja la lógica de negocio para la entidad TipoProducto
        public class TipoProducto_BLL
        {
            // Método para obtener una lista de objetos TipoProducto_Ent desde la base de datos
            public List<BLL.Entidades.TipoProducto_Ent> Traer()
            {
                // Instancia del mapeador para la entidad TipoProducto
                BLL.Map.TipoProducto_map map = new Map.TipoProducto_map();
                // Llama al método Traer del mapeador para obtener la lista de tipos de producto
                List<BLL.Entidades.TipoProducto_Ent> lista_entidad = map.Traer();
                map = null; // Liberar recursos
                return lista_entidad;
            }

            // Método para obtener un objeto TipoProducto_Ent por su ID desde la base de datos
            public BLL.Entidades.TipoProducto_Ent TraerID(int variable)
            {
                // Instancia del mapeador para la entidad TipoProducto
                BLL.Map.TipoProducto_map map = new Map.TipoProducto_map();
                // Llama al método Traer del mapeador para obtener un tipo de producto por su ID
                BLL.Entidades.TipoProducto_Ent entidad = map.Traer(variable);
                map = null; // Liberar recursos
                return entidad;
            }
        }
    }

    // Espacio de nombres para las entidades BLL
    namespace BLL.Entidades
    {
        // Clase que representa la entidad TipoProducto
        public class TipoProducto_Ent
        {
            // Propiedades de la entidad
            public int id_TipoProducto { get; set; }
            public string Nombre_Tipo { get; set; }
        }
    }

    // Espacio de nombres para los mapeadores BLL
    namespace BLL.Map
    {
        // Clase que realiza el mapeo entre la base de datos y la entidad TipoProducto
        public class TipoProducto_map
        {
            // Método para obtener una lista de objetos TipoProducto_Ent desde la base de datos
            public List<BLL.Entidades.TipoProducto_Ent> Traer()
            {
                // Instancia del objeto de acceso a datos SQL Server
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                // Instancia de conexión a la base de datos
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion(); // Abrir conexión
                // Lista para almacenar los tipos de productos recuperados de la base de datos
                List<BLL.Entidades.TipoProducto_Ent> Lista = new List<Entidades.TipoProducto_Ent>();
                // DataTable para almacenar los resultados de la ejecución del procedimiento almacenado
                DataTable dt = new DataTable();
                // Comando SQL para ejecutar el procedimiento almacenado que obtiene todos los tipos de producto
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandText = "Tabla_TipoProducto_Traer_Todo";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                // Ejecutar el procedimiento almacenado y obtener los resultados en un DataTable
                dt = sqlServer.ejecutarSQL_DS(ocmd);
                // Realizar el mapeo de DataTable a List<TipoProducto_Ent>
                Lista = castDstoEnt(dt);
                sqlServer.cerrar_conexion(ocnn); // Cerrar conexión

                return Lista;
            }

            // Método para obtener un objeto TipoProducto_Ent por su ID desde la base de datos
            public BLL.Entidades.TipoProducto_Ent Traer(int buscar_int)
            {
                // Instancia del objeto de acceso a datos SQL Server
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                // Instancia de conexión a la base de datos
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion(); // Abrir conexión
                // Lista para almacenar los tipos de productos recuperados de la base de datos
                List<BLL.Entidades.TipoProducto_Ent> Lista = new List<Entidades.TipoProducto_Ent>();
                // Objeto TipoProducto_Ent temporal
                BLL.Entidades.TipoProducto_Ent temp = new Entidades.TipoProducto_Ent();
                // DataTable para almacenar los resultados de la ejecución del procedimiento almacenado
                DataTable dt = new DataTable();
                // Comando SQL para ejecutar el procedimiento almacenado que obtiene un tipo de producto por su ID
                SqlCommand ocmd = new SqlCommand();
                // Parámetro para el ID del tipo de producto
                SqlParameter p1 = new SqlParameter();
                ocmd.CommandText = "Tabla_TipoProducto_TraerPorID";
                p1.ParameterName = "ID_Tipo_Producto";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                p1.Value = buscar_int.ToString();
                p1.DbType = DbType.String;
                ocmd.Parameters.Add(p1);
                // Ejecutar el procedimiento almacenado y obtener los resultados en un DataTable
                dt = sqlServer.ejecutarSQL_DS(ocmd);
                // Realizar el mapeo de DataTable a List<TipoProducto_Ent>
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

            // Método privado que realiza el mapeo entre un DataTable y una lista de entidades TipoProducto_Ent
            private List<BLL.Entidades.TipoProducto_Ent> castDstoEnt(DataTable ds)
            {
                // Lista para almacenar los tipos de productos mapeados
                List<BLL.Entidades.TipoProducto_Ent> Lista_TipoProducto = new List<BLL.Entidades.TipoProducto_Ent>();

                foreach (DataRow fila in ds.Rows)
                {
                    // Instancia de la entidad TipoProducto_Ent
                    BLL.Entidades.TipoProducto_Ent TipoProducto = new Entidades.TipoProducto_Ent();
                    // Asignar valores desde el DataTable a las propiedades de la entidad
                    TipoProducto.id_TipoProducto = int.Parse(fila["ID_Tipo_Producto"].ToString());
                    TipoProducto.Nombre_Tipo = fila["Nombre_Tipo"].ToString();
                    // Agregar la entidad mapeada a la lista
                    Lista_TipoProducto.Add(TipoProducto);
                }

                return Lista_TipoProducto;
            }
        }
    }
}