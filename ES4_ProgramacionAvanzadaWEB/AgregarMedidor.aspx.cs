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
    public partial class AgregarMedidor : System.Web.UI.Page
    {
        private IMedidoresDAL medidoresDAL = new MedidoresDALDB();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ingresarBtn_Click(object sender, EventArgs e)
        {
            if (this.idTxt != null || this.lecturaInicialTxt != null || this.ultimaLecturaTxt != null || this.tipoRbl.SelectedItem.Value != null) {
                Medidor medidor = new Medidor();
                medidor.Id = Convert.ToInt32(this.idTxt.Text.Trim());
                medidor.LecturaInicial = Convert.ToInt32(this.lecturaInicialTxt.Text.Trim());
                medidor.UltimaLectura = Convert.ToInt32(this.ultimaLecturaTxt.Text.Trim());
                medidor.Tipo = this.tipoRbl.Text.Trim();

                this.medidoresDAL.AgregarMedidor(medidor);
                Response.Redirect("VerMedidores.aspx");
            }
        }
    }
}