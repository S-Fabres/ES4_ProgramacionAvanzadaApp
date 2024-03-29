﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresModel.DAL
{
    public interface IUsuariosDAL
    {
        void AgregarUsuario(Usuario usuario);
        void EliminarUsuario(int id);
        Usuario Obtener(int id);
        List<Usuario> ObtenerUsuarios();
        void Actualizar(Usuario u);
    }
}
