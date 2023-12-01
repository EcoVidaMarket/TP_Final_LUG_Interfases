using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Dynamic;

namespace BLL
{
    namespace BLL.Clases
    {
        // Clase que maneja la lógica de negocio para la entidad Pedido
        public class Pedido_BLL
        {
            // Método que guarda un pedido en la base de datos
            public int Guardar(BLL.Entidades.Pedido_Ent Pedido)
            {
                int errores = 1;
                try
                {
                    BLL.Map.Pedido_map map = new Map.Pedido_map();
                    // Llama al método guardar del map para almacenar el pedido
                    int entidad = map.guardar(Pedido);
                    map = null;
                }
                catch (Exception ex)
                {
                    errores = -1;
                }

                return errores;
            }

            // Método que retorna una entidad Pedido por ID
            public BLL.Entidades.Pedido_Ent TraerID(int variable)
            {
                BLL.Map.Pedido_map map = new Map.Pedido_map();
                BLL.Entidades.Pedido_Ent entidad = map.Traer(variable);
                map = null;
                return entidad;
            }

            // Método que retorna una lista de entidades Pedido
            public List<BLL.Entidades.Pedido_Ent> Traer()
            {
                BLL.Map.Pedido_map map = new Map.Pedido_map();
                List<BLL.Entidades.Pedido_Ent> lista_entidad = map.Traer();
                map = null;
                return lista_entidad;
            }
        }
    }

    namespace BLL.Entidades
    {
        // Clase que representa la entidad Pedido
        public class Pedido_Ent
        {
            // Propiedades de la entidad
            public int ID_Pedido { get; set; }

            public BLL.Entidades.Sucursal_Ent Sucursal { get; set; }
            public BLL.Entidades.Proveedor_Ent Proveedor { get; set; }
            public BLL.Entidades.Usuario_Ent Usuario { get; set; }
            public int Estado { get; set; }
        }
    }

    namespace BLL.Map
    {
        // Clase que realiza el mapeo entre la base de datos y la entidad Pedido
        public class Pedido_map
        {
            // Método que retorna una lista de entidades Pedido
            public List<BLL.Entidades.Pedido_Ent> Traer()
            {
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion();
                List<BLL.Entidades.Pedido_Ent> Lista = new List<Entidades.Pedido_Ent>();
                DataTable dt = new DataTable();
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandText = "Tabla_Pedido_Traer_Todo";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                dt = sqlServer.ejecutarSQL_DS(ocmd);
                Lista = castDstoEnt(dt);
                sqlServer.cerrar_conexion(ocnn);

                return Lista;
            }

            // Método que retorna una entidad Pedido por ID
            public BLL.Entidades.Pedido_Ent Traer(int buscar_int)
            {
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion();
                List<BLL.Entidades.Pedido_Ent> Lista = new List<Entidades.Pedido_Ent>();
                BLL.Entidades.Pedido_Ent temp = new Entidades.Pedido_Ent();
                DataTable dt = new DataTable();
                SqlCommand ocmd = new SqlCommand();
                SqlParameter p1 = new SqlParameter();
                ocmd.CommandText = "Tabla_Pedido_TraerPorID";
                p1.ParameterName = "ID_Pedido";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                p1.Value = buscar_int.ToString();
                p1.DbType = DbType.String;
                ocmd.Parameters.Add(p1);
                dt = sqlServer.ejecutarSQL_DS(ocmd);
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

            // Método privado que realiza el mapeo entre un DataTable y una lista de entidades Pedido
            private List<BLL.Entidades.Pedido_Ent> castDstoEnt(DataTable ds)
            {
                List<BLL.Entidades.Pedido_Ent> Lista_Pedido = new List<BLL.Entidades.Pedido_Ent>();

                foreach (DataRow fila in ds.Rows)
                {
                    BLL.Entidades.Pedido_Ent Pedido = new Entidades.Pedido_Ent();
                    Pedido.ID_Pedido = int.Parse(fila["ID_Pedido"].ToString());
                    BLL.Clases.Sucursal_BLL sucur = new Clases.Sucursal_BLL();
                    Pedido.Sucursal = sucur.TraerID(int.Parse(fila["Sucursal"].ToString()));
                    BLL.Clases.Proveedor_BLL provee = new Clases.Proveedor_BLL();
                    Pedido.Proveedor = provee.TraerID(int.Parse(fila["Proveedor"].ToString()));
                    Pedido.Estado = int.Parse(fila["Estado"].ToString());
                    Lista_Pedido.Add(Pedido);
                }

                return Lista_Pedido;
            }

            // Método que guarda un pedido en la base de datos
            public int guardar(BLL.Entidades.Pedido_Ent Pedido)
            {
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion();
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandText = "Tabla_Pedido_agregar_Pedido";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                ocmd.Parameters.Add("@ID_Pedido", SqlDbType.Int);
                ocmd.Parameters["@ID_Pedido"].Value = Pedido.ID_Pedido;
                ocmd.Parameters.Add("@Sucursal", SqlDbType.Int);
                ocmd.Parameters["@Sucursal"].Value = Pedido.Sucursal.ID_Sucursal;
                ocmd.Parameters.Add("@Proveedor", SqlDbType.Int);
                ocmd.Parameters["@Proveedor"].Value = Pedido.Proveedor.ID_Proveedor;
                ocmd.Parameters.Add("@Usuario", SqlDbType.Int);
                ocmd.Parameters["@Usuario"].Value = Pedido.Usuario.ID;  // Este valor probablemente deba ser ajustado
                ocmd.Parameters.Add("@estado", SqlDbType.Int);
                ocmd.Parameters["@estado"].Value = Pedido.Estado;
                DataTable ds = sqlServer.ejecutarSQL_DS(ocmd);
                List<BLL.Entidades.Pedido_Ent> Lista = new List<Entidades.Pedido_Ent>();
                Lista = castDstoEnt(ds);
                sqlServer.cerrar_conexion(ocnn);

                return 0;
            }
        }
    }
}

