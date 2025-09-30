<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="TP_Promo_WEB.Formulario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .campo-largo {
            width: 100% !important;
            max-width: 100% !important;
        }
    </style>
    <script>   
        function validar() {
            const txtDNI = document.getElementById("<%= txtDNI.ClientID %>");
            const exRegularDNI = /^\d{7,8}$/; // 7 u 8 números
            const txtNombre = document.getElementById("<%=TextNombre.ClientID%>");
            const exRegularNombre = /^[A-Za-zÁÉÍÓÚáéíóúÑñ]+(?: [A-Za-zÁÉÍÓÚáéíóúÑñ]+)*$/;
            const txtApellido = document.getElementById("<%=TxtApellido.ClientID%>");
            const exRegularApellido = /^[A-Za-zÁÉÍÓÚáéíóúÑñ]+(?: [A-Za-zÁÉÍÓÚáéíóúÑñ]+)*$/;
            const txtEmail = document.getElementById("<%=validationtxtEmail.ClientID%>");
            const exRegularEmail = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

            
            let valido = true;

            if (!exRegularDNI.test(txtDNI.value.trim())) {
                txtDNI.classList.add("is-invalid");
                txtDNI.classList.remove("is-valid");
                valido = false;
            } else {
                txtDNI.classList.remove("is-invalid");
                txtDNI.classList.add("is-valid");

            }
            if (!exRegularNombre.test(txtNombre.value.trim())) {
                txtNombre.classList.add("is-invalid");
                txtNombre.classList.remove("is-valid");
                valido = false;
            } else {
                txtNombre.classList.remove("is-invalid");
                txtNombre.classList.add("is-valid");

            }
            if (!exRegularApellido.test(txtApellido.value.trim())) {
                txtApellido.classList.add("is-invalid");
                txtApellido.classList.remove("is-valid");
                valido = false;
            } else {
                txtApellido.classList.remove("is-invalid");
                txtApellido.classList.add("is-valid");

            }
            if (!exRegularEmail.test(txtEmail.value.trim())) {
                txtEmail.classList.add("is-invalid");
                txtEmail.classList.remove("is-valid");
                valido = false;
            } else {
                txtEmail.classList.remove("is-invalid");
                txtEmail.classList.add("is-valid");

            }
            //txtDNI.classList.add("is-valid");
            //txtNombre.classList.add("is-valid");
            return valido;


        }


    </script>
    <hr />

    <div class="row">
        <h3>Ingresá tus datos</h3>
        <div class="col mb-3">
            <label for="txtDNI" class="form-label">DNI</label>
            <asp:TextBox runat="server" ID="txtDNI" CssClass="form-control" placeholder="33445577" />
            <asp:RequiredFieldValidator ID="rfvDNI" runat="server" ControlToValidate="txtDNI" ErrorMessage="El DNI es obligatorio" CssClass="text-danger" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revDNI" runat="server" ControlToValidate="txtDNI" ValidationExpression="^\d{7,8}$" ErrorMessage="El DNI debe tener entre 7 y 8 dígitos" CssClass="text-danger" Display="Dynamic" />
        </div>
    </div>

    <div class="row">

        <div class="col mb-0">
            <label for="TextNombre" class="form-label">Nombre</label>
            <asp:TextBox runat="server" ID="TextNombre" CssClass="form-control" placeholder="Nombre" />
            <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="TextNombre" ErrorMessage="El nombre es obligatorio" CssClass="text-danger" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="TextNombre" ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúÑñ]+(?: [A-Za-zÁÉÍÓÚáéíóúÑñ]+)*$" ErrorMessage="El nombre solo puede contener letras y espacios (mínimo 2 caracteres)" Display="Dynamic" />

        </div>

        <div class="col mb-0">
            <label for="TxtApellido" class="form-label">Apellido</label>
            <asp:TextBox runat="server" ID="TxtApellido" CssClass="form-control" placeholder="Apellido" />
            <asp:RequiredFieldValidator ID="refTxtApellido" runat="server" ControlToValidate="TxtApellido" ErrorMessage="El apellido es obligatorio" CssClass="text-danger" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revTxtApellido" runat="server" ControlToValidate="TxtApellido" ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúÑñ]+(?: [A-Za-zÁÉÍÓÚáéíóúÑñ]+)*$" ErrorMessage="El apellido solo puede contener letras y espacios (mínimo 2 caracteres)" Display="Dynamic" />

        </div>

        <div class="col mb-0">
            <label for="validationtxtEmail" class="form-label">Email</label>
            <div class="input-group">
                <span class="input-group-text" id="txtEmails">@</span>
                <asp:TextBox runat="server" ID="validationtxtEmail" CssClass="form-control" placeholder="email@email.com" aria-describedby="txtEmails" />
                <asp:RequiredFieldValidator ID="rfvValidationtxtEmail" runat="server" ControlToValidate="validationtxtEmail" ErrorMessage="El email es obligatorio" CssClass="text-danger" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revValidationtxtEmail" runat="server" ControlToValidate="validationtxtEmail" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" ErrorMessage="Ingrese un email válido" Display="Dynamic" />

            </div>
        </div>
    </div>

    <div class="row">
        <div class="col">
            <label for="validationDireccion" class="form-label">Dirección</label>
            <asp:TextBox runat="server" ID="validationDireccion" CssClass="form-control campo-largo" placeholder="Mi ciudad" />
        </div>
        <div class="col mb-0">
            <label for="TxtCiudad" class="form-label">Ciudad</label>
            <asp:TextBox runat="server" ID="TxtCiudad" CssClass="form-control" placeholder="Calle 123" />
        </div>
        <div class="col mb-0">
            <label for="TxtCP" class="form-label">CP</label>
            <asp:TextBox runat="server" ID="TxtCP" CssClass="form-control" placeholder="xxxx" />
        </div>
    </div>
    <br />
    <asp:CheckBox Text=" Acepto los terminos y condiciones." class="form-check-input" runat="server" />
    <br />
    <br />
    <div class="col-12">

        <asp:Button Text="Participar!" ID="btnParticipar" runat="server" class="btn btn-primary" OnClientClick="return validar()" OnClick="btnParticipar_Click" />
    </div>


</asp:Content>
