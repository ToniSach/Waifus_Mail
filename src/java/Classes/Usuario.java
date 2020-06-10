/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

/**
 *
 * @author tonis
 */
public class Usuario {
    private int id_usuarioo;
    private String Nom_usuarioo;
    private String ApPat_usuarioo;
    private String ApMat_usuarioo;
    private String FechaNac_usuarioo;
    private String Correo_usuarioo;
    private String Contra_usuarioo;
    private String Direccion_usuarioo;
    private int CP_usuarioo;
    private String Tel_usuarioo;
    

    public Usuario(int id_usuarioo, String Nom_usuarioo, String ApPat_usuarioo, String ApMat_usuarioo, String FechaNac_usuarioo, String Correo_usuarioo, String Contra_usuarioo, String Direccion_usuarioo, int CP_usuarioo, String Tel_usuarioo) {
        this.id_usuarioo = id_usuarioo;
        this.Nom_usuarioo = Nom_usuarioo;
        this.ApPat_usuarioo = ApPat_usuarioo;
        this.ApMat_usuarioo = ApMat_usuarioo;
        this.FechaNac_usuarioo = FechaNac_usuarioo;
        this.Correo_usuarioo = Correo_usuarioo;
        this.Contra_usuarioo = Contra_usuarioo;
        this.Direccion_usuarioo = Direccion_usuarioo;
        this.CP_usuarioo = CP_usuarioo;
        this.Tel_usuarioo = Tel_usuarioo;
    }

    public Usuario() {
        
    }

    public String getTel_usuarioo() {
        return Tel_usuarioo;
    }

    public void setTel_usuarioo(String Tel_usuarioo) {
        this.Tel_usuarioo = Tel_usuarioo;
    }

    public int getId_usuarioo() {
        return id_usuarioo;
    }

    public void setId_usuarioo(int id_usuarioo) {
        this.id_usuarioo = id_usuarioo;
    }

    public String getNom_usuarioo() {
        return Nom_usuarioo;
    }

    public void setNom_usuarioo(String Nom_usuarioo) {
        this.Nom_usuarioo = Nom_usuarioo;
    }

    public String getApPat_usuarioo() {
        return ApPat_usuarioo;
    }

    public void setApPat_usuarioo(String ApPat_usuarioo) {
        this.ApPat_usuarioo = ApPat_usuarioo;
    }

    public String getApMat_usuarioo() {
        return ApMat_usuarioo;
    }

    public void setApMat_usuarioo(String ApMat_usuarioo) {
        this.ApMat_usuarioo = ApMat_usuarioo;
    }

    public String getFechaNac_usuarioo() {
        return FechaNac_usuarioo;
    }

    public void setFechaNac_usuarioo(String FechaNac_usuarioo) {
        this.FechaNac_usuarioo = FechaNac_usuarioo;
    }

    public String getCorreo_usuarioo() {
        return Correo_usuarioo;
    }

    public void setCorreo_usuarioo(String Correo_usuarioo) {
        this.Correo_usuarioo = Correo_usuarioo;
    }

    public String getContra_usuarioo() {
        return Contra_usuarioo;
    }

    public void setContra_usuarioo(String Contra_usuarioo) {
        this.Contra_usuarioo = Contra_usuarioo;
    }

    public String getDireccion_usuarioo() {
        return Direccion_usuarioo;
    }

    public void setDireccion_usuarioo(String Direccion_usuarioo) {
        this.Direccion_usuarioo = Direccion_usuarioo;
    }

    public int getCP_usuarioo() {
        return CP_usuarioo;
    }

    public void setCP_usuarioo(int CP_usuarioo) {
        this.CP_usuarioo = CP_usuarioo;
    }
    
    
}
