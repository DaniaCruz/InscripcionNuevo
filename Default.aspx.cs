using Conect.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inscripcion
{
    public partial class _Default : Page
    {
        LogInDAOSQL login = new LogInDAOSQL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            LogInDAOSQL clases = new LogInDAOSQL();
            if (clases.ExisteUsuario(alu_NumControl.Text))
            {
                if (clases.ValidarUsuario(alu_NumControl.Text))
                {
                    Session["alu_NumControl"] = alu_NumControl.Text;
                    Server.Transfer("DatosPersonales1.aspx", true);
                }
                else
                {
                    lblMensaje.Text = "Su pago no esta registrado en el sistema";
                }
            }
            else
            {
                lblMensaje.Text = "Matrícula no encontrada";
            }



        }
    }
}