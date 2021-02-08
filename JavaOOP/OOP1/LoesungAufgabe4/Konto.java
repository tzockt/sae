package JavaOOP.OOP1.LoesungAufgabe4;

import java.util.ArrayList;

public class Konto extends Konten{
    //Variablen
    private String kNr;
    private String kInhaber;
    private double kStand;
    private static int kCounter = 0;
    private static String standkNr = "40223307";
    private static String standkInhaber = "";
    private static double standkStand = 0;


    //Constructors
    public Konto() {
        this.kNr = getStandkNr();
        this.kInhaber = getStandkInhaber();
        this.kStand = getStandkStand();

        kCounter++;
    }
    public Konto(String kInhaber, String kNr, double kStand) {
        this.kNr = checkkNr(kNr);
        this.kInhaber = kInhaber;
        this.kStand = kStand;

        kCounter++;
    }



    //Setter Methoden
    public void einzahlen(double betrag) {
        kStand=kStand+betrag;
    }
    public void auszahlen(double betrag) {
        kStand=kStand-betrag;
    }
    public double getKStand() {
        return kStand;
    }
    public void setkNr(String kNr) {
        this.kNr = kNr;
    }
    public void setkInhaber(String kInhaber) {
        this.kInhaber = kInhaber;
    }
    public void setkStand(double kStand) {
        this.kStand = kStand;
    }
    public void setKNr(long kNr){
        this.kNr = Long.toString(kNr);
    }
    public void setKNr(String kNr){
        this.kNr = kNr;
    }



    //Getter Methoden
    public static int getCounter() {
        return kCounter;
    }
    public String getkNr() {
        return kNr;
    }
    public String getkInhaber() {
        return kInhaber;
    }
    public double getkStand() {
        return kStand;
    }
    public static String getStandkNr() {
        return standkNr;
    }
    public static String getStandkInhaber() {
        return standkInhaber;
    }
    public static double getStandkStand() {
        return standkStand;
    }

    //Eigene Methoden
    public String checkkNr(String kNr){
        String new_kNr = kNr;
        ArrayList konten = Konten.getKonten();
        for (int i = 0; i < konten.size(); i++){
            //Konto aus KonteList
            Konto konto = (Konto) konten.get(i);

            //Überprüfung ob Argument kNr gleich kNr aus Konto ist
            if (kNr.equalsIgnoreCase(konto.kNr)){
                //Wenn ja -> kNr auf Standard setzen und loop mit "break" abbrechen.
                //System.out.println("### ERR: Doppelte Kontonummer gefunden wie bei Kontoinhaber: " + konto.getkInhaber() + " ###");
                //System.out.println("### ERR: Kontonummer: " + kNr + " auf " + getStandkNr() + " gesetzt. ###");
                new_kNr = getStandkNr();
                break;
            }
        }
        return new_kNr;
    }
}