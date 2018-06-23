using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inscripcion
{
    public partial class Menu : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void camabiarcolor(int pagina)
        {
            switch (pagina)
            {
                case 1:
                    DP2.Attributes.Add("style", "background-color: #a9012b");
                    break;
                case 2:
                    DG.Attributes.Add("style", "background-color: #a9012b");
                    break;
                case 3:
                    EP.Attributes.Add("style", "background-color: #a9012b");
                    break;
                case 4:
                    IF.Attributes.Add("style", "background-color: #a9012b");
                    break;
                case 5:
                    ES.Attributes.Add("style", "background-color: #a9012b");
                    break;
                default:
                    break;
            }


            
        }

       public void Avance(int avance)
        {
            switch (avance)
            {

                case 1:
                    DP2.Attributes.Add("style", "background-color: #a9012b");
                    break;
                case 2:
                    DP2.Attributes.Add("style", "background-color: #a9012b");
                    DG.Attributes.Add("style", "background-color: #a9012b");
                    break;
                case 3:
                    DP2.Attributes.Add("style", "background-color: #a9012b");
                    DG.Attributes.Add("style", "background-color: #a9012b");
                    EP.Attributes.Add("style", "background-color: #a9012b");
                    break;
                case 4:
                    DP2.Attributes.Add("style", "background-color: #a9012b");
                    DG.Attributes.Add("style", "background-color: #a9012b");
                    EP.Attributes.Add("style", "background-color: #a9012b");
                    IF.Attributes.Add("style", "background-color: #a9012b");
                    break;
                case 5:
                    DP2.Attributes.Add("style", "background-color: #a9012b");
                    DG.Attributes.Add("style", "background-color: #a9012b");
                    EP.Attributes.Add("style", "background-color: #a9012b");
                    IF.Attributes.Add("style", "background-color: #a9012b");
                    ES.Attributes.Add("style", "background-color: #a9012b");
                    break;
             
                default:
                    break;
            }
        }

    }
}