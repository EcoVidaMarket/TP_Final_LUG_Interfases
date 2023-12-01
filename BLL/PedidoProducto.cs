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
        // Clase que maneja la lógica de negocio para la entidad PedidoProducto
        public class PedidoProducto_BLL
        {
            // Método que guarda un PedidoProducto en la base de datos
            public int Guardar(BLL.Entidades.PedidoProducto_Ent pedidoProducto)
            {
                int errores = 1;
                try
                {
                    BLL.Map.PedidoProducto_map map = new Map.PedidoProducto_map();
                    // Llama al método guardar del map para almacenar el PedidoProducto
                    int entidad = map.guardar(pedidoProducto);
                    map = null;
                }
                catch (Exception ex)
                {
                    errores = -1;
                }

                return errores;
            }

            // Método que retorna una lista de entidades PedidoProducto
            public List<BLL.Entidades.PedidoProducto_Ent> Traer()
            {
                BLL.Map.PedidoProducto_map map = new Map.PedidoProducto_map();
                List<BLL.Entidades.PedidoProducto_Ent> lista_entidad = map.Traer();
                map = null;
                return lista_entidad;
            }

            // Método que retorna una entidad PedidoProducto por ID
            public BLL.Entidades.PedidoProducto_Ent TraerID(int variable)
            {
                BLL.Map.PedidoProducto_map map = new Map.PedidoProducto_map();
                BLL.Entidades.PedidoProducto_Ent entidad = map.Traer(variable);
                map = null;
                return entidad;
            }
        }
    }

    namespace BLL.Entidades
    {
        // Clase que representa la entidad PedidoProducto
        public class PedidoProducto_Ent
        {
            // Propiedades de la entidad
            public int ID_PedidoProducto { get; set; }
            public BLL.Entidades.Pedido_Ent Pedido { get; set; }
            public BLL.Entidades.Producto_Ent Producto { get; set; }
            public int Cantidad { get; set; }
            public int Recepcionada { get; set; }
            public int Estado { get; set; }
        }
    }

    namespace BLL.Map
    {
        // Clase que realiza el mapeo entre la base de datos y la entidad PedidoProducto
        class PedidoProducto_map
        {
            // Método que retorna una lista de entidades PedidoProducto
            public List<BLL.Entidades.PedidoProducto_Ent> Traer()
            {
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion();
                List<BLL.Entidades.PedidoProducto_Ent> Lista = new List<Entidades.PedidoProducto_Ent>();
                DataTable dt = new DataTable();
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandText = "Tabla_PedidoProducto_Traer_Todo";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                dt = sqlServer.ejecutarSQL_DS(ocmd);
                Lista = castDstoEnt(dt);
                sqlServer.cerrar_conexion(ocnn);

                return Lista;
            }

            // Método que retorna una entidad PedidoProducto por ID
            public BLL.Entidades.PedidoProducto_Ent Traer(int buscar_int)
            {
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion();
                List<BLL.Entidades.PedidoProducto_Ent> Lista = new List<Entidades.PedidoProducto_Ent>();
                BLL.Entidades.PedidoProducto_Ent temp = new Entidades.PedidoProducto_Ent();
                DataTable dt = new DataTable();
                SqlCommand ocmd = new SqlCommand();
                SqlParameter p1 = new SqlParameter();
                ocmd.CommandText = "Tabla_PedidoProducto_TraerPorID";
                p1.ParameterName = "ID_PedidoProducto";
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

            // Método privado que realiza el mapeo entre un DataTable y una lista de entidades PedidoProducto
            private List<BLL.Entidades.PedidoProducto_Ent> castDstoEnt(DataTable ds)
            {
                List<BLL.Entidades.PedidoProducto_Ent> Lista_PedidoProducto = new List<BLL.Entidades.PedidoProducto_Ent>();

                foreach (DataRow fila in ds.Rows)
                {
                    BLL.Entidades.PedidoProducto_Ent PedidoProducto = new Entidades.PedidoProducto_Ent();
                    PedidoProducto.ID_PedidoProducto = int.Parse(fila["ID_pedprod"].ToString());
                    BLL.Clases.Pedido_BLL pedid = new Clases.Pedido_BLL();
                    PedidoProducto.Pedido = pedid.TraerID(int.Parse(fila["ID_Pedido"].ToString()));
                    BLL.Clases.Producto_BLL prod = new Clases.Producto_BLL();
                    PedidoProducto.Producto = prod.TraerID(int.Parse(fila["Producto"].ToString()));
                    PedidoProducto.Cantidad = int.Parse(fila["Cantidad"].ToString());
                    PedidoProducto.Recepcionada = int.Parse(fila["Recepcionada"].ToString());
                    PedidoProducto.Estado = int.Parse(fila["Estado"].ToString());
                    Lista_PedidoProducto.Add(PedidoProducto);
                }

                return Lista_PedidoProducto;
            }

            // Método que guarda un PedidoProducto en la base de datos
            public int guardar(BLL.Entidades.PedidoProducto_Ent pedidoProducto)
            {
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion();
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandText = "Tabla_Pedido_Producto_agregar_pedido";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                ocmd.Parameters.Add("@ID_pedprod", SqlDbType.Int);
                ocmd.Parameters["@ID_pedprod"].Value = pedidoProducto.ID_PedidoProducto;
                ocmd.Parameters.Add("@Pedido", SqlDbType.Int);
                ocmd.Parameters["@Pedido"].Value = pedidoProducto.Pedido.ID_Pedido;
                ocmd.Parameters.Add("@Producto", SqlDbType.Int);
                ocmd.Parameters["@Producto"].Value = pedidoProducto.Producto.ID_Producto;
                ocmd.Parameters.Add("@Cantidad", SqlDbType.Int);
                ocmd.Parameters["@Cantidad"].Value = pedidoProducto.Cantidad;
                ocmd.Parameters.Add("@Recepcionada", SqlDbType.Int);
                ocmd.Parameters["@Recepcionada"].Value = pedidoProducto.Recepcionada;
                ocmd.Parameters.Add("@Estado", SqlDbType.Int);
                ocmd.Parameters["@Estado"].Value = pedidoProducto.Estado;
                DataTable ds = sqlServer.ejecutarSQL_DS(ocmd);
                List<BLL.Entidades.PedidoProducto_Ent> Lista = new List<Entidades.PedidoProducto_Ent>();
                Lista = castDstoEnt(ds);
                sqlServer.cerrar_conexion(ocnn);

                return 0;
            }
        }
    }
}

