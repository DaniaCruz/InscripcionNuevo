using Conect.Utileria;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Conect.DAO
{
    public interface IAdaoFicha<T>
    {
        SqlCommand comando { get; set; }

        UConexion conexion { get; set; }

        string instruccion { get; set; }

        void Insert(T obj, int id);
        void Update(T obj, int id);

    }
}
