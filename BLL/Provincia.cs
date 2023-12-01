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
        // Clase que maneja la lógica de negocio para la entidad Provincia
        public class Provincia_BLL
        {
            // Método que retorna una lista de entidades Provincia
            public List<BLL.Entidades.Provincia_Ent> Traer()
            {
                BLL.Map.Provincia_map map = new Map.Provincia_map();
                // Llama al método Traer del map para obtener la lista de Provincias
                List<BLL.Entidades.Provincia_Ent> lista_entidad = map.Traer();
                map = null;
                return lista_entidad;
            }

            // Método que retorna una Provincia por ID
            public BLL.Entidades.Provincia_Ent TraerID(int variable)
            {
                BLL.Map.Provincia_map map = new Map.Provincia_map();
                // Llama al método Traer del map para obtener una Provincia por ID
                BLL.Entidades.Provincia_Ent entidad = map.Traer(variable);
                map = null;
                return entidad;
            }
        }
    }

    namespace BLL.Entidades
    {
        // Clase que representa la entidad Provincia
        public class Provincia_Ent
        {
            // Propiedades de la entidad
            public int id_provincia { get; set; }
            public string Nombre_Provincia { get; set; }
        }
    }

    namespace BLL.Map
    {
        // Clase que realiza el mapeo entre la base de datos y la entidad Provincia
        public class Provincia_map
        {
            // Método que retorna una lista de entidades Provincia
            public List<BLL.Entidades.Provincia_Ent> Traer()
            {
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion();
                List<BLL.Entidades.Provincia_Ent> Lista = new List<Entidades.Provincia_Ent>();
                DataTable dt = new DataTable();
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandText = "Tabla_Provincia_Traer_Todo";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                dt = sqlServer.ejecutarSQL_DS(ocmd);
                // Realiza el mapeo de DataTable a List<Provincia_Ent>
                Lista = castDstoEnt(dt);
                sqlServer.cerrar_conexion(ocnn);

                return Lista;
            }

            // Método que retorna una Provincia por ID
            public BLL.Entidades.Provincia_Ent Traer(int buscar_int)
            {
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion();
                List<BLL.Entidades.Provincia_Ent> Lista = new List<Entidades.Provincia_Ent>();
                BLL.Entidades.Provincia_Ent temp = new Entidades.Provincia_Ent();
                DataTable dt = new DataTable();
                SqlCommand ocmd = new SqlCommand();
                SqlParameter p1 = new SqlParameter();
                ocmd.CommandText = "Tabla_Provincia_TraerPorID";
                p1.ParameterName = "busqueda";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                p1.Value = buscar_int.ToString();
                p1.DbType = DbType.String;
                ocmd.Parameters.Add(p1);
                dt = sqlServer.ejecutarSQL_DS(ocmd);
                // Realiza el mapeo de DataTable a List<Provincia_Ent>
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

            // Método privado que realiza el mapeo entre un DataTable y una lista de entidades Provincia
            private List<BLL.Entidades.Provincia_Ent> castDstoEnt(DataTable ds)
            {
                List<BLL.Entidades.Provincia_Ent> Lista_Provincia = new List<BLL.Entidades.Provincia_Ent>();
                foreach (DataRow fila in ds.Rows)
                {
                    BLL.Entidades.Provincia_Ent Provincia = new Entidades.Provincia_Ent();
                    Provincia.id_provincia = int.Parse(fila["ID_Provincia"].ToString());
                    Provincia.Nombre_Provincia = fila["Nombre"].ToString();
                    Lista_Provincia.Add(Provincia);
                }
                return Lista_Provincia;
            }
        }
    }
}

