/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controle;




public class Parent extends Personne {
    private int revenue ;
    private String email;
    private int numTel;

    public Parent(int revenue, String email, int numTel, String nom, String prenom, String adresse, String dateNaissance, String situation) {
        super( nom, prenom, adresse, dateNaissance, situation);
        this.revenue = revenue;
        this.email = email;
        this.numTel = numTel;
    }

    

    

    public int getRevenue() {
        return revenue;
    }

    public void setRevenue(int revenue) {
        this.revenue = revenue;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getNumTel() {
        return numTel;
    }

    public void setNumTel(int numTel) {
        this.numTel = numTel;
    }
    
}
