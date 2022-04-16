/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controle;


public class Activite {
    private String intitule ;
    private String ActDate;

    public String getIntitule() {
        return intitule;
    }

    public void setIntitule(String intitule) {
        this.intitule = intitule;
    }

    public String getActDate() {
        return ActDate;
    }

    public void setActDate(String ActDate) {
        this.ActDate = ActDate;
    }

    public Activite(String intitule, String ActDate) {
        this.intitule = intitule;
        this.ActDate = ActDate;
    }
}
