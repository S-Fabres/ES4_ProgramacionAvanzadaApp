<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="IngresarLectura.aspx.cs" Inherits="ES4_ProgramacionAvanzadaWEB.IngresarLectura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-6">
            <div class="card">
                <div class="card-header bg-black text-white">
                    <h3>Ingresar Lectura</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="codigoTxt">Código de Lectura</label>
                        <asp:TextBox ID="codigoTxt" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="codigoTxt" CssClass="text-danger" runat="server" ErrorMessage="Debe ingresar un identificador"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" ControlToValidate="codigoTxt" CssClass="text-danger" Type="Integer" runat="server" ErrorMessage="Debe ingresar un identificador con mínimo un caracter y máximo 6 caracteres" MinimumValue="1" MaximumValue="999999"></asp:RangeValidator>
                    </div>
                    <div class="form-group">
                        <label for="idMedidorDdl">Id del medidor</label>
                        <asp:DropDownList ID="idMedidorDdl" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="CalendarFecha">Fecha de lectura</label>
                        <asp:Calendar ID="CalendarFecha" runat="server"></asp:Calendar>
                    </div>
                    <div class="form-group">
                        <div class="col-2">
                            <label for="horaTxt">Hora</label>
                            <asp:TextBox ID="horaTxt" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator4" ControlToValidate="horaTxt" CssClass="text-danger" Type="Integer" runat="server" ErrorMessage="Debe ingresar una hora entre 01 y 23" MinimumValue="01" MaximumValue="23"></asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Debe llenar el campo" ControlToValidate="horaTxt" ForeColor="Red"></asp:RequiredFieldValidator>
                            <label for="minutosTxt">Minutos</label>
                            <asp:TextBox ID="minutosTxt" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator5" ControlToValidate="minutosTxt" CssClass="text-danger" Type="Integer"  runat="server" ErrorMessage="Debe ingresar minutos entre 01 y 59" MinimumValue="01" MaximumValue="59"></asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Debe llenar el campo" ControlToValidate="minutosTxt" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="lecturaActualTxt">Lectura Actual</label>
                        <asp:TextBox ID="lecturaActualTxt" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="lecturaActualTxt" CssClass="text-danger" runat="server" ErrorMessage="Debe llenar el campo"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" ControlToValidate="lecturaActualTxt" CssClass="text-danger" Type="Integer" runat="server" ErrorMessage="Debe ingresar una Lectura con mínimo un caracter y máximo 6 caracteres" MinimumValue="1" MaximumValue="999999"></asp:RangeValidator>
                    </div>
                    <asp:Button runat="server" CssClass="btn btn-secondary" OnClick="guardarBtn_Click" ID="guardarBtn" Text="Guardar" />
                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>
