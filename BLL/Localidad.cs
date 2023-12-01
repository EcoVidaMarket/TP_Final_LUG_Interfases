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
        // Clase que maneja la lógica de negocio para la entidad Localidad
        public class Localidad_BLL
        {
            // Método que retorna una lista de entidades Localidad
            public List<BLL.Entidades.Localidad_Ent> Traer()
            {
                BLL.Map.Localidad_map map = new Map.Localidad_map();
                List<BLL.Entidades.Localidad_Ent> lista_entidad = map.Traer();
                map = null;
                return lista_entidad;
            }

            // Método que retorna una entidad Localidad por ID
            public BLL.Entidades.Localidad_Ent TraerID(int variable)
            {
                BLL.Map.Localidad_map map = new Map.Localidad_map();
                BLL.Entidades.Localidad_Ent entidad = map.Traer(variable);
                map = null;
                return entidad;
            }
        }
    }

    namespace BLL.Entidades
    {
        // Clase que representa la entidad Localidad
        public class Localidad_Ent
        {
            // Propiedades de la entidad
            public int id_Localidad { get; set; }
            public string Nombre_Localidad { get; set; }
            public int Partido { get; set; }

            // Constructores de la entidad
            public Localidad_Ent() { }
            public Localidad_Ent(int indicadorId, string indicadornombre, int indicadorPartido)
            {
                this.id_Localidad = indicadorId;
                this.Nombre_Localidad = indicadornombre;
                this.Partido = indicadorPartido;
            }
        }
    }

    namespace BLL.Map
    {
        // Clase que realiza el mapeo entre la base de datos y la entidad Localidad
        public class Localidad_map
        {
            // Método que retorna una lista de entidades Localidad
            public List<BLL.Entidades.Localidad_Ent> Traer()
            {
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion();
                List<BLL.Entidades.Localidad_Ent> Lista = new List<Entidades.Localidad_Ent>();
                DataTable dt = new DataTable();
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandText = "Tabla_Localidad_Traer_Todo";
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = ocnn;
                dt = sqlServer.ejecutarSQL_DS(ocmd);
                Lista = castDstoEnt(dt);
                sqlServer.cerrar_conexion(ocnn);

                return Lista;
            }

            // Método que retorna una entidad Localidad por ID
            public BLL.Entidades.Localidad_Ent Traer(int buscar_int)
            {
                DAL.sqlServer sqlServer = new DAL.sqlServer();
                SqlConnection ocnn = new SqlConnection();
                ocnn = sqlServer.abrir_conexion();
                List<BLL.Entidades.Localidad_Ent> Lista = new List<Entidades.Localidad_Ent>();
                BLL.Entidades.Localidad_Ent temp = new Entidades.Localidad_Ent();
                DataTable dt = new DataTable();
                SqlCommand ocmd = new SqlCommand();
                SqlParameter p1 = new SqlParameter();
                ocmd.CommandText = "Tabla_Localidad_TraerPorID";
                p1.ParameterName = "ID_Localidad";
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

            // Método privado que realiza el mapeo entre un DataTable y una lista de entidades Localidad
            private List<BLL.Entidades.Localidad_Ent> castDstoEnt(DataTable ds)
            {
                List<BLL.Entidades.Localidad_Ent> Lista_Localidad = new List<BLL.Entidades.Localidad_Ent>();
                foreach (DataRow fila in ds.Rows)
                {
                    BLL.Entidades.Localidad_Ent Localidad = new Entidades.Localidad_Ent();
                    Localidad.id_Localidad = int.Parse(fila["ID_Localidad"].ToString());
                    Localidad.Nombre_Localidad = fila["Nombre"].ToString();
                    BLL.Clases.Partido_BLL part = new Clases.Partido_BLL();
                    Localidad.Partido = int.Parse(fila["Partido"].ToString());
                    Lista_Localidad.Add(Localidad);
                }
                return Lista_Localidad;
            }
        }
    }
}

