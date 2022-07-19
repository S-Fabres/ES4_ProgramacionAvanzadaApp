<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="MostrarLecturas.aspx.cs" Inherits="ES4_ProgramacionAvanzadaWEB.MostrarLecturas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="row mt-5">
                <asp:GridView 
                    CssClass="table table-hover table-bordered"
                    ID="grillaLecturas"
                    AutoGenerateColumns="false"
                    ShowHeaderWhenEmpty="true"
                    EmptyDataText="No hay registros"
                    runat="server"
                    OnRowCommand="grillaLecturas_RowCommand">
                    <Columns>
                        <asp:BoundField HeaderText="Código" DataField="Codigo" />
                        <asp:BoundField HeaderText="ID del Medidor" DataField="IdMedidor" />
                        <asp:BoundField HeaderText="Fecha" DataField="Fecha" />
                        <asp:BoundField HeaderText="Hora" DataField="Hora" />
                        <asp:BoundField HeaderText="Lectura Actual" DataField="LecturaActual" />
                        <asp:TemplateField HeaderText="Acción">
                            <ItemTemplate>
                                <asp:Button CssClass="btn btn-warning mt-1" runat="server"
                                    CommandName="modificar" Text="Modificar"
                                    CommandArgument='<%# Eval("Codigo") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Acción">
                            <ItemTemplate>
                                <asp:Button CssClass="btn btn-danger" runat="server"
                                    CommandName="eliminar" Text="Eliminar"
                                    CommandArgument='<%# Eval("Codigo") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
             </div>
            </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>
