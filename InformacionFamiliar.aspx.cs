using Conect.DAO;
using Conect.DTO;
using Inscripcion.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inscripcion
{
    public partial class InformacionFamiliar : System.Web.UI.Page , IAspirante
    {

        public static int alu_ID = 0;
        AlumnoDAOSQL alu = new AlumnoDAOSQL();
        EncuestasDAO enc = new EncuestasDAO();

        public AlumComDTO AlumComDTO
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        public AlumnoDTO AlumnoDTO
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        public DatosFamiliaresDTO DatosFamiliaresDTO
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            MaintainScrollPositionOnPostBack = true;
            ((Menu)Master).camabiarcolor(4);

            try
            {
                MaintainScrollPositionOnPostBack = true;


                alu_ID = alu.ObtenerID(Session["alu_NumControl"].ToString());
                if (alu_ID != 0)
                {
                    Session["alu_ID"] = alu_ID;
                    ((Menu)Master).camabiarcolor(4);
                    if (!IsPostBack)
                    {


                        if (enc.EncuestaContestada(alu_ID, 4))//si existe el alumno
                        {
                            btnGuardar.Text = "ACTUALIZAR";
                            BackUpTablas(alu_ID);//ESTE METODO RECUPERA TODO DE LAS TABLAS NO SE LE TIENE QUE MOVER NADA SOLO TERMINA DE IGUALAR COMPONENTES
                        }

                        else
                        {
                            btnGuardar.Text = "GUARDAR";
                            RecuperarAlumno(alu_ID);

                        }

                    }

                }
            }
            catch (Exception)
            {

                throw;
            }



            }

        protected void rb_Hijos_ID_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rbSi1.Selected == true)
            {
                RequiredFieldValidator16.Visible = true;
                dprHijos.Visible = true;
                Label98.Visible = true;
            }
            else
            {

                RequiredFieldValidator16.Visible = false;
                dprHijos.Visible = false;
                Label98.Visible = false;
            }
        }

        protected void num_Personas_TextChanged(object sender, EventArgs e)
        {
            lbTabla.Visible = true;
            Tabla.Visible = true;
            TableRow[] filas = { Fila0, Fila1, Fila2, Fila3, Fila4, Fila5, Fila6, Fila6, Fila7, Fila8};

            for (int i = 0; i < filas.Length; i++)
                filas[i].Visible = false;

            int hijos=int.Parse( num_Personas.Text);
            for (int i = 0; i <hijos; i++)
                filas[i].Visible = true;
            


        }

        DatosFamiliaresDTO llenarDatosFamiliares(int i)//
        {
            DatosFamiliaresDTO df = null;
            if (i == 0)//JALA DATOS DE LA FILA 1
            {
                df = new DatosFamiliaresDTO();
                df.daf_Nombre = Familiar0_Nombre.Text;
                int edad = 0;
                if (Familiar0_Edad.Text != "") { edad = Convert.ToInt32(Familiar0_Edad.Text); }
                df.daf_Edad = edad;
                df.daf_Escolaridad = Familiar0_Escolaridad.SelectedItem.Text;
                df.daf_Parentezco = Familiar0_Parentezco.SelectedItem.Text;
                df.ocu_ID = Convert.ToInt32(Familiar0_Ocupacion.SelectedValue);
                return df;
            }
            if (i == 1)//JALA DATOS DE LA FILA 2
            {
                df = new DatosFamiliaresDTO();
                df.daf_Nombre = Familiar1_Nombre.Text;
                int edad = 0;
                if (Familiar1_Edad.Text != "") { edad = Convert.ToInt32(Familiar1_Edad.Text); }
                df.daf_Edad = edad;
                df.daf_Escolaridad = Familiar1_Escolaridad.SelectedItem.Text;
                df.daf_EdoCivil = Familiar1_EstadoCivil.SelectedItem.Text;
                df.daf_Parentezco = Familiar1_Parentezco.SelectedItem.Text;
                df.ocu_ID = Convert.ToInt32(Familiar1_Ocupacion.SelectedValue);
                return df;
            }
            if (i == 2)
            {
                df = new DatosFamiliaresDTO();
                df.daf_Nombre = Familiar2_Nombre.Text;
                int edad = 0;
                if (Familiar2_Edad.Text != "") { edad = Convert.ToInt32(Familiar2_Edad.Text); }
                df.daf_Edad = edad;
                df.daf_Escolaridad = Familiar2_Escolaridad.SelectedItem.Text;
                df.daf_EdoCivil = Familiar2_EstadoCivil.SelectedItem.Text;
                df.daf_Parentezco = Familiar2_Parentezco.SelectedItem.Text;
                df.ocu_ID = Convert.ToInt32(Familiar2_Ocupacion.SelectedValue);
                return df;
            }
            if (i == 3)
            {
                df = new DatosFamiliaresDTO();
                df.daf_Nombre = Familiar3_Nombre.Text;
                int edad = 0;
                if (Familiar3_Edad.Text != "") { edad = Convert.ToInt32(Familiar3_Edad.Text); }
                df.daf_Edad = edad;
                df.daf_Escolaridad = Familiar3_Escolaridad.SelectedItem.Text;
                df.daf_EdoCivil = Familiar3_EstadoCivil.SelectedItem.Text;
                df.daf_Parentezco = Familiar3_Parentezco.SelectedItem.Text;
                df.ocu_ID = Convert.ToInt32(Familiar3_Ocupacion.SelectedValue);
                return df;
            }
            if (i == 4)
            {
                df = new DatosFamiliaresDTO();
                df.daf_Nombre = Familiar4_Nombre.Text;
                int edad = 0;
                if (Familiar4_Edad.Text != "") { edad = Convert.ToInt32(Familiar4_Edad.Text); }
                df.daf_Edad = edad;
                df.daf_Escolaridad = Familiar4_Escolaridad.SelectedItem.Text;
                df.daf_EdoCivil = Familiar4_EstadoCivil.SelectedItem.Text;
                df.daf_Parentezco = Familiar4_Parentezco.SelectedItem.Text;
                df.ocu_ID = 1; Convert.ToInt32(Familiar4_Ocupacion.SelectedValue);
                return df;
            }
            if (i == 5)
            {
                df = new DatosFamiliaresDTO();
                df.daf_Nombre = Familiar5_Nombre.Text;
                int edad = 0;
                if (Familiar5_Edad.Text != "") { edad = Convert.ToInt32(Familiar5_Edad.Text); }
                df.daf_Edad = edad;
                df.daf_Escolaridad = Familiar5_Escolaridad.SelectedItem.Text;
                df.daf_EdoCivil = Familiar5_EstadoCivil.SelectedItem.Text;
                df.daf_Parentezco = Familiar5_Parentezco.SelectedItem.Text;
                df.ocu_ID = Convert.ToInt32(Familiar5_Ocupacion.SelectedValue);
                return df;
            }
            if (i == 6)
            {
                df = new DatosFamiliaresDTO();
                df.daf_Nombre = Familiar6_Nombre.Text;
                int edad = 0;
                if (Familiar6_Edad.Text != "") { edad = Convert.ToInt32(Familiar6_Edad.Text); }
                df.daf_Edad = edad;
                df.daf_Escolaridad = Familiar6_Escolaridad.SelectedItem.Text;
                df.daf_EdoCivil = Familiar6_EstadoCivil.SelectedItem.Text;
                df.daf_Parentezco = Familiar6_Parentezco.SelectedItem.Text;
                df.ocu_ID = Convert.ToInt32(Familiar6_Ocupacion.SelectedValue);
                return df;
            }
            return null;
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            
            FacadeAspirante fa = new FacadeAspirante(this);
            if (btnGuardar.Text == "GUARDAR")
            {
               
            }
            else
            {
            }

        }
    }
}