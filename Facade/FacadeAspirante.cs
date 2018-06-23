using Conect.DAO;
using Conect.DTO;
using Conect.Utileria;
using Inscripcion.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
public class FacadeAspirante
    {
        IAspirante a;
        UConexion con;
        public FacadeAspirante(IAspirante a)
        {
            con = new UConexion();
            this.a = a;
        }

    #region Operaciones de SQl individual (necesario)

    //Inserts
    public int InsertAlumno()
    {
        return new AlumnoDAOSQL().Insert(a.AlumnoDTO);
    }
    public void InsertDatosFamiliares(DatosFamiliaresDTO df,int id)
    {
        new DatosFamiliaresDAOSQL().Insert(df, id);
    }
    public void InsertAlumCom(int id)
    {
        new AlumComDAOSQL().Insert(a.AlumComDTO, id);
    }
   

    public void InsertMunicipio(int esp_ID,string mun_Nombre)
    {
        new CMunicipiosDAO().Insert(mun_Nombre,esp_ID);
    }

    //Update
    public void UpdateDatosFamiliares(DatosFamiliaresDTO df, int id)
    {
        new DatosFamiliaresDAOSQL().Update(df, id);
    }

    //Delete 
    public void DeleteDatosFamiliares(int id)
    {
        new DatosFamiliaresDAOSQL().Delete(id);
    }

    public void DeleteDatosFamiliaresR(int id)
    {
        new DatosFamiliaresDAOSQL().DeleteVacios(id);
    }
    #endregion

    #region Operaciones comunes entre tablas que dependen de ALumno
    public void LlamarUpdate(int id)
    {
        new AlumnoDAOSQL().Update(a.AlumnoDTO, id);
        new AlumComDAOSQL().Update(a.AlumComDTO, id);
    }

    public void UpdateEscuela(int id)
    {
        new AlumComDAOSQL().UpdateEsc(a.AlumComDTO, id);
    }

    #endregion
}