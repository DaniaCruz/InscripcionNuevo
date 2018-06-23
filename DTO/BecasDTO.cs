using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Conect.DTO
{
    public class BecasDTO
    {
        public bool bec_EstatusBecado { get; set; }
        public bool bec_SuspenciosEstudios { get; set; }
        public bool bec_BecadoAntes { get; set; }
        public bool bec_EstatusOportunidades { get; set; }
        public int alu_ID { get; set; }
        public int bec_ID { get; set; }
    }
}