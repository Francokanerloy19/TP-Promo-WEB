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
    public partial class Formulario : System.Web.UI.Page
    {
        public Cupon voucher { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void btnParticipar_Click(object sender, EventArgs e)
        {
            ClienteNegocio clienteNegocio = new ClienteNegocio();
            
            Cliente cliente = new Cliente();
            cliente = clienteNegocio.buscarDNI(txtDNI.Text);
            txtCiudad.Text = cliente.ciudad.ToString();
            if (cliente != null) 
            {
                txtCiudad.Text = cliente.ciudad.ToString();
                txtCP.Text = cliente.codPostal.ToString();
                txtDireccion.Text = cliente.direccion.ToString();
                validationtxtEmail.Text = cliente.email.ToString();
                TxtApellido.Text = cliente.apellido.ToString();
                TextNombre.Text = cliente.nombre.ToString();


            }
             // public int id { get; set; }
        
        
        
        
        



        //// Recupero el objeto Cupon de sesión
        //Cupon voucher = Session["voucher"] as Cupon;

        //if (voucher != null)
        //{
        //    // Completo los datos que necesites
        //    voucher.fechaCanje = DateTime.Now;
        //    voucher.idClinte = 123; // ejemplo

        //    // Llamo al método de negocio para actualizar la BD

        //    //CuponNegocio negocio = new CuponNegocio();
        //    // negocio.ModificarCupon(voucher);// tengo que crear el metodo

        //    // limpiar la sesión si ya no la necesitas
        //    Session.Remove("voucher");
        //}

    }
    }
}