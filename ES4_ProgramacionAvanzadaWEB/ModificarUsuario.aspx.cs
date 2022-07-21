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
    public partial class ModificarUsuario : System.Web.UI.Page
    {
        private IUsuariosDAL usuariosDAL = new UsuariosDALDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Parametro"] != null)
                {
                    this.idTxt.Text = Convert.ToString(Session["Parametro"]);
                }
            }
        }

        protected void modificarBtn_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario();
            usuario.Id = Convert.ToInt32(this.idTxt.Text.Trim());
            usuario.Rut = this.rutTxt.Text.Trim();
            usuario.Nombre = this.nombreTxt.Text.Trim();
            usuario.Password = this.passwordTxt.Text.Trim();
            usuario.CorreoElectronico = this.correoTxt.Text.Trim();

            this.usuariosDAL.Actualizar(usuario);
            Response.Redirect("ListarUsuarios.aspx");
        }
    }
}