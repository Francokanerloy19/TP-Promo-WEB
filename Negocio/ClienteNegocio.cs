using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class ClienteNegocio
    {
        public Cliente buscarDNI(string dni)
        {
            AccesoDatos accesoDatos = new AccesoDatos();
            Cliente cliente = new Cliente();
            try
            {
                accesoDatos.setearConsulta("SELECT id,Documento,Nombre,Apellido,Email,Direccion,Ciudad,CP FROM Clientes where Documento = @Documento");
                accesoDatos.setearParametros("@Documento", dni);
                accesoDatos.ejecutarConsulta();

                if (accesoDatos.Lector.Read()) 
                {
                    cliente.id = (int)accesoDatos.Lector["id"];
                    cliente.DNI = (string)accesoDatos.Lector["Documento"];
                    cliente.nombre = (string)accesoDatos.Lector["Nombre"];
                    cliente.apellido = (string)accesoDatos.Lector["Apellido"];
                    cliente.email = (string)accesoDatos.Lector["Email"];
                    cliente.direccion = (string)accesoDatos.Lector["Direccion"];
                    cliente.ciudad = (string)accesoDatos.Lector["Ciudad"];
                    cliente.codPostal = (int)accesoDatos.Lector["CP"];

                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally 
            {
                accesoDatos.cerrarConexion();
            }
            return cliente;
        }
    }
}
