using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresModel.DAL
{
    public class MedidoresDALDB : IMedidoresDAL
    {
        private MedidoresDBEntities medidoresDB = new MedidoresDBEntities();

        public void AgregarMedidor(Medidor medidor)
        {
            List<Medidor> medidores = this.medidoresDB.Medidors.ToList();
            bool existe = false;
            foreach (Medidor m in medidores)
            {
                if (m.Id == medidor.Id)
                {
                    existe = true;
                } 
            }
            if(existe == false)
            {
                this.medidoresDB.Medidors.Add(medidor);
                this.medidoresDB.SaveChanges();
            }
        }

        public void EliminarMedidor(int id)
        {
            Medidor medidor = this.medidoresDB.Medidors.Find(id);
            this.medidoresDB.Medidors.Remove(medidor);
            this.medidoresDB.SaveChanges();
        }

        public Medidor Obtener(int id)
        {
            return this.medidoresDB.Medidors.Find(id);
        }

        public List<Medidor> ObtenerMedidores()
        {
            return this.medidoresDB.Medidors.ToList();
        }

        public void Actualizar(Medidor m)
        {
            Medidor mOriginal = this.medidoresDB.Medidors.Find(m.Id);
            mOriginal.LecturaInicial = m.LecturaInicial;
            mOriginal.UltimaLectura = m.UltimaLectura;
            mOriginal.Tipo = m.Tipo;
            this.medidoresDB.SaveChanges();
        }

        public List<Medidor> ObtenerMedidores(string tipo)
        {
            var query = from m in this.medidoresDB.Medidors
                        where m.Tipo == tipo
                        select m;
            return query.ToList();
        }
    }
}
