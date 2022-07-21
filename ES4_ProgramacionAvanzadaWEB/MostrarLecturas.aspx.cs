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
    public partial class MostrarLecturas : System.Web.UI.Page
    {
        private ILecturasDAL lecturasDAL = new LecturasDALDB();

        private void cargarGrilla()
        {
            List<Lectura> lecturas = this.lecturasDAL.ObtenerLecturas();
            this.grillaLecturas.DataSource = lecturas;
            this.grillaLecturas.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.cargarGrilla();
            }
        }

        protected void grillaLecturas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "eliminar")
            {
                int codigo = Convert.ToInt32(e.CommandArgument);
                this.lecturasDAL.EliminarLectura(codigo);
                this.cargarGrilla();
            }
            if (e.CommandName == "modificar")
            {
                int codigo = Convert.ToInt32(e.CommandArgument);
                Session["Parametro"] = codigo;
                Response.Redirect("ModificarLectura.aspx");
            }
        }
    }
}