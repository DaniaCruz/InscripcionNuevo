using Conect.Utileria;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Inscripcion.DAO
{
    public class EncuestasDAO
    {
      
        UConexion c;
        SqlConnection con;
        SqlCommand comando;

        public EncuestasDAO()
        {
            c = new UConexion();
        }

        public void Insert(int enc_ID, int alu_ID)
        {
            con = new SqlConnection();
            con = c.Conexion();
            using (con)
            {
                int x = 0;
                comando = new SqlCommand();
                string instruccion = "INSERT INTO Encuestas(alu_ID,enc_ID,enc_Contestado) VALUES (@alu_ID,@enc_ID,@enc_Contestado)";
                

                comando = new SqlCommand(instruccion, con);
                comando.Parameters.Add("@alu_ID", SqlDbType.Int).Value = alu_ID;
                comando.Parameters.Add("@enc_ID", SqlDbType.VarChar).Value = enc_ID;
                comando.Parameters.Add("@enc_Contestado", SqlDbType.Bit).Value =true;
               
                x = comando.ExecuteNonQuery();
            }
        }


        public bool EncuestaContestada(int alu_ID,int enc_ID)
        {
            bool result = false;
            try
            {
                con = new SqlConnection();
                con = c.Conexion();
                using (con)
                {
                    string qwery = "SELECT CAST(COUNT(1) AS BIT) FROM Encuestas WHERE alu_ID = @alu_ID AND enc_ID=@enc_ID";
                    SqlCommand command = new SqlCommand(qwery, con);
                    command.Parameters.Add("@alu_ID", SqlDbType.Int).Value = alu_ID;
                    command.Parameters.Add("@enc_ID", SqlDbType.Int).Value = enc_ID;
                    result = Convert.ToBoolean(command.ExecuteScalar());
                    con.Close();
                }
            }
            catch (Exception ex)
            {

                throw;
            }
            return result;
        }


    }
}