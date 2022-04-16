/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controle;


public class Facture {

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getFacDate() {
        return facDate;
    }

    public void setFacDate(String facDate) {
        this.facDate = facDate;
    }

    public Double getMontant() {
        return montant;
    }

    public void setMontant(Double montant) {
        this.montant = montant;
    }


    public Facture(String type, String facDate, Double montant) {
        this.type = type;
        this.facDate = facDate;
        this.montant = montant;
    }
    private String type;
    private String facDate;
    private Double montant;
}
