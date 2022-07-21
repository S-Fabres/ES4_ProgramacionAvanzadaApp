<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ModificarUsuario.aspx.cs" Inherits="ES4_ProgramacionAvanzadaWEB.ModificarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
        <div class="col-lg-6">
            <div class="card">
                <div class="card-header bg-black text-white">
                    <h3>Modificar Usuario</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="idTxt">ID del usuario</label>
                        <asp:TextBox ID="idTxt" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="rutTxt">Rut</label>
                        <asp:TextBox ID="rutTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="rutTxt" CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe Ingresar el Rut"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="nombreTxt">Nombre completo</label>
                        <asp:TextBox ID="nombreTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="nombreTxt" CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe ingresar el nombre"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="passwordTxt">Contraseña</label>
                        <asp:TextBox ID="passwordTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="passwordTxt" CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Debe ingresar una contraseña"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="correoTxt">Correo Electrónico</label>
                        <asp:TextBox ID="correoTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="correoTxt" CssClass="text-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Debe ingresar un correo electrónico"></asp:RequiredFieldValidator>
                    </div>
                    <asp:Button runat="server" CssClass="btn btn-secondary" OnClick="modificarBtn_Click" ID="modificarBtn" Text="Modificar" />
                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>
