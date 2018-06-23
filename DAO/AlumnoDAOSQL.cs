using Conect.DTO;
using Conect.Utileria;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Conect.DAO
{
    public class AlumnoDAOSQL :IAdaoFicha<AlumnoDTO>
    {
        public SqlCommand comando { set; get; }
        public UConexion conexion { set; get; }
        public string instruccion { set; get; }
        
        public int Insert(AlumnoDTO obj)
        {
            conexion = new UConexion();
            using (conexion.Conexion())
            {
                int id = 0;
                
                instruccion = "INSERT INTO Alumno(lei_Id,dis_ID,alu_Edad)";
                instruccion += "OUTPUT INSERTED.alu_ID VALUES(@lei_Id,@dis_ID,@alu_Edad);";
                comando = new SqlCommand(instruccion, conexion.Conexion());

                comando.Parameters.Add("@lei_Id",SqlDbType.Int).Value=obj.lei_ID;
                comando.Parameters.Add("@dis_ID", SqlDbType.Int).Value = obj.dis_ID;
                comando.Parameters.Add("@alu_Edad", SqlDbType.Int).Value = obj.alu_Edad;    
                id= int.Parse(comando.ExecuteScalar().ToString());
                conexion.Conexion().Close();
                return id;
            }
        }
        public void Update(AlumnoDTO obj, int id)
        {
            conexion = new UConexion();
            using (conexion.Conexion())
            {
          
                instruccion = "UPDATE Alumno SET lei_Id=@lei_Id,dis_ID=@dis_ID,alu_Edad=@alu_Edad ";
                instruccion+= " WHERE alu_ID=@alu_ID";

                comando = new SqlCommand(instruccion, conexion.Conexion());
                comando.Parameters.Add("@lei_Id", SqlDbType.Int).Value = obj.lei_ID;
                comando.Parameters.Add("@dis_ID", SqlDbType.Int).Value = obj.dis_ID;
                comando.Parameters.Add("@alu_Edad", SqlDbType.Int).Value = obj.alu_Edad;
                comando.Parameters.Add("@alu_ID", SqlDbType.Int).Value = id;
               comando.ExecuteNonQuery();
                conexion.Conexion().Close();
            }
        }
     

        public bool SelectExiste(int id)
        {
            bool result = false;
            conexion = new UConexion();
            SqlConnection con = conexion.Conexion();
            using (con)
            {
                instruccion = "SELECT CAST (COUNT(1) AS BIT) FROM [Alumno] WHERE (alu_ID = @alu_ID)";
                comando = new SqlCommand(instruccion, con);
                comando.Parameters.Add("@alu_ID", SqlDbType.Int).Value = id;
                result = Convert.ToBoolean(comando.ExecuteScalar());
                conexion.Conexion().Close();
            }
            return result;
        }
        internal bool SelectExisteMatricula(string matricula)
        {
            bool result = false;
            conexion = new UConexion();
            SqlConnection con = conexion.Conexion();
            using (con)
            {
                instruccion = "SELECT CAST (COUNT(1) AS BIT) FROM [Alumno] WHERE (alu_NumControl = @alu_NumControl)";
                comando = new SqlCommand(instruccion, con);
                comando.Parameters.Add("@alu_NumControl", SqlDbType.VarChar).Value = matricula;
                result = Convert.ToBoolean(comando.ExecuteScalar());
                conexion.Conexion().Close();
            }
            return result;
        }
        public int ObtenerID(string matricula)
        {
            conexion = new UConexion();
            SqlConnection con = conexion.Conexion();
            int id = 0;
            using (con)
            {
                instruccion = "SELECT alu_ID from Alumno WHERE (alu_NumControl = @alu_NumControl)";
                comando = new SqlCommand(instruccion, con);
                comando.Parameters.Add("@alu_NumControl", SqlDbType.VarChar).Value = matricula;
                SqlDataReader rd = comando.ExecuteReader();
                if (rd.HasRows)
                {
                    while (rd.Read())
                    {
                        id = rd.GetInt32(0);
                    }

                }
                conexion.Conexion().Close();

            }
            return id;
        }
        public DataTable GetTabla(int id)
        {
            DataTable dt = new DataTable();
            try
            {
                conexion = new UConexion();
                SqlConnection con = conexion.Conexion();
                using (con)
                {
                    string query = "SELECT * FROM Alumno INNER JOIN Especialidades ON Alumno.esp_ID=Especialidades.esp_ID ";
                           query+="WHERE alu_ID = @alu_ID";

                    comando = new SqlCommand(query, con);
                    comando.Parameters.Add("@alu_ID", SqlDbType.Int).Value = id;
                    dt.Load(comando.ExecuteReader());
                    con.Close();
                }
            }
            catch (Exception)
            {
                throw;
            }
            return dt;
        }





        #region Implementado por la Iterfaz (No se usa aqui)
        public void Insert(AlumnoDTO obj, int id)
        {
            throw new NotImplementedException();
        }
        #endregion
    }
}