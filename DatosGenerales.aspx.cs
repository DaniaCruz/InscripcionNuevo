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
    public partial class DatosGenerales : System.Web.UI.Page
    {
        #region
        AlumComDTO obj = new AlumComDTO();
        AlumComDAOSQL dao = new AlumComDAOSQL();
        UControl con = new UControl();
        EncuestasDAO enc = new EncuestasDAO();
        CMunicipiosDAO muni = new CMunicipiosDAO();
        CeEstadosDAO est = new CeEstadosDAO();
        public static int alu_ID = 0;
        #endregion



        protected void Page_Load(object sender, EventArgs e)
        {

            MaintainScrollPositionOnPostBack = true;
            ((Menu)Master).camabiarcolor(2);

            if (Session["alu_ID"] != null)
            {
                if (!IsPostBack)
            {
                   
                    alu_ID = (int)Session["alu_ID"];
                    EstablecerInicio();
                    if (enc.EncuestaContestada(alu_ID, 2))
                    {
                        btnGuardar.Text = "ACTUALIZAR";
                        GetDataAlumno(dao.GetTabla(alu_ID));
                    }
                    else
                    {
                        btnGuardar.Text = "GUARDAR";
                    }


                }
            }
          
           
           
        }

        public void EstablecerInicio()
        {
         
            LlenarCombo(est_Tutor_ID, UControl.estado);
            LlenarCombo(mun_Tutor_ID, con.Municipios(est_Tutor_ID.SelectedValue));

        }
        public void LlenarCombo(DropDownList cb, DataSet ds)
        {

            cb.DataSource = ds;
            cb.DataTextField = ds.Tables[0].Columns[1].ToString();
            cb.DataValueField = ds.Tables[0].Columns[0].ToString();
            cb.DataMember = ds.Tables[0].TableName;
            cb.DataBind();
        }
        protected void est_Tutor_ID_SelectedIndexChanged(object sender, EventArgs e)
        {
            LlenarCombo(mun_Tutor_ID, con.Municipios2(est_Tutor_ID.SelectedValue));
            
        }

        protected void btnAB_Click(object sender, EventArgs e)
        {


            if (IsValid)
            {
                dao.UpdateGenerales(ObtenerDatos(), alu_ID);
                enc.Insert(2,alu_ID);
                Response.Redirect("EscuelaProcedencia.aspx");

            }
        }

        public AlumComDTO ObtenerDatos()
        {
            AlumComDTO general = new AlumComDTO();
            general.alc_TipoSangre = tipoSangre.Text;
            general.alc_CveFiliacion = alc_NSS.Text;
            general.alc_Tutor = nomb_Tutor_ID.Text;
            general.alc_ColTut = col_Tutor_ID.Text;
            general.alc_DirTutor = dire_Tutor_ID.Text;
            general.est_Tutor_ID = Convert.ToInt32(est_Tutor_ID.SelectedValue);
            general.mun_Tutor_ID = Convert.ToInt32(mun_Tutor_ID.SelectedValue);
            general.alc_TelTutor = tel_Tutor_ID.Text;
            general.alu_ID = alu_ID;

            return general;
        }

        public void GetDataAlumno(DataTable tbl)
        {
            DataRow columna = tbl.Rows[0];

            tipoSangre.Text = columna["alc_TipoSangre"].ToString();
            alc_NSS.Text = columna["alc_CveFiliacion"].ToString();
            nomb_Tutor_ID.Text = columna["alc_Tutor"].ToString();
            col_Tutor_ID.Text = columna["alc_ColTut"].ToString();
            dire_Tutor_ID.Text = columna["alc_DirTutor"].ToString();

            //if (columna["est_Tutor_ID"].ToString()!="")
            //{
                est_Tutor_ID.SelectedValue = est_Tutor_ID.Items.FindByValue(columna["est_Tutor_ID"].ToString()).Value;

            //}

            //if (columna["mun_Tutor_ID"].ToString() != "")
            //{
                LlenarCombo(mun_Tutor_ID, con.Municipios(columna["est_Tutor_ID"].ToString()));

                mun_Tutor_ID.SelectedValue = mun_Tutor_ID.Items.FindByValue(columna["mun_Tutor_ID"].ToString()).Value;

            //}
            tel_Tutor_ID.Text = columna["alc_TelTutor"].ToString();
        }

        protected void Btn_GuardarEN_Click(object sender, EventArgs e)
        {
            try
            {
                est.Insert(txtEstadoN.Text.ToUpper());
                est.Update(txtEstadoN.Text.ToUpper());

                LlenarCombo(est_Tutor_ID, con.Estados2());


                DataSet estN = est.Consult(txtEstadoN.Text.ToUpper());
                est_Tutor_ID.SelectedValue = est_Tutor_ID.Items.FindByValue(estN.Tables[0].Rows[0]["est_ID"].ToString()).Value;
                LlenarCombo(mun_Tutor_ID, con.Municipios(est_Tutor_ID.SelectedValue));

               


               est_Tutor_ID.Text = "";
            }
            catch (Exception ex)
            {
            }
        }

        protected void BtnGuardar_MN_Click(object sender, EventArgs e)
        {
            try
            {
                muni.Insert(txtMuniN.Text.ToUpper(), int.Parse(est_Tutor_ID.SelectedValue.ToString()));
                muni.Update(txtMuniN.Text.ToUpper());

                LlenarCombo(mun_Tutor_ID, con.Municipios(est_Tutor_ID.SelectedValue));

                DataSet munN = muni.Consult(txtMuniN.Text.ToUpper());
                mun_Tutor_ID.SelectedValue = mun_Tutor_ID.Items.FindByValue(munN.Tables[0].Rows[0]["mun_ID"].ToString()).Value;


                txtMuniN.Text = "";
            }
            catch (Exception ex)
            {


            }

        }
    }
}