using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inscripcion
{
    public partial class EstudioSocioE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e){
            if (IsPostBack) MaintainScrollPositionOnPostBack = true;
            ((Menu)Master).camabiarcolor(5);
        }

        protected void alp_EstatusJefeHoga_SelectedIndexChanged(object sender, EventArgs e){
          
        }

        protected void val_Estatura_ServerValidate(object source, ServerValidateEventArgs args) {
            try {
                string Promedio = alu_Estatura.Text;
                decimal Promediod = Convert.ToDecimal(Promedio);

                args.IsValid = Promediod <= 6 ? true : false;

            }
            catch (Exception ex) {
                args.IsValid = false;
            }
        }

        protected void apl_SelectedIndexChanged(object sender, EventArgs e){
            if (apl_EmpleoSi.Selected){
                labelCual.Visible = true;
                alp_Empleo.Visible = true;
            }
            else if (apl_EmpleoNo.Selected) {
                labelCual.Visible = false;
                alp_Empleo.Visible = false;
            }
        }
    }
}