<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetalleDeArticulos.aspx.cs" Inherits="TP_Promo_WEB.DetalleDeArticulos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

    

	<div class = "card mt-3" style="width:24rem;">
        <div class="row g-0">

             <div class ="col-md-6">
                    <div class="card-body">
                        <h4 class="card-title">
                            <asp:Label ID="lblNombre" runat="server" />
                        </h4>
                        <p class="card-text">
                            <asp:Label ID="lblDescripcion" runat="server" />
                        </p>
                        <h5>
                            Precio: <asp:Label ID="lblPrecio" runat="server" />
                        </h5>
                        <a href="ListaDeArticulos.aspx" class="btn btn-secondary">Volver</a>
                    </div>
             </div>

            <div class ="col-md-6">
                <div id="imgArticulo"  class="carousel slide">
                      <div class="carousel-inner">
                        <asp:Repeater ID="repImagenes" runat="server">
                                <ItemTemplate>
                                    <div class='carousel-item <%# Container.ItemIndex == 0 ? "active" : "" %>'>
                                        <img src='<%# Eval("ImagenUrl") %>' class="d-block w-100" alt="Imagen del artículo">
                                    </div>
                                </ItemTemplate>
                        </asp:Repeater>       
                      </div>

                      <button class="carousel-control-prev" type="button" data-bs-target="#imgArticulo" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                      </button>
                      <button class="carousel-control-next" type="button" data-bs-target="#imgArticulo" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                      </button>
                </div>
            </div>
            
		    

            
        </div>
	</div>
</asp:Content>
