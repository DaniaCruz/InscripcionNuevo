using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using Conect.Utileria;

namespace Conect.DAO
{
    public class LogInDAOSQL
    {
        string cadena;
        UConexion c;
        SqlConnection con;
        public LogInDAOSQL()
        {
            c = new UConexion();
        }

        public bool ExisteUsuario(string alu_NumControl)
        {
            bool result = false;
            try
            {
                con = new SqlConnection();
                con = c.Conexion();
                using (con)
                {
                    string qwery = "SELECT CAST(COUNT(1) AS BIT) FROM [Alumno] WHERE alu_NumControl = @alu_NumControl";
                    SqlCommand command = new SqlCommand(qwery, con);
                    command.Parameters.Add("@alu_NumControl", SqlDbType.VarChar).Value = alu_NumControl;
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




        public bool ValidarUsuario(string alu_NumControl )
        {

           
            bool result = false;
            try
            {
                con = new SqlConnection();
                con = c.Conexion();
                using (con)
                {
                    string qwery = "SELECT CAST(COUNT(1) AS BIT) FROM [Usuarios] WHERE (usu_Matricula = @alu_NumControl and usu_Referencia = @usu_Referencia)";
                    SqlCommand command = new SqlCommand(qwery, con);
                    command.Parameters.Add("@alu_NumControl", SqlDbType.VarChar).Value = alu_NumControl;
                    command.Parameters.Add("@usu_Referencia", SqlDbType.VarChar).Value = ObtenerReferencia(alu_NumControl);
                    result = Convert.ToBoolean(command.ExecuteScalar());
                    con.Close();
                }
            }
            catch (Exception)
            {

                throw;
            }
            return result;
        }

        public string ObtenerReferencia(string alu_NumControl)
        {
            string planE = alu_NumControl.Substring(3,1);
            string referencia = "0";
            switch (planE)
            {
                case "0" :referencia = "087";
                    break;

                case "1":referencia = "082";
                    break;

                case "2":referencia = "109";
                    break;

                case "3":referencia = "108";
                    break;

                case "4":referencia = "082";
                    break;

                case "5":referencia = "057";
                    break;

                default:
                    break;
            }
            return referencia;
        }

    }
}