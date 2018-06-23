using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Conect.DTO
{
    public class AntecedentesAluPDTO
    {
        public string alp_Empleo { get; set; }
        public bool alp_EstatusJefeHogar { get; set; }
        public int alp_NoHijosDepeEcon { get; set; }
        public int alp_NoPersonasDepeIngr { get; set; }
        public int alu_ID { get; set; }
        public int alp_NoDiasTrabajaJefeH { get; set; }
        public double alp_DineroMensualPorTrabajar { get; set; }
        public string alp_PersonaVives { get; set; }
        public double alp_IngresoAlumno { get; set; }

        public string alp_ParentezcoJefeHogar { get; set; }
        public string alp_EspeDiscapac { get; set; }
        public bool alp_Hijos { get; set; }
    }
}