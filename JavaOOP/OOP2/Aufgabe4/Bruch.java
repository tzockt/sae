package JavaOOP.OOP2.Aufgabe4;

import javax.swing.*;

public class Bruch {
    private int zaehler;
    private int nenner;
    private int std_zaehler = 0;
    private int std_nenner = 1;

    public Bruch(){
        setZaehler(std_zaehler);
        setNenner(std_nenner);
    }
    public Bruch(int zaehler, int nenner){
        setZaehler(zaehler);
        setNenner(nenner);
    }
    public Bruch(int zaehler){
        setZaehler(zaehler);
        setNenner(std_nenner);
    }

    public int getZaehler() {
        return zaehler;
    }
    public void setZaehler(int zaehler) {
        this.zaehler = zaehler;
    }

    public int getNenner() {
        return nenner;
    }
    public void setNenner(int nenner) {
        this.nenner = nenner;
    }

    public void bruchEingeben(int zaehler, int nenner){
        setZaehler(zaehler);
        setNenner(nenner);
    }
    public double bruchAusgeben(){
        return (getZaehler() / getNenner());
    }
    public Bruch add(Bruch tBruch){
        int temp_z = getZaehler() + tBruch.getZaehler();
        int temp_n = getNenner() + tBruch.getNenner();

        return new Bruch(temp_z, temp_n);
    }
    public Bruch sub(Bruch tBruch){
        int temp_z = getZaehler() - tBruch.getZaehler();
        int temp_n = getNenner() - tBruch.getNenner();

        return new Bruch(temp_z, temp_n);
    }
    public Bruch mult(Bruch tBruch){
        int temp_z = getZaehler() * tBruch.getZaehler();
        int temp_n = getNenner() * tBruch.getNenner();

        return new Bruch(temp_z, temp_n);
    }
    public Bruch div(Bruch tBruch){
        int temp_z = getZaehler() * tBruch.getNenner();
        int temp_n = getNenner() * tBruch.getZaehler();

        return new Bruch(temp_z, temp_n);
    }

    public Bruch math(Bruch tbruch){
        String[] buttons = {"+", "-", "*", "/"};
        int value = JOptionPane.showOptionDialog(null, "Welche Operation soll ich durchführen?", "Math Operation", 0, JOptionPane.QUESTION_MESSAGE, null, buttons, buttons[0]);
        if (value == 0){
            return add(tbruch);
        }else if(value == 1){
            return sub(tbruch);
        }else if(value == 2){
            return mult(tbruch);
        }else if(value == 3){
            return div(tbruch);
        }else return null;
    }
}