package JavaOOP.OOP1.Aufgabe4;

public class Konto {
    
    private String kNr;
    private String kInhaber;
    private double kStand;
    private static int kcounter=0;

    private String[] konto = new String[3];

    public Konto()
    { kStand=0;
        
        //Kontonummer
        konto[0] = "40223307";

        //Kontoinhaber
        konto[1] = "Tim der Java Profi";

        //Kontostand
        konto[2] = Double.toString(kStand);


      kcounter++;
     }

    public Konto(String kInhaber, String kNr, double kStand)
    { this.kInhaber=kInhaber;
    this.kNr=kNr;
    this.kStand=kStand;
    kcounter++;
    }

    public void einzahlen(double betrag) {
        kStand = kStand + betrag;
    }

    public void auszahlen(double betrag) {
        kStand = kStand - betrag;
    }

    public double getKStand() {
        return kStand;
    }
    public void setkNr(String kNr){
        this.kNr = kNr;
    }
    public String getKInhaber(){
        return kInhaber;
    }
    public void setkNr (long kNr){
        this.kNr= Long.toString(kNr);
    }
    public void setKInhaber(String kInhaber){
        this.kInhaber=kInhaber;
    }
    public static int getCounter(){
        return kcounter;
    }
}
