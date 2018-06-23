using Conect.Utileria;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Inscripcion.DAO
{
    public class ceEscuelas
    {
        public SqlCommand comando { set; get; }
        public UConexion conexion { set; get; }
        public string instruccion { set; get; }


        public void Insert(string esc_Nombre, string mun_ID)
        {

            conexion = new UConexion();
            using (conexion.Conexion())
            {
                int x = 0;
                comando = new SqlCommand();
                instruccion = "INSERT INTO Escuelas(esc_Nombre,mun_ID) VALUES(@esc_Nombre, @mun_ID)";


                comando = new SqlCommand(instruccion, conexion.Conexion());

                comando.Parameters.Add("@esc_Nombre", SqlDbType.VarChar).Value = esc_Nombre;
                comando.Parameters.Add("@mun_ID", SqlDbType.Int).Value = mun_ID;


                x = comando.ExecuteNonQuery();
            }

        }
        public void Update(string esc_Nombre)
        {
            conexion = new UConexion();
            using (conexion.Conexion())
            {

                instruccion = "UPDATE Escuelas SET esc_Clave=esc_ID  ";
                instruccion += " WHERE esc_Nombre=@esc_Nombre";

                comando = new SqlCommand(instruccion, conexion.Conexion());
                comando.Parameters.Add("@esc_Nombre", SqlDbType.VarChar).Value = esc_Nombre;

                comando.ExecuteNonQuery();
            }
        }
        public DataSet Consult(string esc_Nombre)
        {
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();
            try
            {
                conexion = new UConexion();
                SqlConnection con = conexion.Conexion();
                using (con)
                {
                    string query = "SELECT * FROM Escuelas ";
                    query += "WHERE esc_Nombre = @esc_Nombre";

                    comando = new SqlCommand(query, con);
                    comando.Parameters.Add("@esc_Nombre", SqlDbType.VarChar).Value = esc_Nombre;
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
