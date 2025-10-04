using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class CuponNegocio
    {
        public Cupon BuscarCupon(string codigCupon)
        {
            Cupon cupon = null;
            AccesoDatos accesoDatos = new AccesoDatos();

            try
            {
                accesoDatos.setearConsulta("SELECT CodigoVoucher, IdCliente, FechaCanje, IdArticulo FROM Vouchers WHERE CodigoVoucher = @CodigoVoucher");
                accesoDatos.setearParametros("@CodigoVoucher", codigCupon);
                accesoDatos.ejecutarConsulta();

                if (accesoDatos.Lector.Read())
                {
                    cupon = new Cupon();
                    {
                        cupon.codigoVoucher = accesoDatos.Lector["CodigoVoucher"].ToString();
                        cupon.idClinte = accesoDatos.Lector["IdCliente"] != DBNull.Value ? Convert.ToInt32(accesoDatos.Lector["IdCliente"]) : (int?)null;
                        cupon.fechaCanje = accesoDatos.Lector["FechaCanje"] != DBNull.Value ? Convert.ToDateTime(accesoDatos.Lector["FechaCanje"]) : (DateTime?)null;
                        cupon.idArticulo = accesoDatos.Lector["IdArticulo"] != DBNull.Value ? Convert.ToInt32(accesoDatos.Lector["IdArticulo"]) : (int?)null;
                    }
                    
                }
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                accesoDatos.cerrarConexion();
            }

            return cupon;
        }

    }
}

