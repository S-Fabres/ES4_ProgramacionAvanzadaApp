<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="VerMedidores.aspx.cs" Inherits="ES4_ProgramacionAvanzadaWEB.VerMedidores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="row">
        <div class="col-lg-6 mx-auto">
            <asp:DropDownList ID="tipoDDL" runat="server" AutoPostBack="true" OnSelectedIndexChanged="tipoDDL_SelectedIndexChanged">
                <asp:ListItem Text="Inteligente" Value="Inteligente"></asp:ListItem>
                <asp:ListItem Text="Estado Sólido" Value="Estado-Solido"></asp:ListItem>
                <asp:ListItem Text="Vatios Hora" Value="Vatios-Hora"></asp:ListItem>
            </asp:DropDownList>
            <asp:CheckBox runat="server" ID="todosChx" Text="Todos" Checked="true"
                AutoPostBack="true" OnCheckedChanged="todosChx_CheckedChanged" />
        </div>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="row mt-5">
                <asp:GridView 
                    CssClass="table table-hover table-bordered"
                    ID="grillaMedidores"
                    AutoGenerateColumns="false"
                    ShowHeaderWhenEmpty="true"
                    EmptyDataText="No hay registros"
                    runat="server"
                    OnRowCommand="grillaMedidores_RowCommand">
                    <Columns>
                        <asp:BoundField HeaderText="ID del Medidor" DataField="Id" />
                        <asp:BoundField HeaderText="Lectura Inicial" DataField="LecturaInicial" />
                        <asp:BoundField HeaderText="Última Lectura" DataField="UltimaLectura" />
                        <asp:BoundField HeaderText="Tipo" DataField="Tipo" />
                        <asp:TemplateField HeaderText="Acción">
                            <ItemTemplate>
                                <asp:Button CssClass="btn btn-warning" runat="server"
                                    CommandName="modificar" Text="Modificar"
                                    CommandArgument='<%# Eval("Id") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Acción">
                            <ItemTemplate>
                                <asp:Button CssClass="btn btn-danger" runat="server"
                                    CommandName="eliminar" Text="Eliminar"
                                    CommandArgument='<%# Eval("Id") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
             </div>
            </ContentTemplate>
        </asp:UpdatePanel>

    </div>
</asp:Content>

