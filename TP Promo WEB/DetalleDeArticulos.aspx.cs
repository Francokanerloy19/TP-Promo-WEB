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
    public partial class DetalleDeArticulos : System.Web.UI.Page
    {
        public Articulo articuloSeleccionado { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = int.Parse(Request.QueryString["id"]);
                ArticuloNegocio articuloNegocio = new ArticuloNegocio();
                articuloSeleccionado = articuloNegocio.BuscarArticuloPorId(id);

                if (articuloSeleccionado != null)
                {
                    lblNombre.Text = articuloSeleccionado.NombreArticulo;
                    lblDescripcion.Text = articuloSeleccionado.DescripcionArticulo;
                    lblPrecio.Text = articuloSeleccionado.PrecioArticulo.ToString("C");

                    repImagenes.DataSource = articuloSeleccionado.Imagenes;
                    repImagenes.DataBind();
                }
            }
        }
    }
}