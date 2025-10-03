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
        protected void btnSiguiente_Click(object sender, EventArgs e)
        {
            CuponNegocio negocio = new CuponNegocio();
            Cupon cupon = negocio.BuscarCupon(TextCodigo.Text);

            if (cupon.idArticulo != null && cupon.fechaCanje != null && cupon.idClinte != null)
            {
                lblMensajeError.Text = "❌ El voucher no existe o es inválido.";
                lblMensajeError.CssClass = "text-danger"; // rojo
            }
            else
            {
                lblMensajeError.Text = "✅ Voucher válido, ¡podés continuar!";
                lblMensajeError.CssClass = "text-success"; // verde
            }

        }
    }
}