using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_Promo_WEB
{
    public partial class Formulario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Page.Validate(); // corre la validación antes
                if (Page.IsValid)
                {
                    txtDNI.CssClass = "form-control is-valid";
                }
                else
                {
                    txtDNI.CssClass = "form-control is-invalid";
                }
            }


        }

        protected void btnParticipar_Click(object sender, EventArgs e)
        {
            
        }
    }
}