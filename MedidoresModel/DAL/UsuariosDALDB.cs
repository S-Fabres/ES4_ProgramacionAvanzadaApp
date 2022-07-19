using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresModel.DAL
{
    public class UsuariosDALDB : IUsuariosDAL
    {
        private MedidoresDBEntities medidoresDB = new MedidoresDBEntities();

        public void AgregarUsuario(Usuario usuario)
        {
            List<Usuario> usuarios = this.medidoresDB.Usuarios.ToList();
            bool existe = false;
            foreach (Usuario u in usuarios)
            {
                if (u.Id == usuario.Id)
                {
                    existe = true;
                }
            }
            if (existe == false)
            {
                this.medidoresDB.Usuarios.Add(usuario);
                this.medidoresDB.SaveChanges();
            }
        }

        public void EliminarUsuario(int id)
        {
            Usuario usuario = this.medidoresDB.Usuarios.Find(id);
            this.medidoresDB.Usuarios.Remove(usuario);
            this.medidoresDB.SaveChanges();
        }

        public Usuario Obtener(int id)
        {
            return this.medidoresDB.Usuarios.Find(id);
        }

        public List<Usuario> ObtenerUsuarios()
        {
            return this.medidoresDB.Usuarios.ToList();
        }
        public void Actualizar(Usuario u)
        {
            Usuario uOriginal = this.medidoresDB.Usuarios.Find(u.Id);
            uOriginal.Rut = u.Rut;
            uOriginal.Nombre = u.Nombre;
            uOriginal.Password = u.Password;
            uOriginal.CorreoElectronico = u.CorreoElectronico;
            this.medidoresDB.SaveChanges();
        }
    }
}
