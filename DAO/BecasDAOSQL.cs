using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Conect.Utileria;

namespace Conect.DTO
{
    public class BecasDAOSQL : ADAOSocioEconomico<BecasDTO>
    {
        UConexion c;
        public SqlConnection con;

        public SqlCommand command;

        public string qwery;
        public BecasDAOSQL()
        {
            c = new UConexion();
        }

        public void Insert(BecasDTO obj)
        {
            try
            {
                con = new SqlConnection();
                con = c.Conexion();
                using (con)
                {
                    int x = 0;
                    qwery = "INSERT Becas VALUES(@bec_EstatusBecado,@bec_SuspensionEstudios,@bec_BecadoAntes,@bec_EstatusOportunidades,@alu_ID,@bec_ID)";

                    command = new SqlCommand(qwery, con);
                    command.Parameters.Add("@bec_EstatusBecado", SqlDbType.VarChar).Value = obj.bec_EstatusBecado;
                    command.Parameters.Add("@bec_SuspensionEstudios", SqlDbType.Bit).Value = obj.bec_SuspenciosEstudios;
                    command.Parameters.Add("@bec_BecadoAntes", SqlDbType.Bit).Value = obj.bec_BecadoAntes;
                    command.Parameters.Add("@bec_EstatusOportunidades", SqlDbType.Bit).Value = obj.bec_EstatusOportunidades;
                    command.Parameters.Add("@alu_ID", SqlDbType.Int).Value = obj.alu_ID;
                    command.Parameters.Add("@bec_ID", SqlDbType.Int).Value = obj.bec_ID;
                    x = command.ExecuteNonQuery();
                    con.Close();
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void Update(BecasDTO obj)
        {
            try
            {
                con = new SqlConnection();
                con = c.Conexion();
                using (con)
                {
                    int x = 0;
                    qwery = "UPDATE Becas set bec_EstatusBecado = @bec_EstatusBecado, bec_SuspensionEstudios = @bec_SuspensionEstudios, bec_BecadoAntes = @bec_BecadoAntes, bec_EstatusOportunidades = @bec_EstatusOportunidades, bec_ID = @bec_ID where alu_ID = @alu_ID";
                    command = new SqlCommand(qwery, con);
                    command.Parameters.Add("@bec_EstatusBecado", SqlDbType.VarChar).Value = obj.bec_EstatusBecado;
                    command.Parameters.Add("@bec_SuspensionEstudios", SqlDbType.Bit).Value = obj.bec_SuspenciosEstudios;
                    command.Parameters.Add("@bec_BecadoAntes", SqlDbType.Bit).Value = obj.bec_BecadoAntes;
                    command.Parameters.Add("@bec_EstatusOportunidades", SqlDbType.Bit).Value = obj.bec_EstatusOportunidades;
                    command.Parameters.Add("@bec_ID", SqlDbType.Int).Value = obj.bec_ID;
                    command.Parameters.Add("@alu_ID", SqlDbType.Int).Value = obj.alu_ID;
                    x = command.ExecuteNonQuery();
                    con.Close();
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
        public bool SelectExiste(BecasDTO obj)
        {
            bool result = false;
            try
            {
                con = new SqlConnection();
                con = c.Conexion();
                using (con)
                {
                    qwery = "SELECT CAST(COUNT(1) AS BIT) FROM [Becas] WHERE (alu_ID = @alu_ID)";
                    command = new SqlCommand(qwery, con);
                    command.Parameters.Add("@alu_ID", SqlDbType.Int).Value = obj.alu_ID;
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
        public bool SelectExiste(int id)
        {
            bool result = false;
            try
            {
                con = new SqlConnection();
                con = c.Conexion();
                using (con)
                {
                    qwery = "SELECT CAST(COUNT(1) AS BIT) FROM [Becas] WHERE (alu_ID = @alu_ID)";
                    command = new SqlCommand(qwery, con);
                    command.Parameters.Add("@alu_ID", SqlDbType.Int).Value = id;
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
        public DataTable GetTabla(int id)
        {
            DataTable dt = null;
            try
            {
                dt = new DataTable();
                con = new SqlConnection();
                con = c.Conexion();
                using (con)
                {
                    string query = "SELECT * FROM Becas where alu_ID = @alu_ID";
                    command = new SqlCommand(query, con);
                    command.Parameters.Add("@alu_ID", SqlDbType.Int).Value = id;
                    dt.Load(command.ExecuteReader());
                }
            }
            catch (Exception)
            {
                throw;
            }
            return dt;
        }
    }
}