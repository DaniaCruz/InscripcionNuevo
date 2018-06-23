using Conect.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Conect.Utileria
{
    public class UControl
    {
        public static DataSet estado;
        public static DataSet muni;
        public static DataSet carreras;
        public static DataSet modal;
        public static DataSet l_Ind;
        public static DataSet discapacidad;
        public static DataSet esc;
        public static DataSet ocupaciones;
        public static DataSet propedeuticos;
        public SqlCommand comando;
        public SqlConnection con;
        public string instruccion;

        public UControl()
        {

            Estados();
            Discapacidad();
            LenguaIndigena();
            
          
        }
    
        private void Propedeutico()
        {
            UConexion co = new UConexion();
            propedeuticos = new DataSet();
            SqlDataAdapter adaptador = new SqlDataAdapter("select * from Propedeutico ", co.Conexion());
            adaptador.Fill(propedeuticos, "Propedeutico");
            co.Conexion().Close();
        }
        private void Ocupacion()
        {
            UConexion co = new UConexion();
            ocupaciones = new DataSet();
            SqlDataAdapter adaptador = new SqlDataAdapter("select * from Ocupacion ORDER BY ocu_Nombre ASC", co.Conexion());
            adaptador.Fill(ocupaciones, "Ocupacion");
            co.Conexion().Close();
        }
        private DataSet Estados()
        {
            UConexion co = new UConexion();
             estado = new DataSet();
            SqlDataAdapter adaptador = new SqlDataAdapter("select est_ID,est_Nombre from Estados ORDER BY est_Nombre ASC", co.Conexion());
            adaptador.Fill(estado, "Estados");
            co.Conexion().Close();
            return estado;
        }

        public DataSet Estados2()
        {
            UConexion co = new UConexion();
            DataSet estado = new DataSet();
            SqlDataAdapter adaptador = new SqlDataAdapter("select est_ID,est_Nombre from Estados ORDER BY est_Nombre ASC", co.Conexion());
            adaptador.Fill(estado, "Estados");
            co.Conexion().Close();
            return estado;
        }

        private void Carreras()
        {
            UConexion co = new UConexion();
            carreras = new DataSet();
            SqlDataAdapter adaptador = new SqlDataAdapter("select esp_ID,esp_Nombre from Especialidades ", co.Conexion());
            adaptador.Fill(carreras, "Especialidades");
            co.Conexion().Close();
        }

        public DataTable Ocupaciones()
        {
            DataTable dt = new DataTable();
            try
            {
                UConexion conexion = new UConexion();
                SqlConnection con = conexion.Conexion();
                using (con)
                {
                    string query = "SELECT * FROM Ocupacion";
                    comando = new SqlCommand(query, con);
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

        public DataSet municipios()
        {
            UConexion co = new UConexion();
            muni = new DataSet();
            SqlDataAdapter adaptador = new SqlDataAdapter("select mun_ID,mun_Nombre from Municipios ORDER BY mun_Nombre ASC ",co.Conexion());
            adaptador.Fill(muni, "Municipios");
            co.Conexion().Close();
            return muni;
        }

        public DataSet Municipios(string wh)
        {
            UConexion co = new UConexion();
            muni = new DataSet();
            SqlDataAdapter adaptador = new SqlDataAdapter("select mun_ID,mun_Nombre from Municipios where est_ID= " + wh+" ORDER BY mun_Nombre ASC", co.Conexion());
            adaptador.Fill(muni, "Municipios");
            co.Conexion().Close();
            return muni;
        }

        public DataSet Municipios2(string wh)
        {
            UConexion co = new UConexion();
            DataSet muni = new DataSet();
            SqlDataAdapter adaptador = new SqlDataAdapter("select mun_ID,mun_Nombre from Municipios where est_ID= " + wh+" ORDER BY mun_Nombre ASC", co.Conexion());
            adaptador.Fill(muni, "Municipios");
            co.Conexion().Close();
            return muni;
        }
        public DataSet Escuela(int wh)
        {
            UConexion co = new UConexion();
             esc = new DataSet();

            SqlDataAdapter adaptador = new SqlDataAdapter("select esc_ID,esc_Nombre from Escuelas where mun_ID= " + wh+ " ORDER BY esc_nombre ASC", co.Conexion());
            adaptador.Fill(esc, "Escuelas");
            co.Conexion().Close();
            return esc;
        }

        public DataSet Escuelas()
        {
            UConexion co = new UConexion();
            esc = new DataSet();

            SqlDataAdapter adaptador = new SqlDataAdapter("select esc_ID,esc_Nombre from Escuelas ORDER BY esc_nombre ASC", co.Conexion());
            adaptador.Fill(esc, "Escuelas");
            co.Conexion().Close();
            return esc;
        }
        private void Modalidad()
        {
            UConexion co = new UConexion();
            modal = new DataSet();
            SqlDataAdapter adaptador = new SqlDataAdapter("select mod_ID,mod_Nombre from Modalidad ", co.Conexion());
            adaptador.Fill(modal, "Modalidad");
            co.Conexion().Close();
        }
        private void Discapacidad()
        {
            UConexion co = new UConexion();
            discapacidad = new DataSet();
            SqlDataAdapter adaptador = new SqlDataAdapter("select dis_ID,dis_Nombre from Discapacidad ORDER BY dis_Nombre ASC ", co.Conexion());
            adaptador.Fill(discapacidad, "Discapacidad");
            co.Conexion().Close();
        }
        private void LenguaIndigena()
        {
            UConexion co = new UConexion();
            l_Ind = new DataSet();
            SqlDataAdapter adaptador = new SqlDataAdapter("select lei_ID,lei_Nombre from LenguaIndigena ORDER BY lei_Nombre ASC", co.Conexion());
            adaptador.Fill(l_Ind, "LenguaIndigena");
            co.Conexion().Close();
        }
        public DataTable DatosAspirante(int nx)
        {
            UConexion co = new UConexion();
            DataTable tabla = new DataTable();
            string instr = "select alu_Carrera,alu_SegundaOpcion,alu_TerceraOpcion,mod_ID,alu_Nombre,";
            instr += "alu_ApellidoPaterno,alu_ApellidoMaterno,AlumCom.alc_Curp,alc_EdoCivil,alu_Sexo,alu_Edad,";
            instr += "dis_Id,Alumno.lei_Id,alc_FechaNac,est_Natal_ID,mun_Natal_ID,est_Proced_ID,mun_Proced_ID,";
            instr += "alc_Localidad,alc_CodPostal,alc_Colonia,alc_Calle,alc_NumExt,alc_NumInt,alc_Tel,alc_Celular,";
            instr += "alc_correo,alc_Facebook,AlumCom.est_Escue_ID,mun_Escue_ID,esc_ID,pro_ID,alc_AnioTerminoBachi,alc_PromBachi ";
            instr += "from Alumno inner join AlumCom on Alumno.alu_ID= AlumCom.alu_ID where Alumno.alu_ID=" + nx;
            SqlCommand cmd = new SqlCommand(instr, co.Conexion());
            SqlDataReader rd = cmd.ExecuteReader();
            tabla.Load(rd);
            co.Conexion().Close();
            return tabla;
        }
        
        /// <summary>
        /// REgistrar formulario contestado
        /// </summary>
        /// <param name="enc_ID"></param>
        /// <param name="alu_ID"></param>
       public void RegistrarFormulario(int enc_ID, int alu_ID){
            UConexion co = new UConexion();
            string instr = "insert into Encuestas values("+enc_ID+",'',1,"+alu_ID+")";
            SqlCommand cmd = new SqlCommand(instr, co.Conexion());
            cmd.ExecuteNonQuery();
            co.Conexion().Close();
        }
        /// <summary>
        /// Metodo para obtener los formularios con 
        /// registros
        /// </summary>
        /// <returns></returns>
        public int[] RegFormularios(int id) {
         UConexion co=new UConexion();
          int[] x = new int[10];
         
         
        string instr = "select  enc_ID from Encuestas where alu_ID="+id;
            SqlCommand cmd = new SqlCommand(instr, co.Conexion());
        
           
           
            SqlDataReader R = cmd.ExecuteReader();
            co.Conexion().Close();
            int y = 0;
            if (R.HasRows)
            {
                while (R.Read())
                {
                    x[y] = R.GetInt32(0);
                    y++;
                }
            }
            return x;
        }
        

    }
}