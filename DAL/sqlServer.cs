using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics.Eventing.Reader;
using System.IO;

namespace DAL
{
    // Clase que proporciona funciones para interactuar con una base de datos SQL Server
    public class sqlServer
    {
        private SqlConnection cnn; // Objeto de conexión a la base de datos

        // Constructor de la clase, inicializa el objeto de conexión
        public sqlServer()
        {
            this.cnn = new SqlConnection();
        }

        // Método privado que arma la cadena de conexión a la base de datos
        private string armarSqlConnection()
        {

            // Cadena de conexión con el servidor, base de datos, e información de seguridad
            return "Data Source =.; Initial Catalog = UAI; Integrated Security = True";
        }

        // Método para abrir la conexión a la base de datos
        public SqlConnection abrir_conexion()
        {
            this.cnn.ConnectionString = armarSqlConnection();

            try
            {
                // Intenta abrir la conexión si está cerrada
                while (this.cnn.State == ConnectionState.Closed)
                {
                    this.cnn.Open();
                }
            }
            catch (Exception ex)
            {
                reportarErrores(ex.Message); // Reporta cualquier error en la conexión
            }

            return this.cnn; // Retorna la conexión abierta
        }

        // Método para cerrar la conexión a la base de datos
        public void cerrar_conexion(SqlConnection param_cnn)
        {
            if (this.cnn is null)
            {
                param_cnn.Close(); // Cierra la conexión si no es nula
            }
        }

        // CRUD

        // Método que ejecuta un comando SQL y devuelve un DataTable
        public DataTable ejecutarSQL_DS(SqlCommand param_cmd)
        {
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = param_cmd;

            try
            {
                da.Fill(ds); // Llena el DataSet con los resultados del comando SQL
            }
            catch (Exception ex)
            {
                reportarErrores(ex.Message); // Reporta cualquier error en la ejecución del comando
            }

            return ds.Tables[0]; // Retorna la primera tabla del DataSet
        }

        // Método que ejecuta un comando SQL y devuelve un entero
        public int ejecutarSQL_int(SqlCommand param_cmd)
        {
            int error_conexion = 1;

            try
            {
                param_cmd.ExecuteScalar(); // Ejecuta el comando y devuelve el primer valor resultante
            }
            catch (Exception ex)
            {
                reportarErrores(ex.Message); // Reporta cualquier error en la ejecución del comando
                error_conexion = -1;
            }

            return error_conexion; // Retorna el estado de la ejecución
        }

        // Método para abrir una transacción en la base de datos
        public SqlTransaction abrir_transaccion()
        {
            SqlTransaction sql_tran;
            sql_tran = this.cnn.BeginTransaction(); // Inicia una transacción
            return sql_tran; // Retorna la transacción iniciada
        }

        // Método para cerrar una transacción con confirmación de cambios
        public void cerrar_transaccion(SqlTransaction sql_tran)
        {
            sql_tran.Commit(); // Confirma los cambios en la transacción
        }

        // Método para abortar una transacción y deshacer los cambios
        public void abortar_transaccion(SqlTransaction sql_tran)
        {
            sql_tran.Rollback(); // Deshace los cambios en la transacción
        }

        // Método privado para reportar errores en un archivo de bitácora
        private void reportarErrores(string detalle_error)
        {
            StreamWriter archivo = new StreamWriter("bitacora.txt", true);
            archivo.WriteLine(DateTime.Now.ToString() + ";" + detalle_error);
            archivo.Close();
        }
    }
}
