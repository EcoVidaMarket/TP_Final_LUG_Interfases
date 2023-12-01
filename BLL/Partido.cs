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
        // Clase que maneja la lógica de negocio para la entidad Partido
        public class Partido_BLL
        {
            // Método que retorna una lista de entidades Partido
            public List<BLL.Entidades.Partido_Ent> Traer()
            {
                BLL.Map.Partido_map map = new Map.Partido_map();
                List<BLL.Entidades.Partido_Ent> lista_entidad = map.Traer();
                map = null;
                return lista_entidad;
            }

            // Método que retorna una entidad Partido por ID
            public BLL.Entidades.Partido_Ent TraerID(int variable)
            {
                BLL.Map.Partido_map map = new Map.Partido_map();
                BLL.Entidades.Partido_Ent entidad = map.Traer(variable);
                map = null;
                return entidad;
            }
        }
    }

    namespace BLL.Entidades
    {
        // Clase que representa la entidad Partido
        public class Partido_Ent
        {
            // Propiedades de la entidad
            public int id_Partido { get; set; }
            public string Nombre_Partido { get; set; }
            public int Provincia { get; set; }

            // Constructor sin parámetros
            public Partido_Ent()
            {

            }

            // Constructor que toma el indicador de la provincia como parámetro
            public Partido_Ent(int indicadorId, string indicadornombre, int indicadorProvincia)
            {
                this.id_Partido = indicadorId;
                this.Nombre_Partido = indicadornombre;
                this.Provincia = indicadorProvincia;
            }
        }

    }

    namespace BLL.Map
    {
        // Clase que realiza el mapeo entre la base de datos y la entidad Partido
        public class Partido_map
        {
            // Método que retorna una lista de entidades Partido
            public List<BLL.Entidades.Partido_Ent> Traer()
            {
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion();
                List<BLL.Entidades.Partido_Ent> Lista = new List<Entidades.Partido_Ent>();
                DataTable dt = new DataTable();
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandText = "Tabla_Partido_Traer_Todo";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                dt = sqlServer.ejecutarSQL_DS(ocmd);
                Lista = castDstoEnt(dt);
                sqlServer.cerrar_conexion(ocnn);

                return Lista;
            }

            // Método que retorna una lista de entidades Partido por provincia
            public List<BLL.Entidades.Partido_Ent> TraerProvincia(int buscar_int)
            {
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion();
                List<BLL.Entidades.Partido_Ent> Lista = new List<Entidades.Partido_Ent>();
                DataTable dt = new DataTable();
                SqlCommand ocmd = new SqlCommand();
                SqlParameter p1 = new SqlParameter();
                ocmd.CommandText = "Tabla_Partido_TraerPorProvincia";
                p1.ParameterName = "Provincia";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                p1.Value = buscar_int.ToString();
                p1.DbType = DbType.String;
                ocmd.Parameters.Add(p1);
                dt = sqlServer.ejecutarSQL_DS(ocmd);
                Lista = castDstoEnt(dt);
                sqlServer.cerrar_conexion(ocnn);

                return Lista;
            }

            // Método que retorna una entidad Partido por ID
            public BLL.Entidades.Partido_Ent Traer(int buscar_int)
            {
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion();
                List<BLL.Entidades.Partido_Ent> Lista = new List<Entidades.Partido_Ent>();
                BLL.Entidades.Partido_Ent temp = new Entidades.Partido_Ent();
                DataTable dt = new DataTable();
                SqlCommand ocmd = new SqlCommand();
                SqlParameter p1 = new SqlParameter();
                ocmd.CommandText = "Tabla_Partido_TraerPorID";
                p1.ParameterName = "ID_Partido";
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

            // Método privado que realiza el mapeo entre un DataTable y una lista de entidades Partido
            private List<BLL.Entidades.Partido_Ent> castDstoEnt(DataTable ds)
            {
                List<BLL.Entidades.Partido_Ent> Lista_Partido = new List<BLL.Entidades.Partido_Ent>();
                foreach (DataRow fila in ds.Rows)
                {
                    BLL.Entidades.Partido_Ent Partido = new Entidades.Partido_Ent();
                    Partido.id_Partido = int.Parse(fila["ID_Partido"].ToString());
                    Partido.Nombre_Partido = fila["Nombre"].ToString();
                    BLL.Clases.Provincia_BLL prov = new Clases.Provincia_BLL();
                    Partido.Provincia = int.Parse(fila["Provincia"].ToString());

                    Lista_Partido.Add(Partido);
                }
                return Lista_Partido;
            }

        }
    }

}

