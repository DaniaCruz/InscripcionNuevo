using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inscripcion
{
    public partial class DatosPersonales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MaintainScrollPositionOnPostBack = true;
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

        protected void rb_Hijos_ID_SelectedIndexChanged(object sender, EventArgs e)
        {
         if (rbSi1.Selected == true)
                    {
                        dprHijos.Visible = true;
                        Label98.Visible = true;
                    }
                    else
                    {
                        dprHijos.Visible = false;
                        Label98.Visible = false;
                    }
        }

        protected void alp_EstatusJefeHoga_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (alp_EstatusJefeHogarSi.Selected == true)
                                {
                                    Label43.Visible = true;
                                    apl.Visible = true;
                                    labelCual.Visible = true;
                alp_Empleo.Visible = true;                                }
                                else
            { 
                Label43.Visible = false;
            apl.Visible = false;
            labelCual.Visible = false;
            alp_Empleo.Visible = false;

        }
        }

        protected void btnActAlumOtroMun_Click(object sender, EventArgs e)
        {
            act_otro_Municipio.Visible=true;
        }

        protected void btnActAlumOtroEst_Click(object sender, EventArgs e)
        {
            act_otro_Estado.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            esc_Otro_Estado.Visible = true;
        }

        protected void btnEscMun_Click(object sender, EventArgs e)
        {
            esc_orto_Municipio.Visible = true;
        }
    }
}