<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AgregarMedidor.aspx.cs" Inherits="ES4_ProgramacionAvanzadaWEB.AgregarMedidor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-6">
            <div class="card">
                <div class="card-header bg-black text-white">
                    <h3>Agregar Medidor</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="idTxt">Identificador del Medidor</label>
                        <asp:TextBox ID="idTxt" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="idTxt" CssClass="text-danger" runat="server" ErrorMessage="Debe ingresar un identificador"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" ControlToValidate="idTxt" CssClass="text-danger" Type="Integer" runat="server" ErrorMessage="Debe ingresar un identificador con mínimo un caracter y máximo 6 caracteres" MinimumValue="1" MaximumValue="999999"></asp:RangeValidator>
                    </div>
                    <div class="form-group">
                        <label for="lecturaInicialTxt">Lectura Inicial</label>
                        <asp:TextBox ID="lecturaInicialTxt" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="lecturaInicialTxt" CssClass="text-danger" runat="server" ErrorMessage="Debe llenar el campo"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" ControlToValidate="lecturaInicialTxt" CssClass="text-danger" Type="Integer" runat="server" ErrorMessage="Debe ingresar una Lectura con mínimo un caracter y máximo 6 caracteres" MinimumValue="1" MaximumValue="999999"></asp:RangeValidator>
                    </div>
                    <div class="form-group">
                        <label for="ultimaLecturaTxt">Última Lectura</label>
                        <asp:TextBox ID="ultimaLecturaTxt" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="ultimaLecturaTxt" CssClass="text-danger" runat="server" ErrorMessage="Debe llenar el campo"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator3" ControlToValidate="ultimaLecturaTxt" CssClass="text-danger" Type="Integer" runat="server" ErrorMessage="Debe ingresar una Lectura con mínimo un caracter y máximo 6 caracteres" MinimumValue="1" MaximumValue="999999"></asp:RangeValidator>
                    </div>
                    <div class="form-group">
                        <label for="tipoRbl">Tipo</label>
                        <asp:RadioButtonList ID="tipoRbl" runat="server">
                            <asp:ListItem Text="Inteligente" Selected="True" Value="Inteligente"></asp:ListItem>
                            <asp:ListItem Text="Estado Sólido" Value="Estado-Solido"></asp:ListItem>
                            <asp:ListItem Text="Vatios Hora" Value="Vatios-Hora"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <asp:Button runat="server" CssClass="btn btn-secondary" OnClick="ingresarBtn_Click" ID="ingresarBtn" Text="Ingresar" />
                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>
