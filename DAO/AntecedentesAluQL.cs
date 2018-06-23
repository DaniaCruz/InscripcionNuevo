using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using Conect.DTO;
using Conect.Utileria;

namespace Conect.DAO
{
    public class AntecedentesAluQL : ADAOSocioEconomico<AntecedentesAluPDTO>
    {
        UConexion c;
        public SqlCommand command;
        public SqlConnection con;
        public string qwery;
        public AntecedentesAluQL()
        {
            c = new UConexion();
        }
        public void Insert(AntecedentesAluPDTO obj)
        {
            try
            {
                con = new SqlConnection();
                con = c.Conexion();
                using (con)
                {
                    int x = 0;
                    qwery = "INSERT AntecedentesAlu values(@alp_Empleo,@alp_EstatusJefeHogar,@alp_NoHijosDepeEcon,@alp_NoPersonasDepeIngr,@alu_ID,@alp_PersonaVives,@alp_NoDiasTrabajaJefeH,@alp_DineroMensualPorTrabajar,@alp_IngresoAlumno)";
                    command = new SqlCommand(qwery, con);
                    command.Parameters.Add("@alp_Empleo", SqlDbType.VarChar).Value = obj.alp_Empleo;
                    command.Parameters.Add("@alp_EstatusJefeHogar", SqlDbType.Bit).Value = obj.alp_EstatusJefeHogar;
                    command.Parameters.Add("@alp_NoHijosDepeEcon", SqlDbType.Int).Value = obj.alp_NoHijosDepeEcon;
                    command.Parameters.Add("@alp_NoPersonasDepeIngr", SqlDbType.Int).Value = obj.alp_NoPersonasDepeIngr;
                    command.Parameters.Add("@alu_ID", SqlDbType.Int).Value = obj.alu_ID;
                    command.Parameters.Add("@alp_PersonaVives", SqlDbType.VarChar).Value = obj.alp_PersonaVives;
                    command.Parameters.Add("@alp_NoDiasTrabajaJefeH", SqlDbType.Int).Value = obj.alp_NoDiasTrabajaJefeH;
                    command.Parameters.Add("@alp_DineroMensualPorTrabajar", SqlDbType.Money).Value = obj.alp_DineroMensualPorTrabajar;
                    command.Parameters.Add("@alp_IngresoAlumno", SqlDbType.Money).Value = obj.alp_IngresoAlumno;
                    x = command.ExecuteNonQuery();
                    con.Close();
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void Update(AntecedentesAluPDTO obj)
        {
            //try
            //{
            con = new SqlConnection();
            con = c.Conexion();
            using (con)
            {
                    int x = 0;
                    qwery = "update AntecedentesAlu set alp_Empleo = @alp_Empleo, alp_EstatusJefeHogar =@alp_EstatusJefeHogar,alp_NoHijosDepeEcon = @alp_NoHijosDepeEcon,alp_NoPersonasDepeIngr = @alp_NoPersonasDepeIngr, alp_PersonaVives = @alp_PersonaVives,alp_NoDiasTrabajaJefeH =@alp_NoDiasTrabajaJefeH, alp_DineroMensualPorTrabajar = @alp_DineroMensualPorTrabajar, alp_IngresoAlumno = @alp_IngresoAlumno where alu_ID = @alu_ID";
                    command = new SqlCommand(qwery, con);
                    command.Parameters.Add("@alp_Empleo", SqlDbType.VarChar).Value = obj.alp_Empleo;
                    command.Parameters.Add("@alp_EstatusJefeHogar", SqlDbType.Bit).Value = obj.alp_EstatusJefeHogar;
                    command.Parameters.Add("@alp_NoHijosDepeEcon", SqlDbType.Int).Value = obj.alp_NoHijosDepeEcon;
                    command.Parameters.Add("@alp_NoPersonasDepeIngr", SqlDbType.Int).Value = obj.alp_NoPersonasDepeIngr;
                    command.Parameters.Add("@alp_PersonaVives", SqlDbType.VarChar).Value = obj.alp_PersonaVives;
                    command.Parameters.Add("@alp_NoDiasTrabajaJefeH", SqlDbType.Int).Value = obj.alp_NoDiasTrabajaJefeH;
                    command.Parameters.Add("@alp_DineroMensualPorTrabajar", SqlDbType.Money).Value = obj.alp_DineroMensualPorTrabajar;
                    command.Parameters.Add("@alp_IngresoAlumno", SqlDbType.Money).Value = obj.alp_IngresoAlumno;
                    command.Parameters.Add("@alu_ID", SqlDbType.Int).Value = obj.alu_ID;
                    x = command.ExecuteNonQuery();
                    con.Close();
                }
            //}
            //catch (Exception)
            //{

            //    throw;
            //}
        }
        public bool SelectExiste(AntecedentesAluPDTO obj)
        {
            bool result = false;
            try
            {
                con = new SqlConnection();
                con = c.Conexion();
                using (con)
                {
                    qwery = "SELECT CAST(COUNT(1) AS BIT) FROM [AntecedentesAlu] WHERE (alu_ID = @alu_ID)";
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
                    qwery = "SELECT CAST(COUNT(1) AS BIT) FROM [AntecedentesAlu] WHERE (alu_ID = @alu_ID)";
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
                    string query = "SELECT * FROM AntecedentesAlu where alu_ID = @alu_ID";
                    command = new SqlCommand(query, con);
                    command.Parameters.Add("@alu_ID", SqlDbType.Int).Value = id;
                    dt.Load(command.ExecuteReader());
                con.Close();
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