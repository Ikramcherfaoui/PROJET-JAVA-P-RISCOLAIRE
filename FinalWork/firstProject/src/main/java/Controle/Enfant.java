/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controle;


public class Enfant {
    private String nom ;
    private String prenom ;
    private int age ;
    private String handicap ;
    private String heureArr ;
    private String heureDep ;

    public Enfant(String nom, String prenom, int age, String handicap, String heureArr, String heureDep) {
        this.nom = nom;
        this.prenom = prenom;
        this.age = age;
        this.handicap = handicap;
        this.heureArr = heureArr;
        this.heureDep = heureDep;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getHandicap() {
        return handicap;
    }

    public void setHandicap(String handicap) {
        this.handicap = handicap;
    }

    public String getHeureArr() {
        return heureArr;
    }

    public void setHeureArr(String heureArr) {
        this.heureArr = heureArr;
    }

    public String getHeureDep() {
        return heureDep;
    }

    public void setHeureDep(String heureDep) {
        this.heureDep = heureDep;
    }
    
}
