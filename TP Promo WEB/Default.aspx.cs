using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace TP_Promo_WEB
{
    public partial class _Default : Page
    {
        public List<Articulo> ListaDeArticulos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio articuloNegocio = new ArticuloNegocio();

            try
            {
                ListaDeArticulos = articuloNegocio.Listar();
                if (!IsPostBack)
                {
                    repetidorDeArticulos.DataSource = ListaDeArticulos;
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