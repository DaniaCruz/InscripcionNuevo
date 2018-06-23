using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Conect.Utileria
{
    public class UConexion
    {
        public SqlConnection Conexion()
        {

            string cadena = ConfigurationManager.ConnectionStrings["Cadena1"].ConnectionString;
            SqlConnection c = new SqlConnection(cadena);
            try
            {
                c.Open();
            }
            catch (Exception ex)
            {
         
            }
            return c;
        }
    }
}