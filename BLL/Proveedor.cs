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
        // Clase que maneja la lógica de negocio para la entidad Proveedor
        public class Proveedor_BLL
        {
            // Método que guarda un Proveedor en la base de datos
            public int Guardar(BLL.Entidades.Proveedor_Ent Proveedor)
            {
                int errores = 1;
                try
                {
                    BLL.Map.Proveedor_map map = new Map.Proveedor_map();
                    // Llama al método guardar del map para almacenar el Proveedor en la base de datos
                    int entidad = map.guardar(Proveedor);
                    map = null;
                }
                catch (Exception ex)
                {
                    errores = -1;
                }

                return errores;
            }

            // Método que retorna una lista de entidades Proveedor
            public List<BLL.Entidades.Proveedor_Ent> Traer()
            {
                BLL.Map.Proveedor_map map = new Map.Proveedor_map();
                // Llama al método Traer del map para obtener la lista de Proveedores
                List<BLL.Entidades.Proveedor_Ent> lista_entidad = map.Traer();
                map = null;
                return lista_entidad;
            }

            // Método que retorna un Proveedor por ID
            public BLL.Entidades.Proveedor_Ent TraerID(int variable)
            {
                BLL.Map.Proveedor_map map = new Map.Proveedor_map();
                // Llama al método Traer del map para obtener un Proveedor por ID
                BLL.Entidades.Proveedor_Ent entidad = map.Traer(variable);
                map = null;
                return entidad;
            }
        }
    }

    namespace BLL.Entidades
    {
        // Clase que representa la entidad Proveedor
        public class Proveedor_Ent
        {
            // Propiedades de la entidad
            public int ID_Proveedor { get; set; }
            public string Nombre { get; set; }
            public int CUIT { get; set; }
            public BLL.Entidades.Localidad_Ent Localidad { get; set; }
            public string Calle { get; set; }
            public string Altura { get; set; }
            public string Codigo_Postal { get; set; }
            public int Estado { get; set; }
        }
    }

    namespace BLL.Map
    {
        // Clase que realiza el mapeo entre la base de datos y la entidad Proveedor
        public class Proveedor_map
        {
            // Método que retorna una lista de entidades Proveedor
            public List<BLL.Entidades.Proveedor_Ent> Traer()
            {
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion();
                List<BLL.Entidades.Proveedor_Ent> Lista = new List<Entidades.Proveedor_Ent>();
                DataTable dt = new DataTable();
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandText = "Tabla_Proveedor_Traer_Todo";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                dt = sqlServer.ejecutarSQL_DS(ocmd);
                // Realiza el mapeo de DataTable a List<Proveedor_Ent>
                Lista = castDstoEnt(dt);
                sqlServer.cerrar_conexion(ocnn);

                return Lista;
            }

            // Método que retorna un Proveedor por ID
            public BLL.Entidades.Proveedor_Ent Traer(int buscar_int)
            {
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion();
                List<BLL.Entidades.Proveedor_Ent> Lista = new List<Entidades.Proveedor_Ent>();
                BLL.Entidades.Proveedor_Ent temp = new Entidades.Proveedor_Ent();
                DataTable dt = new DataTable();
                SqlCommand ocmd = new SqlCommand();
                SqlParameter p1 = new SqlParameter();
                ocmd.CommandText = "Tabla_Proveedor_TraerPorID";
                p1.ParameterName = "ID_Proveedor";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                p1.Value = buscar_int.ToString();
                p1.DbType = DbType.String;
                ocmd.Parameters.Add(p1);
                dt = sqlServer.ejecutarSQL_DS(ocmd);
                // Realiza el mapeo de DataTable a List<Proveedor_Ent>
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

            // Método privado que realiza el mapeo entre un DataTable y una lista de entidades Proveedor
            private List<BLL.Entidades.Proveedor_Ent> castDstoEnt(DataTable ds)
            {
                List<BLL.Entidades.Proveedor_Ent> Lista_Proveedor = new List<BLL.Entidades.Proveedor_Ent>();

                foreach (DataRow fila in ds.Rows)
                {
                    BLL.Entidades.Proveedor_Ent Proveedor = new Entidades.Proveedor_Ent();
                    Proveedor.ID_Proveedor = int.Parse(fila["ID_Proveedor"].ToString());
                    Proveedor.Nombre = fila["Nombre"].ToString();
                    Proveedor.CUIT = int.Parse(fila["CUIT"].ToString());
                    BLL.Clases.Localidad_BLL loca = new Clases.Localidad_BLL();
                    Proveedor.Localidad = loca.TraerID(int.Parse(fila["Localidad"].ToString()));
                    Proveedor.Calle = fila["Calle"].ToString();
                    Proveedor.Altura = fila["Altura"].ToString();
                    Proveedor.Codigo_Postal = fila["Codigo_Postal"].ToString();
                    Proveedor.Estado = int.Parse(fila["Estado"].ToString());
                    Lista_Proveedor.Add(Proveedor);
                }

                return Lista_Proveedor;
            }

            // Método que guarda un Proveedor en la base de datos
            public int guardar(BLL.Entidades.Proveedor_Ent Proveedor)
            {
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion();
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandText = "Tabla_Proveedor_agregar_Proveedor";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                ocmd.Parameters.Add("@ID_Proveedor", SqlDbType.Int);
                ocmd.Parameters["@ID_Proveedor"].Value = Proveedor.ID_Proveedor;
                ocmd.Parameters.Add("@Nombre", SqlDbType.VarChar, 180);
                ocmd.Parameters["@Nombre"].Value = Proveedor.Nombre;
                ocmd.Parameters.Add("@cuit", SqlDbType.Int);
                ocmd.Parameters["@cuit"].Value = Proveedor.CUIT;
                ocmd.Parameters.Add("@Localidad", SqlDbType.Int);
                ocmd.Parameters["@Localidad"].Value = Proveedor.Localidad.id_Localidad;
                ocmd.Parameters.Add("@Calle", SqlDbType.VarChar, 180);
                ocmd.Parameters["@Calle"].Value = Proveedor.Calle;
                ocmd.Parameters.Add("@Altura", SqlDbType.VarChar, 11);
                ocmd.Parameters["@Altura"].Value = Proveedor.Altura;
                ocmd.Parameters.Add("@CodigoPostal", SqlDbType.VarChar, 11);
                ocmd.Parameters["@CodigoPostal"].Value = Proveedor.Codigo_Postal;
                ocmd.Parameters.Add("@estado", SqlDbType.Int);
                ocmd.Parameters["@estado"].Value = Proveedor.Estado;
                DataTable ds = sqlServer.ejecutarSQL_DS(ocmd);
                List<BLL.Entidades.Proveedor_Ent> Lista = new List<Entidades.Proveedor_Ent>();
                // Realiza el mapeo de DataTable a List<Proveedor_Ent>
                Lista = castDstoEnt(ds);
                sqlServer.cerrar_conexion(ocnn);

                return 0;
            }
        }
    }
}

