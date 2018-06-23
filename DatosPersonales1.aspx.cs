using Conect.DAO;
using Conect.DTO;
using Conect.Utileria;
using Inscripcion.DAO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inscripcion
{
    public partial class DatosPersonales1 : System.Web.UI.Page ,IAspirante
    {
        UControl con = new UControl();
        CMunicipiosDAO muni = new CMunicipiosDAO();
        CeEstadosDAO est = new CeEstadosDAO();
        AlumnoDAOSQL alu = new AlumnoDAOSQL();
        EncuestasDAO enc = new EncuestasDAO();
        public static int alu_ID=0;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                MaintainScrollPositionOnPostBack = true;


                alu_ID = alu.ObtenerID(Session["alu_NumControl"].ToString());
                if (alu_ID != 0)
                {
                    Session["alu_ID"] = alu_ID;
                    ((Menu)Master).camabiarcolor(1);
                    if (!IsPostBack)
                    {

                        
                        lei_ID.Visible = false;
                        EstablecerInicio();

                        if (enc.EncuestaContestada(alu_ID, 1))//si existe el alumno
                        {
                            btnGuardar.Text = "ACTUALIZAR";
                            BackUpTablas(alu_ID);//ESTE METODO RECUPERA TODO DE LAS TABLAS NO SE LE TIENE QUE MOVER NADA SOLO TERMINA DE IGUALAR COMPONENTES
                        }

                        else
                        {
                            btnGuardar.Text = "GUARDAR";
                            RecuperarAlumno(alu_ID);

                        }

                    }

                }
            }
            catch (Exception)
            {

                throw;
            }
           

            
        }

        public void EstablecerInicio()
        {
            LlenarCombo(dis_ID, UControl.discapacidad);
            LlenarCombo(lei_ID, UControl.l_Ind);
            LlenarCombo(est_Natal_ID, UControl.estado);
            LlenarCombo(mun_Natal_ID, con.Municipios(est_Natal_ID.SelectedValue));
            LlenarCombo(est_Proced_ID, UControl.estado);
            LlenarCombo(mun_Proced_ID, con.Municipios(est_Natal_ID.SelectedValue));

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                FacadeAspirante fa = new FacadeAspirante(this);
                if (IsValid)
                {
                    if (btnGuardar.Text == "GUARDAR")
                    {
                        fa.InsertAlumCom(alu_ID);
                        fa.InsertAlumno();
                        enc.Insert(1, alu_ID);

                        Response.Redirect("DatosGenerales.aspx");
                    }
                    else if (btnGuardar.Text == "ACTUALIZAR")
                    {
                       
                     
                        fa.LlamarUpdate(alu_ID);

                    }




                }



            }
            catch (Exception)
            {

                throw;
            }
            
            
        }


        #region RECUPERA LOS DATOS DE LA BASE DE DATOS
        DataTable dt;
        public void RecuperarAlumno(int id)
        {
           
                AlumnoDAOSQL a = new AlumnoDAOSQL();
                dt = a.GetTabla(id);
                GetDataAlumno(dt);
       }
        void BackUpTablas(int id)
        {
            AlumnoDAOSQL a = new AlumnoDAOSQL();
            dt = a.GetTabla(id);
            GetDataAlumno(dt);
            AlumComDAOSQL ac = new AlumComDAOSQL();
            dt = ac.GetTabla(id);
            GetDataAlumCom(dt);


        }
        public void GetDataAlumno(DataTable tbl)
        {

           
            DataRow columna = tbl.Rows[0];

         
            alu_Esp.Text= columna["esp_Nombre"].ToString();
            alu_NumControl.Text = columna["alu_NumControl"].ToString();
            alu_Nombre.Text = columna["alu_Nombre"].ToString() +" " +columna["alu_ApellidoPaterno"].ToString() +" "+ columna["alu_ApellidoMaterno"].ToString();
            alc_edad.Text = columna["alu_Edad"].ToString();
            
            if (columna["dis_ID"].ToString()!="1" && columna["dis_ID"].ToString() != "")
            {
                rbSi.Selected = true;
                dis_ID.Visible = true;
                dis_ID.SelectedValue = dis_ID.Items.FindByValue(columna["dis_ID"].ToString()).Value;
            }
            else { rbNo.Selected = true; }


            if (columna["lei_ID"].ToString() != "1" && columna["lei_ID"].ToString() != "") {
                rSi.Selected = true;
                lei_ID.Visible = true;
                lei_ID.SelectedValue = lei_ID.Items.FindByValue(columna["lei_ID"].ToString()).Value;
            }
            else {rNo.Selected = true;}

        }
        public void GetDataAlumCom(DataTable tbl)
        {
            DataRow columna = tbl.Rows[0];
            alc_Curp.Text = columna["alc_Curp"].ToString();
            alc_EdoCivil.SelectedValue = alc_EdoCivil.Items.FindByValue(columna["alc_EdoCivil"].ToString()).Value;
            alc_FechaNac.ReadOnly = false;
            DateTime dt = Convert.ToDateTime(columna["alc_FechaNac"].ToString());
            alc_FechaNac.Text = dt.ToShortDateString();

            est_Natal_ID.SelectedValue = est_Natal_ID.Items.FindByValue(columna["est_Natal_ID"].ToString()).Value;
            LlenarCombo(mun_Natal_ID, con.Municipios(est_Natal_ID.SelectedValue));
            mun_Natal_ID.SelectedValue = mun_Natal_ID.Items.FindByValue(columna["mun_Natal_ID"].ToString()).Value;

            est_Proced_ID.SelectedValue = est_Proced_ID.Items.FindByValue(columna["est_Proced_ID"].ToString()).Value;
            LlenarCombo(mun_Proced_ID, con.Municipios(est_Proced_ID.SelectedValue));
            mun_Proced_ID.SelectedValue = mun_Proced_ID.Items.FindByValue(columna["mun_Proced_ID"].ToString()).Value;

            alc_Localidad.Text = columna["alc_Localidad"].ToString();
            alc_CodPostal.Text = columna["alc_CodPostal"].ToString();
            alc_Colonia.Text = columna["alc_Colonia"].ToString();
            alc_Calle.Text = columna["alc_Colonia"].ToString();
            alc_NumExt.Text = columna["alc_NumExt"].ToString();
            alc_NumInt.Text = columna["alc_NumInt"].ToString();
            alc_Tel.Text = columna["alc_Tel"].ToString();
            alc_Celular.Text = columna["alc_Celular"].ToString();
            alc_correo.Text = columna["alc_Correo"].ToString();
            alc_facebook.Text = columna["alc_facebook"].ToString();
            alc_LugarNaci.Text= columna["alc_LugarNaci"].ToString();

        }



        public AlumnoDTO AlumnoDTO
        {
            get
            {
                return llenarAlumno();
            }
        }
        AlumnoDTO llenarAlumno()
        {
            AlumnoDTO a = new AlumnoDTO();
            a.alu_NumControl = Session["alu_NumControl"].ToString();
            
            string edad = alc_edad.Text;
            a.alu_Edad = int.Parse(alc_edad.Text);
            if (rSi.Selected == true) { a.lei_ID = Convert.ToInt32(lei_ID.SelectedValue); } else { a.lei_ID = 1; }
            if (rbSi.Selected == true) { a.dis_ID = Convert.ToInt32(lei_ID.SelectedValue); } else { a.dis_ID = 1; }
            return a;
        }

        public AlumComDTO AlumComDTO
        {
            get
            {
                return llenarAlumCom();
            }
        }

        public DatosFamiliaresDTO DatosFamiliaresDTO
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        AlumComDTO llenarAlumCom()
        {
            AlumComDTO alc_Curp = new AlumComDTO();
            alc_Curp.alc_Curp = this.alc_Curp.Text;
            alc_Curp.alc_Correo = alc_correo.Text;
            alc_Curp.alc_Calle = alc_Calle.Text;
            alc_Curp.alc_Colonia = alc_Colonia.Text;
            alc_Curp.alc_Localidad = alc_Localidad.Text;
            alc_Curp.alc_NumInt = alc_NumInt.Text;
            alc_Curp.alc_NumExt = alc_NumExt.Text;
            alc_Curp.alc_CodPostal = alc_CodPostal.Text;
            alc_Curp.mun_Proced_ID = int.Parse(mun_Proced_ID.SelectedValue);
            alc_Curp.est_Proced_ID = int.Parse(est_Proced_ID.SelectedValue);
            alc_Curp.alc_FechaNac = Convert.ToDateTime(alc_FechaNac.Text);
            string fecha=alc_Curp.alc_FechaNac.ToString("dd/MM/yy");
            alc_Curp.mun_Natatl_ID = int.Parse(mun_Natal_ID.SelectedValue);
            alc_Curp.est_Natatl_ID = int.Parse(est_Natal_ID.SelectedValue);
            alc_Curp.alc_EdoCivil = char.Parse(alc_EdoCivil.SelectedValue);
            alc_Curp.alc_LugarNaci = alc_LugarNaci.Text;
            alc_Curp.alc_Tel = alc_Tel.Text;
            alc_Curp.alc_Celular = alc_Celular.Text;
            alc_Curp.alc_Fcaebook = alc_facebook.Text;

            return alc_Curp;
        }



        #endregion



        public void LlenarCombo(DropDownList cb, DataSet ds)
        {

            cb.DataSource = ds;
            cb.DataTextField = ds.Tables[0].Columns[1].ToString();
            cb.DataValueField = ds.Tables[0].Columns[0].ToString();
            cb.DataMember = ds.Tables[0].TableName;
            cb.DataBind();
        }

        protected void rb_dis_ID_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rbSi.Selected == true)
                        {
                            dis_ID.Visible = true;
                Label4.Visible = true;
                        }
                        else
                        {
                            dis_ID.Visible = false;
                Label4.Visible = false;
            }
        }

        protected void rb_lei_ID_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rSi.Selected == true)
            {
                lei_ID.Visible = true;
                Label6.Visible = true;
            }
            else
            {
                lei_ID.Visible = false;
                Label6.Visible = false;
            }
        }

      

        protected void est_Natal_ID_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            LlenarCombo(mun_Natal_ID, con.Municipios(est_Natal_ID.SelectedValue));
        }

        protected void est_Proced_ID_SelectedIndexChanged(object sender, EventArgs e)
        {

            LlenarCombo(mun_Proced_ID, con.Municipios(est_Proced_ID.SelectedValue));
            
        }

        protected void btn_NM_Actual_Click(object sender, EventArgs e)
        {
            try
            {
                muni.Insert(txtMuni_Actual.Text.ToUpper(), int.Parse(est_Proced_ID.SelectedValue.ToString()));
                muni.Update(txtMuni_Actual.Text.ToUpper());
                LlenarCombo(mun_Proced_ID, con.Municipios(est_Proced_ID.SelectedValue));

                DataSet munN = muni.Consult(txtMuni_Actual.Text.ToUpper());
                mun_Proced_ID.SelectedValue= mun_Proced_ID.Items.FindByValue(munN.Tables[0].Rows[0]["mun_ID"].ToString()).Value;


                txtMuni_Actual.Text = "";
            }
            catch (Exception ex)
            {

              
            }

        }

   

        protected void btnNE_Nac_Click(object sender, EventArgs e)
        {
           
                est.Insert(txtEst_Nac.Text.ToUpper());
                est.Update(txtEst_Nac.Text.ToUpper());

                 LlenarCombo(est_Natal_ID, con.Estados2());
                
                DataSet estN = est.Consult(txtEst_Nac.Text.ToUpper());
                string es = estN.Tables[0].Rows[0]["est_ID"].ToString();


           
            est_Natal_ID.SelectedValue = est_Natal_ID.Items.FindByValue(estN.Tables[0].Rows[0]["est_ID"].ToString()).Value;
            LlenarCombo(mun_Natal_ID, con.Municipios(est_Natal_ID.SelectedValue));

                txtEst_Nac.Text = "";
            
    
        }

        protected void btnNM_Nac_Click(object sender, EventArgs e)
        {
            try
            {
                muni.Insert(txtMuni_Nac.Text.ToUpper(), int.Parse(est_Natal_ID.SelectedValue.ToString()));
                muni.Update(txtMuni_Actual.Text.ToUpper());
                LlenarCombo(mun_Natal_ID, con.Municipios(est_Natal_ID.SelectedValue));

               
                DataSet munN = muni.Consult(txtMuni_Nac.Text.ToUpper());
                mun_Natal_ID.SelectedValue = mun_Natal_ID.Items.FindByValue(munN.Tables[0].Rows[0]["mun_ID"].ToString()).Value;


                txtMuni_Nac.Text = "";
            }
            catch (Exception ex)
            {


            }
        }

        protected void btnNE_Act_Click(object sender, EventArgs e)
        {
            try
            {
                est.Insert(txtEst_Act.Text.ToUpper());
                est.Update(txtEst_Act.Text.ToUpper());

                LlenarCombo(est_Proced_ID, con.Estados2());
                

                DataSet estN = est.Consult(txtEst_Act.Text.ToUpper());
                est_Proced_ID.SelectedValue = est_Proced_ID.Items.FindByValue(estN.Tables[0].Rows[0]["est_ID"].ToString()).Value;

                LlenarCombo(mun_Proced_ID, con.Municipios(est_Proced_ID.SelectedValue));
                txtEst_Act.Text = "";
            }
            catch (Exception ex)
            {


            }
        }
    }
} 