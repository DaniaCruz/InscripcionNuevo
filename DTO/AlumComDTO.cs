using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Conect.DTO
{
    public class AlumComDTO
    {
        public int ID
        {
            get;
            set;
        }
        public int lei_ID { get; set; }


        public int esc_ID { get; set; }
        public string alc_Fcaebook { get; set; }
        public string alc_Celular { get; set; }
        public string alc_NumInt { get; set; }
        public string alc_NumExt { get; set; }
        public char alc_EdoCivil { get; set; }
        public string alc_EspBachill { get; set; }
        public int alu_ID
        {
            get;
            set;
        }

        public virtual string alc_Direccion
        {
            get;
            set;
        }

        public virtual string alc_Colonia
        {
            get;
            set;
        }

        public virtual string alc_CodPostal
        {
            get;
            set;
        }

        public virtual DateTime alc_FechaNac
        {
            get;
            set;
        }

        public virtual string alc_LugarNaci
        {
            get;
            set;
        }

        public virtual string alc_RFC
        {
            get;
            set;
        }

        public virtual string alc_Curp
        {
            get;
            set;
        }

        public virtual string alc_ServMedico
        {
            get;
            set;
        }

        public virtual string alc_CveFiliacion
        {
            get;
            set;
        }

        public virtual string alc_TipoSangre
        {
            get;
            set;
        }

        public virtual int esp_ID
        {
            get;
            set;
        }

        public virtual string alc_Tel
        {
            get;
            set;
        }

        public virtual string alc_Tutor
        {
            get;
            set;
        }

        public virtual string alc_DirTutor
        {
            get;
            set;
        }

        public virtual string alc_LugarProce
        {
            get;
            set;
        }

        public virtual float alc_PromBachi
        {
            get;
            set;
        }

        public virtual string alc_TelTutor
        {
            get;
            set;
        }

        public virtual char alc_ServSocial
        {
            get;
            set;
        }

        public virtual char alc_Recidencias
        {
            get;
            set;
        }

        public string alc_AnioTerminoBachi { get; set; }
        public virtual string alc_TipoBeca
        {
            get;
            set;
        }

        public virtual int pro_ID
        {
            get;
            set;
        }

        public virtual string alc_ColTut
        {
            get;
            set;
        }

        public virtual string alc_EdoCivTut
        {
            get;
            set;
        }

        public virtual int mun_Proced_ID
        {
            get;
            set;
        }

        public virtual int est_Proced_ID
        {
            get;
            set;
        }

        public virtual int mun_Natatl_ID
        {
            get;
            set;
        }

        public virtual int est_Natatl_ID
        {
            get;
            set;
        }

        public virtual int mun_Escue_ID
        {
            get;
            set;
        }

        public virtual int est_Escue_ID
        {
            get;
            set;
        }

        public virtual int mun_Tutor_ID
        {
            get;
            set;
        }

        public virtual int est_Tutor_ID
        {
            get;
            set;
        }

        public virtual string alc_PwdTutor
        {
            get;
            set;
        }

        public string alc_RefBanco
        {
            get;
            set;
        }

        public virtual string alc_RefVerano
        {
            get;
            set;
        }

        public virtual string alc_RefOtra
        {
            get;
            set;
        }

        public virtual string alc_Correo
        {
            get;
            set;
        }

        public virtual string alc_ProfTutor
        {
            get;
            set;
        }

        public virtual string alc_Localidad
        {
            get;
            set;
        }

        public virtual string alc_Calle
        {
            get;
            set;
        }

    }
}