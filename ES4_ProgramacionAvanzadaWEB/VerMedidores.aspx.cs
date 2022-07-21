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
    public partial class VerMedidores : System.Web.UI.Page
    {
        private IMedidoresDAL medidoresDAL = new MedidoresDALDB();

        private void cargarGrilla(List<Medidor> medidores)
        {
            this.grillaMedidores.DataSource = medidores;
            this.grillaMedidores.DataBind();
        }

        private void cargarGrilla()
        {
            List<Medidor> medidores;
            if (this.todosChx.Checked)
            {
                medidores = this.medidoresDAL.ObtenerMedidores();
            }
            else
            {
                medidores = this.medidoresDAL.ObtenerMedidores(this.tipoDDL.SelectedItem.Value);
            }
            this.cargarGrilla(medidores);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.cargarGrilla();
            }
        }

        protected void tipoDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.cargarGrilla();
        }

        protected void todosChx_CheckedChanged(object sender, EventArgs e)
        {
            this.tipoDDL.Enabled = !this.todosChx.Checked;
            this.cargarGrilla();
        }

        protected void grillaMedidores_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "eliminar")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                this.medidoresDAL.EliminarMedidor(id);
                this.cargarGrilla();
            }
            if (e.CommandName == "modificar")
            {
                Session["Parametro"] = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("ModificarMedidor.aspx");
            }
        }
    }
}