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
    public class AlumComDAOSQL : IAdaoFicha<AlumComDTO>
    {
        public SqlCommand comando { set; get; }
        public UConexion conexion { set; get; }
        public string instruccion { set; get; }

        public void Insert(AlumComDTO obj, int id)
        {
            conexion = new UConexion();
            using (conexion.Conexion())
            {
                int x = 0;
                comando = new SqlCommand();
                instruccion = "INSERT INTO AlumCom(alu_ID,alc_Curp,alc_Correo,alc_Direccion,alc_Colonia,alc_LugarProce,";
                instruccion += "alc_CodPostal,est_Proced_ID,alc_FechaNac,mun_Natal_ID, est_Natal_ID,mun_Proced_ID,alc_EdoCivil,";
                instruccion += "alc_Celular, alc_Tel,alc_Facebook)";
                instruccion += " VALUES(@alu_ID,@alc_Curp,@alc_Correo,@alc_Direccion,@alc_Colonia,@alc_LugarProce,";
                instruccion += "@alc_CodPostal,@est_Proced_ID,@alc_FechaNac,@mun_Natal_ID,@est_Natal_ID,@mun_Proced_ID,@alc_EdoCivil,";
                instruccion += "@alc_Celular,@alc_Tel,@alc_Facebook)";

                comando = new SqlCommand(instruccion, conexion.Conexion());
                comando.Parameters.Add("@alu_ID", SqlDbType.Int).Value = id;
                comando.Parameters.Add("@alc_Curp", SqlDbType.VarChar).Value = obj.alc_Curp.ToUpper();
                comando.Parameters.Add("@alc_Correo", SqlDbType.VarChar).Value = obj.alc_Correo;
                comando.Parameters.Add("@alc_Direccion", SqlDbType.VarChar).Value = obj.alc_Calle.ToUpper()+" "+ obj.alc_NumInt.ToUpper()+" "+obj.alc_NumExt.ToUpper();
                comando.Parameters.Add("@alc_Colonia", SqlDbType.VarChar).Value = obj.alc_Colonia.ToUpper();
                comando.Parameters.Add("@alc_LugarProce", SqlDbType.VarChar).Value = obj.alc_Localidad.ToUpper();

                comando.Parameters.Add("@alc_CodPostal", SqlDbType.VarChar).Value = obj.alc_CodPostal;
                comando.Parameters.Add("@est_Proced_ID", SqlDbType.Int).Value = obj.est_Proced_ID;
                comando.Parameters.Add("@alc_FechaNac", SqlDbType.DateTime).Value = obj.alc_FechaNac;
                comando.Parameters.Add("@mun_Natal_ID", SqlDbType.Int).Value = obj.mun_Natatl_ID;
                comando.Parameters.Add("@est_Natal_ID", SqlDbType.Int).Value = obj.est_Natatl_ID;
                comando.Parameters.Add("@mun_Proced_ID", SqlDbType.Int).Value = obj.mun_Proced_ID;
                comando.Parameters.Add("@alc_EdoCivil", SqlDbType.Char).Value = obj.alc_EdoCivil;
                comando.Parameters.Add("@alc_Celular", SqlDbType.VarChar).Value = obj.alc_Celular;
                comando.Parameters.Add("@alc_Tel", SqlDbType.VarChar, 15).Value = obj.alc_Tel;
                comando.Parameters.Add("@lei_ID", SqlDbType.Int).Value = obj.lei_ID;
                comando.Parameters.Add("@alc_Facebook", SqlDbType.VarChar).Value = obj.alc_Fcaebook.ToUpper();
                comando.Parameters.Add("@alc_LugarNaci", SqlDbType.VarChar).Value = obj.alc_LugarNaci;

                x = comando.ExecuteNonQuery();
                conexion.Conexion().Close();
            }
        }
        public void Update(AlumComDTO obj, int id)
        {
            int valor = 0;
            conexion = new UConexion();
            using (conexion.Conexion())
            {
                instruccion = "UPDATE AlumCom SET alc_Curp=@alc_Curp, alc_Correo=@alc_Correo, alc_Direccion=@alc_Direccion, alc_Colonia=@alc_Colonia,";
                instruccion += "alc_LugarProce=@alc_LugarProce, alc_CodPostal=@alc_CodPostal,";
                instruccion += "est_Proced_ID=@est_Proced_ID, alc_FechaNac=@alc_FechaNac, mun_Natal_ID=@mun_Natal_ID, est_Natal_ID=@est_Natal_ID,";
                instruccion += "mun_Proced_ID=@mun_Proced_ID,alc_EdoCivil=@alc_EdoCivil,alc_LugarNaci=@alc_LugarNaci,alc_Celular=@alc_Celular,";
                instruccion += "alc_Tel=@alc_Tel,lei_ID=@lei_ID,alc_Facebook=@alc_Facebook WHERE alu_ID=@alu_ID";
                comando = new SqlCommand(instruccion, conexion.Conexion());
                comando.Parameters.Add("@alc_Curp", SqlDbType.VarChar).Value = obj.alc_Curp.ToUpper();
                comando.Parameters.Add("@alc_Correo", SqlDbType.VarChar).Value = obj.alc_Correo;
                comando.Parameters.Add("@alc_Direccion", SqlDbType.VarChar).Value = obj.alc_Calle.ToUpper() + " " + obj.alc_NumInt.ToUpper() + " " + obj.alc_NumExt.ToUpper();
                comando.Parameters.Add("@alc_Colonia", SqlDbType.VarChar).Value = obj.alc_Colonia.ToUpper();
                comando.Parameters.Add("@alc_LugarProce", SqlDbType.VarChar).Value = obj.alc_Localidad.ToUpper();
                comando.Parameters.Add("@alc_CodPostal", SqlDbType.VarChar).Value = obj.alc_CodPostal;
                comando.Parameters.Add("@est_Proced_ID", SqlDbType.Int).Value = obj.est_Proced_ID;
                comando.Parameters.Add("@alc_FechaNac", SqlDbType.DateTime).Value = obj.alc_FechaNac;
                comando.Parameters.Add("@mun_Natal_ID", SqlDbType.Int).Value = obj.mun_Natatl_ID;
                comando.Parameters.Add("@est_Natal_ID", SqlDbType.Int).Value = obj.est_Natatl_ID;
                comando.Parameters.Add("@mun_Proced_ID", SqlDbType.Int).Value = obj.mun_Proced_ID;
                comando.Parameters.Add("@alc_EdoCivil", SqlDbType.Char).Value = obj.alc_EdoCivil;

                // comando.Parameters.Add("@alc_TelCasa", SqlDbType.VarChar).Value = obj.alc_TelCasa;

                comando.Parameters.Add("@alc_Celular", SqlDbType.VarChar).Value = obj.alc_Celular;
                comando.Parameters.Add("@alc_Tel", SqlDbType.VarChar, 15).Value = obj.alc_Celular;
                comando.Parameters.Add("@lei_ID", SqlDbType.Int).Value = obj.lei_ID;
                comando.Parameters.Add("@alc_Facebook", SqlDbType.VarChar).Value = obj.alc_Fcaebook.ToUpper();
                comando.Parameters.Add("@alc_LugarNaci", SqlDbType.VarChar).Value = obj.alc_LugarNaci;
                comando.Parameters.Add("@alu_ID", SqlDbType.Int).Value = id;

                valor = comando.ExecuteNonQuery();
                conexion.Conexion().Close();
            }
        }

        public void UpdateEsc(AlumComDTO obj, int id)
        {
            conexion = new UConexion();
            using (conexion.Conexion())
            {
                int x = 0;
                comando = new SqlCommand();

                instruccion = "UPDATE AlumCom SET alc_PromBachi=@alc_PromBachi, alc_AnioTerminoBachi=@alc_AnioTerminoBachi, ";
                instruccion += "mun_Escue_ID=@mun_Escue_ID,est_Escue_ID=@est_Escue_ID,esc_ID=@esc_ID,alc_EspBachill=@alc_EspBachill ";
                instruccion += "WHERE alu_ID=@alu_ID";
            

                comando = new SqlCommand(instruccion, conexion.Conexion());


                comando.Parameters.Add("@alc_PromBachi", SqlDbType.VarChar).Value = obj.alc_PromBachi;
                comando.Parameters.Add("@alc_EspBachill", SqlDbType.VarChar).Value = obj.alc_EspBachill;
                comando.Parameters.Add("@mun_Escue_ID", SqlDbType.Int).Value = obj.mun_Escue_ID;
                comando.Parameters.Add("@est_Escue_ID", SqlDbType.Int).Value = obj.est_Escue_ID;
                comando.Parameters.Add("@esc_ID", SqlDbType.Int).Value = obj.esc_ID;
                comando.Parameters.Add("@alc_AnioTerminoBachi", SqlDbType.VarChar).Value = obj.alc_AnioTerminoBachi;
                comando.Parameters.Add("@alu_ID", SqlDbType.Int).Value = id;
                x = comando.ExecuteNonQuery();
            }
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
                    string query = "SELECT * FROM AlumCom where alu_ID = @alu_ID";
                    comando = new SqlCommand(query, con);
                    comando.Parameters.Add("@alu_ID", SqlDbType.Int).Value = id;
                    dt.Load(comando.ExecuteReader());
                    con.Close();
                }
            }
            catch (Exception)
            {
                throw; }

            return dt;
        }
            public void UpdateGenerales(AlumComDTO obj, int id)
        {
            int valor = 0;
            conexion = new UConexion();
            using (conexion.Conexion())
            {
                instruccion = "UPDATE AlumCom SET alc_TipoSangre=@alc_TipoSangre, alc_CveFiliacion=@alc_CveFiliacion, alc_Tutor=@alc_Tutor,";
                instruccion += "alc_ColTut =@alc_ColTut, alc_DirTutor=@alc_DirTutor, est_Tutor_ID=@est_Tutor_ID, mun_Tutor_ID=@mun_Tutor_ID,";
                instruccion += "alc_TelTutor =@alc_TelTutor WHERE alu_ID=@alu_ID";

                comando = new SqlCommand(instruccion, conexion.Conexion());

                comando.Parameters.Add("@alc_TipoSangre", SqlDbType.VarChar).Value = obj.alc_TipoSangre.ToUpper();
                comando.Parameters.Add("@alc_CveFiliacion", SqlDbType.VarChar).Value = obj.alc_CveFiliacion.ToUpper();
                comando.Parameters.Add("@alc_Tutor", SqlDbType.VarChar).Value = obj.alc_Tutor.ToUpper();
                comando.Parameters.Add("@alc_ColTut", SqlDbType.VarChar).Value = obj.alc_ColTut.ToUpper();
                comando.Parameters.Add("@alc_DirTutor", SqlDbType.VarChar).Value = obj.alc_DirTutor.ToUpper();
                comando.Parameters.Add("@est_Tutor_ID",SqlDbType.VarChar).Value=obj.est_Tutor_ID;
                comando.Parameters.Add("@mun_Tutor_ID", SqlDbType.Int).Value = obj.mun_Tutor_ID;
                comando.Parameters.Add("@alc_TelTutor", SqlDbType.VarChar).Value = obj.alc_TelTutor;
                comando.Parameters.Add("@alu_ID", SqlDbType.Int).Value = obj.alu_ID;

                valor = comando.ExecuteNonQuery();
                conexion.Conexion().Close();
            }
        }
        }
    
      


}
