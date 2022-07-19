<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ListarUsuarios.aspx.cs" Inherits="ES4_ProgramacionAvanzadaWEB.ListarUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="row mt-5">
                <asp:GridView 
                    CssClass="table table-hover table-bordered"
                    ID="grillaUsuarios"
                    AutoGenerateColumns="false"
                    ShowHeaderWhenEmpty="true"
                    EmptyDataText="No hay registros"
                    runat="server"
                    OnRowCommand="grillaUsuarios_RowCommand">
                    <Columns>
                        <asp:BoundField HeaderText="Id del Usuario" DataField="Id" />
                        <asp:BoundField HeaderText="Rut" DataField="Rut" />
                        <asp:BoundField HeaderText="Nombre completo" DataField="Nombre" />
                        <asp:BoundField HeaderText="Contraseña" DataField="Password" />
                        <asp:BoundField HeaderText="Correo Electrónico" DataField="CorreoElectronico" />
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
</asp:Content>
