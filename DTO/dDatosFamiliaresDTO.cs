using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Conect.DTO
{
    public class DatosFamiliaresDTO
    {
        public int ID { get; set; }
        public string daf_Nombre { get; set; }
        public int daf_Edad { get; set; }
        public string daf_Escolaridad { get; set; }
        public int daf_Ocupacion { get; set; }
        public string daf_EdoCivil { get; set; }
        public string daf_Parentezco { get; set; }
        public int ocu_ID { get; set; }
        public int alu_ID { get; set; }
        public int daf_NoFamiliar { get; set; }
    }

}