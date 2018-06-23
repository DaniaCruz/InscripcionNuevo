using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Conect.DTO
{
    public interface IAspirante
    {
        AlumComDTO AlumComDTO { get; }
        AlumnoDTO AlumnoDTO { get; }
        DatosFamiliaresDTO DatosFamiliaresDTO { get; }
    }
}
