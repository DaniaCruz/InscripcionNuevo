using Conect.Utileria;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Inscripcion.DAO
{
    public class CMunicipiosDAO
    {
        public SqlCommand comando { set; get; }
        public UConexion conexion { set; get; }
        public string instruccion { set; get; }


        public void Insert(string mun_Nombre,int est_ID)
        {

            conexion = new UConexion();
            using (conexion.Conexion())
            { 
                int x = 0;
                comando = new SqlCommand();
                instruccion = "INSERT INTO Municipios(mun_Nombre,est_ID) VALUES(@mun_Nombre,@est_ID)";
            

                comando = new SqlCommand(instruccion, conexion.Conexion());
                comando.Parameters.Add("@est_ID", SqlDbType.Int).Value = est_ID;
                comando.Parameters.Add("@mun_Nombre", SqlDbType.VarChar).Value =mun_Nombre;
               

                x = comando.ExecuteNonQuery();
            }

        }
        public void Update(string mun_Nombre)
        {
            conexion = new UConexion();
            using (conexion.Conexion())
            {

                instruccion = "UPDATE Municipios SET munClave=mun_ID  ";
                instruccion += " WHERE mun_Nombre=@mun_Nombre";

                comando = new SqlCommand(instruccion, conexion.Conexion());
                comando.Parameters.Add("@mun_Nombre", SqlDbType.VarChar).Value =mun_Nombre;
         
                comando.ExecuteNonQuery();
            }
        }
        public DataSet Consult(string mun_Nombre)
        {
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();
            try
            {
                conexion = new UConexion();
                SqlConnection con = conexion.Conexion();
                using (con)
                {
                    string query = "SELECT * FROM Municipios ";
                    query += "WHERE mun_Nombre = @mun_Nombre";

                    comando = new SqlCommand(query, con);
                    comando.Parameters.Add("@mun_Nombre", SqlDbType.VarChar).Value =mun_Nombre;
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