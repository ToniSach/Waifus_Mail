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
public class Ticket {

    public Ticket(int id, String Nom_Serv, String Fecha_Com, String Prod_Com, Double Total) {
        this.id = id;
        this.Nom_Serv = Nom_Serv;
        this.Fecha_Com = Fecha_Com;
        this.Prod_Com = Prod_Com;
        this.Total = Total;
    }
    private int id;
    private String Nom_Serv;
    private String Fecha_Com;
    private String Prod_Com;
    private Double Total;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom_Serv() {
        return Nom_Serv;
    }

    public void setNom_Serv(String Nom_Serv) {
        this.Nom_Serv = Nom_Serv;
    }

    public String getFecha_Com() {
        return Fecha_Com;
    }

    public void setFecha_Com(String Fecha_Com) {
        this.Fecha_Com = Fecha_Com;
    }

    public String getProd_Com() {
        return Prod_Com;
    }

    public void setProd_Com(String Prod_Com) {
        this.Prod_Com = Prod_Com;
    }

    public Double getTotal() {
        return Total;
    }

    public void setTotal(Double Total) {
        this.Total = Total;
    }
}
