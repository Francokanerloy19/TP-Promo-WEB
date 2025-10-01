using Dominio;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_Promo_WEB
{
    public partial class ListaDeArticulos : System.Web.UI.Page
    {
        public List<Articulo> ListaArticulos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio articuloNegocio = new ArticuloNegocio();

            try
            {
                ListaArticulos = articuloNegocio.Listar();
                if (!IsPostBack)
                {
                    repetidorDeArticulos.DataSource = ListaArticulos;
                    repetidorDeArticulos.DataBind();
                }
            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
            }
        }

    }
}