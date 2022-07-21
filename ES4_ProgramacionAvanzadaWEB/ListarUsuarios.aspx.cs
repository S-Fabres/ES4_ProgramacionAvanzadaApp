using MedidoresModel;
using MedidoresModel.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ES4_ProgramacionAvanzadaWEB
{
    public partial class ListarUsuarios : System.Web.UI.Page
    {
        private IUsuariosDAL usuariosDAL = new UsuariosDALDB();

        private void cargarGrilla()
        {
            List<Usuario> usuarios = this.usuariosDAL.ObtenerUsuarios();
            this.grillaUsuarios.DataSource = usuarios;
            this.grillaUsuarios.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.cargarGrilla();
            }
        }

        protected void grillaUsuarios_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "eliminar")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                this.usuariosDAL.EliminarUsuario(id);
                this.cargarGrilla();
            }
            if (e.CommandName == "modificar")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Session["Parametro"] = id;
                Response.Redirect("ModificarUsuario.aspx");
            }
        }
    }
}