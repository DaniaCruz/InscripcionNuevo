using Conect.Utileria;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Inscripcion.DAO
{
    public class CeEstadosDAO
    {
        public SqlCommand comando { set; get; }
        public UConexion conexion { set; get; }
        public string instruccion { set; get; }


        public void Insert(string est_Nombre)
        {

            conexion = new UConexion();
            using (conexion.Conexion())
            {
                int x = 0;
                comando = new SqlCommand();
                instruccion = "INSERT INTO Estados(est_Nombre) VALUES(@est_Nombre)";


                comando = new SqlCommand(instruccion, conexion.Conexion());
            
                comando.Parameters.Add("@est_Nombre", SqlDbType.VarChar).Value = est_Nombre;


                x = comando.ExecuteNonQuery();
            }

        }
        public void Update(string est_Nombre)
        {
            conexion = new UConexion();
            using (conexion.Conexion())
            {

                instruccion = "UPDATE Estados SET est_Clave=est_ID  ";
                instruccion += " WHERE est_Nombre=@est_Nombre";

                comando = new SqlCommand(instruccion, conexion.Conexion());
                comando.Parameters.Add("@est_Nombre", SqlDbType.VarChar).Value = est_Nombre;

                comando.ExecuteNonQuery();
            }
        }
        public DataSet Consult(string est_Nombre)
        {
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();
            try
            {
                conexion = new UConexion();
                SqlConnection con = conexion.Conexion();
                using (con)
                {
                    string query = "SELECT * FROM Estados ";
                    query += "WHERE est_Nombre = @est_Nombre";

                    comando = new SqlCommand(query, con);
                    comando.Parameters.Add("@est_Nombre", SqlDbType.VarChar).Value = est_Nombre;
                    dt.Load(comando.ExecuteReader());
                    ds.Tables.Add(dt);
                    con.Close();
                }
            }
            catch (Exception)
            {
                throw;
            }
            return ds;
        }

    }
}