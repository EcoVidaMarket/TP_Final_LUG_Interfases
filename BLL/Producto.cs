using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    namespace BLL.Clases
    {
        // Clase que maneja la lógica de negocio para la entidad Producto
        public class Producto_BLL
        {
            // Método que retorna una lista de entidades Producto
            public List<BLL.Entidades.Producto_Ent> Traer()
            {
                BLL.Map.Producto_map map = new Map.Producto_map();
                // Llama al método Traer del map para obtener la lista de productos
                List<BLL.Entidades.Producto_Ent> lista_entidad = map.Traer();
                map = null;
                return lista_entidad;
            }

            // Método que retorna una entidad Producto por ID
            public BLL.Entidades.Producto_Ent TraerID(int variable)
            {
                BLL.Map.Producto_map map = new Map.Producto_map();
                // Llama al método Traer del map para obtener un producto por ID
                BLL.Entidades.Producto_Ent entidad = map.Traer(variable);
                map = null;
                return entidad;
            }
        }
    }

    namespace BLL.Entidades
    {
        // Clase que representa la entidad Producto
        public class Producto_Ent
        {
            // Propiedades de la entidad
            public int ID_Producto { get; set; }
            public string Nombre { get; set; }
            public int Proveedor { get; set; }
            public int Tipo_Producto { get; set; }
            public int Estado { get; set; }
        }
    }

    namespace BLL.Map
    {
        // Clase que realiza el mapeo entre la base de datos y la entidad Producto
        public class Producto_map
        {
            // Método que retorna una lista de entidades Producto
            public List<BLL.Entidades.Producto_Ent> Traer()
            {
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion();
                List<BLL.Entidades.Producto_Ent> Lista = new List<Entidades.Producto_Ent>();
                DataTable dt = new DataTable();
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandText = "Tabla_Producto_Traer_Todo";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                dt = sqlServer.ejecutarSQL_DS(ocmd);
                // Realiza el mapeo de DataTable a List<Producto_Ent>
                Lista = castDstoEnt(dt);
                sqlServer.cerrar_conexion(ocnn);

                return Lista;
            }

            // Método que retorna una entidad Producto por ID
            public BLL.Entidades.Producto_Ent Traer(int buscar_int)
            {
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion();
                List<BLL.Entidades.Producto_Ent> Lista = new List<Entidades.Producto_Ent>();
                BLL.Entidades.Producto_Ent temp = new Entidades.Producto_Ent();
                DataTable dt = new DataTable();
                SqlCommand ocmd = new SqlCommand();
                SqlParameter p1 = new SqlParameter();
                ocmd.CommandText = "Tabla_Producto_TraerPorID";
                p1.ParameterName = "ID_Producto";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                p1.Value = buscar_int.ToString();
                p1.DbType = DbType.String;
                ocmd.Parameters.Add(p1);
                dt = sqlServer.ejecutarSQL_DS(ocmd);
                // Realiza el mapeo de DataTable a List<Producto_Ent>
                Lista = castDstoEnt(dt);
                sqlServer.cerrar_conexion(ocnn);

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

            // Método privado que realiza el mapeo entre un DataTable y una lista de entidades Producto
            private List<BLL.Entidades.Producto_Ent> castDstoEnt(DataTable ds)
            {
                List<BLL.Entidades.Producto_Ent> Lista_Producto = new List<BLL.Entidades.Producto_Ent>();

                foreach (DataRow fila in ds.Rows)
                {
                    BLL.Entidades.Producto_Ent producto = new Entidades.Producto_Ent();
                    producto.ID_Producto = int.Parse(fila["ID_Producto"].ToString());
                    producto.Nombre = fila["Nombre"].ToString();
                    producto.Proveedor = int.Parse(fila["Proveedor"].ToString());
                    producto.Tipo_Producto = int.Parse(fila["Tipo_Producto"].ToString());
                    producto.Estado = int.Parse(fila["Estado"].ToString());
                    Lista_Producto.Add(producto);
                }

                return Lista_Producto;
            }
        }
    }
}
