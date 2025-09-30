using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace Negocio
{
    public class ArticuloNegocio
    {
        public List<Articulo> Listar()
        {
            List<Articulo> Lista = new List<Articulo>();
            AccesoDatos accesoDatos = new AccesoDatos();
            try
            {
                accesoDatos.setearConsulta("SELECT a.Id AS IdArticulo, a.Codigo AS CodigoArticulo, a.Nombre AS NombreArticulo, a.Descripcion AS DescripcionArticulo, a.IdMarca, m.Descripcion AS DescripcionMarca, a.IdCategoria, c.Descripcion AS DescripcionCategoria, a.Precio AS PrecioArticulo FROM ARTICULOS a INNER JOIN MARCAS m ON a.IdMarca = m.Id INNER JOIN CATEGORIAS c ON a.IdCategoria = c.Id;");
                accesoDatos.ejecutarConsulta();

                while (accesoDatos.Lector.Read())
                {
                    Articulo aux = new Articulo();
                    aux.IdArticulo = (int)accesoDatos.Lector["IdArticulo"];
                    aux.CodigoArticulo = (string)accesoDatos.Lector["CodigoArticulo"];
                    aux.NombreArticulo = (string)accesoDatos.Lector["NombreArticulo"];
                    aux.DescripcionArticulo = (string)accesoDatos.Lector["DescripcionArticulo"];
                    aux.PrecioArticulo = (decimal)accesoDatos.Lector["PrecioArticulo"];

                    aux.Marca = new Marca();
                    aux.Marca.IdMarca = (int)accesoDatos.Lector["IdMarca"];
                    aux.Marca.Descripcion = (string)accesoDatos.Lector["DescripcionMarca"];

                    aux.Categoria = new Categoria();
                    aux.Categoria.IdCategoria = (int)accesoDatos.Lector["IdCategoria"];
                    aux.Categoria.Descripcion = (string)accesoDatos.Lector["DescripcionCategoria"];

                    //Hay que agregar  Imagenes

                    Lista.Add(aux);
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

            return Lista;   
        }
    }
}
