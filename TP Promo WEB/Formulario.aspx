<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="TP_Promo_WEB.Formulario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .campo-largo {
            width: 100% !important;
            max-width: 100% !important;
        }
    </style>
    <hr />

    <div class="row">
        <h3>Ingresá tus datos</h3>
        <div class="col mb-3">
            <label for="txtId" class="form-label">DNI</label>
            <asp:TextBox runat="server" ID="txtId" CssClass="form-control" placeholder="99888777" />
        </div>
    </div>

    <div class="row">

        <div class="col mb-0">
            <label for="TextNombre" class="form-label">Nombre</label>
            <asp:TextBox runat="server" ID="TextNombre" CssClass="form-control" placeholder="Nombre" />
        </div>

        <div class="col mb-0">
            <label for="TextApellido" class="form-label">Apellido</label>
            <asp:TextBox runat="server" ID="TextApellido" CssClass="form-control" placeholder="Apellido" />
        </div>

        <div class="col mb-0">
            <label for="validationtxtEmail" class="form-label">Email</label>
            <div class="input-group">
                <span class="input-group-text" id="txtEmails">@</span>
                <asp:TextBox runat="server" ID="validationtxtEmail" CssClass="form-control" placeholder="email@email.com" aria-describedby="txtEmails" required />
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col">
            <label for="validationDireccion" class="form-label">Dirección</label>
            <asp:TextBox runat="server" ID="validationDireccion" CssClass="form-control campo-largo" placeholder="Mi ciudad" required />
        </div>
        <div class="col mb-0">
            <label for="TextCiudad" class="form-label">Ciudad</label>
            <asp:TextBox runat="server" ID="TextCiudad" CssClass="form-control" placeholder="Calle 123" />
        </div>
        <div class="col mb-0">
            <label for="TextCP" class="form-label">CP</label>
            <asp:TextBox runat="server" ID="TextCP" CssClass="form-control" placeholder="xxxx" />
        </div>
    </div>
    <br />
    <asp:CheckBox Text=" Acepto los terminos y condiciones." class="form-check-input" runat="server" />
    <br />
    <br />
    <div class="col-12">

        <asp:Button Text="Participar!" runat="server" class="btn btn-primary" />
    </div>


</asp:Content>
