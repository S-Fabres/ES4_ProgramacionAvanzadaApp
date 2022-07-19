using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresModel.DAL
{
    public class LecturasDALDB : ILecturasDAL
    {
        private MedidoresDBEntities medidoresDB = new MedidoresDBEntities();

        public void IngresarLectura(Lectura lectura)
        {
            List<Lectura> lecturas = this.medidoresDB.Lecturas.ToList();
            bool existe = false;
            foreach (Lectura l in lecturas)
            {
                if (l.Codigo == lectura.Codigo)
                {
                    existe = true;
                }
            }
            if (existe == false)
            {
                this.medidoresDB.Lecturas.Add(lectura);
                this.medidoresDB.SaveChanges();
            }
        }

        public void EliminarLectura(int codigo)
        {
            Lectura lectura = this.medidoresDB.Lecturas.Find(codigo);
            this.medidoresDB.Lecturas.Remove(lectura);
            this.medidoresDB.SaveChanges();
        }

        public Lectura Obtener(int codigo)
        {
            return this.medidoresDB.Lecturas.Find(codigo);
        }

        public List<Lectura> ObtenerLecturas()
        {
            return this.medidoresDB.Lecturas.ToList();
        }

        public void Actualizar(Lectura l)
        {
            Lectura lOriginal = this.medidoresDB.Lecturas.Find(l.Codigo);
            lOriginal.IdMedidor = l.IdMedidor;
            lOriginal.Fecha = l.Fecha;
            lOriginal.Hora = l.Hora;
            lOriginal.LecturaActual = l.LecturaActual;
            this.medidoresDB.SaveChanges();
        }
    }
}
