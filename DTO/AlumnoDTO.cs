using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Conect.DTO
{
    public class AlumnoDTO
    {
        public int ID { get; set; }
        public static int alu_ID { get; set; }
        public virtual string alu_NumControl
        {
            get;
            set;
        }
        public int lei_ID { get; set; }
        public int alu_Carrera { get; set; }
        public int alu_SegundaOpcion { get; set; }
        public int alu_TerceraOpcion { get; set; }
        public int bec_ID { get; set; }
        public int alu_Edad { get; set; }
        public virtual string alu_Nombre
        {
            get;
            set;
        }

        public virtual string alu_ApellidoPaterno
        {
            get;
            set;
        }

        public virtual string alu_ApellidoMaterno
        {
            get;
            set;
        }

        public char alu_Sexo
        {
            get;
            set;
        }

        public int esp_ID
        {
            get;
            set;
        }

        public virtual int pes_ID
        {
            get;
            set;
        }

        public virtual int alu_CreditosAcum
        {
            get;
            set;
        }

        public virtual string alu_Status
        {
            get;
            set;
        }

        public virtual string alu_StatusAct
        {
            get;
            set;
        }

        public virtual int alu_CuatrimestreAct
        {
            get;
            set;
        }

        public virtual int per_ID_Ingreso
        {
            get;
            set;
        }

        public virtual char alu_Inscrito
        {
            get;
            set;
        }

        public virtual char alu_Preinscrito
        {
            get;
            set;
        }

        public virtual int alu_CreditosActu
        {
            get;
            set;
        }

        public virtual string alu_AnioIngreso
        {
            get;
            set;
        }

        public virtual int per_ID_Termin
        {
            get;
            set;
        }
        public virtual string alu_Password
        {
            get;
            set;
        }

        public virtual string alu_MotivoBaja
        {
            get;
            set;
        }

        public virtual string alu_ClaveAutorizSem
        {
            get;
            set;
        }

        public virtual int alu_SemProrro
        {
            get;
            set;
        }

        public virtual int moe_ID
        {
            get;
            set;
        }

        public virtual int alu_SemAutorizado
        {
            get;
            set;
        }

        public virtual int alu_CruceHoras
        {
            get;
            set;
        }

        public virtual byte alu_Foto
        {
            get;
            set;
        }

        public virtual string alu_FotoNombre
        {
            get;
            set;
        }

        public virtual bool alu_InsProtesta
        {
            get;
            set;
        }

        public virtual bool alu_Bloqueado
        {
            get;
            set;
        }

        public virtual int tut_ID
        {
            get;
            set;
        }

        public virtual bool alu_DatosActualizados
        {
            get;
            set;
        }

        public virtual char alu_PreinscritoVer
        {
            get;
            set;
        }

        public virtual string alu_Matricula_Pronabes
        {
            get;
            set;
        }

        public virtual string alu_Generacion
        {
            get;
            set;
        }

        public virtual int cat_ID_Tutor
        {
            get;
            set;
        }

        public virtual int alu_Grupo
        {
            get;
            set;
        }

        public virtual int est_ID
        {
            get;
            set;
        }

        public virtual int idi_ID
        {
            get;
            set;
        }
        public int dis_ID { get; set; }

        public virtual int tit_ID
        {
            get;
            set;
        }

        public virtual int alu_Cedula
        {
            get;
            set;
        }
        public int mod_ID { get; set; }
    }
}