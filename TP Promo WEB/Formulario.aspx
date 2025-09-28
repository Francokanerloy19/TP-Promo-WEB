<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="TP_Promo_WEB.Formulario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
       
        <div class="col mb-3">
            <label for="txtId" class="form-label">DNI</label>
            <asp:TextBox runat="server" ID="txtId" CssClass="form-control" placeholder="99888777" />
        </div>
    </div>

    <div class="row">
        
        <div class="col mb-0">
            <label for="TextBox1" class="form-label">Nombre</label>
            <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" placeholder="Nombre" />
        </div>
        
        <div class="col mb-0">
            <label for="TextBox2" class="form-label">Apellido</label>
            <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control" placeholder="Apellido" />
        </div>
        
        <div class="col mb-0">
            <label for="txtEmail" class="form-label">Email</label>
            <div class="input-group">
                <span class="input-group-text" id="txtEmails">@</span>
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" placeholder="email@email.com" />
            </div>
        </div>
    </div>


</asp:Content>
