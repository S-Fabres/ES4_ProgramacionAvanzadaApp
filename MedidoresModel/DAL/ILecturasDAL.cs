using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresModel.DAL
{
    public interface ILecturasDAL
    {
        void IngresarLectura(Lectura lectura);
        void EliminarLectura(int codigo);
        Lectura Obtener(int codigo);
        List<Lectura> ObtenerLecturas();
        void Actualizar(Lectura l);
    }
}
