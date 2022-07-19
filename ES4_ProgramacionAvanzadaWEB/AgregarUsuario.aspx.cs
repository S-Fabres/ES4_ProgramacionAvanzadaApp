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
    public partial class AgregarUsuario : System.Web.UI.Page
    {
        private IUsuariosDAL usuariosDAL = new UsuariosDALDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ingresarBtn_Click(object sender, EventArgs e)
        {
            if (this.rutTxt != null || this.nombreTxt != null || this.passwordTxt != null || this.correoTxt != null)
            {
                Usuario usuario = new Usuario();
                usuario.Rut = this.rutTxt.Text.Trim();
                usuario.Nombre = this.nombreTxt.Text.Trim();
                usuario.Password = this.passwordTxt.Text.Trim();
                usuario.CorreoElectronico = this.correoTxt.Text.Trim();

                this.usuariosDAL.AgregarUsuario(usuario);
                Response.Redirect("ListarUsuarios.aspx");
            }
        }
    }
}