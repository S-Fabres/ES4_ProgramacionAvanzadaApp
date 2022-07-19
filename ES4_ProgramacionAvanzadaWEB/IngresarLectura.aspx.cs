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
    public partial class IngresarLectura : System.Web.UI.Page
    {
        private ILecturasDAL lecturasDAL = new LecturasDALDB();
        private IMedidoresDAL medidoresDAL = new MedidoresDALDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Medidor> medidores = medidoresDAL.ObtenerMedidores();
                this.idMedidorDdl.DataSource = medidores;
                this.idMedidorDdl.DataTextField = "Id";
                this.idMedidorDdl.DataBind();
            }
        }
        protected void guardarBtn_Click(object sender, EventArgs e)
        {
            if (this.codigoTxt != null || this.horaTxt != null || this.minutosTxt != null || this.lecturaActualTxt != null)
            {
                Lectura lectura = new Lectura();
                lectura.Codigo = Convert.ToInt32(this.codigoTxt.Text.Trim());
                lectura.IdMedidor = Convert.ToInt32(this.idMedidorDdl.SelectedItem.Value);
                lectura.Fecha = this.CalendarFecha.SelectedDate.ToString("dd-MM-yyyy");
                lectura.Hora = this.horaTxt.Text.Trim() + ":" + this.minutosTxt.Text.Trim();
                lectura.LecturaActual = Convert.ToInt32(this.lecturaActualTxt.Text.Trim());

                this.lecturasDAL.IngresarLectura(lectura);
                Response.Redirect("MostrarLecturas.aspx");
            }
        }
    }
}