package JavaOOP.Aufgabe4;

public class Konto {
    private String kNr;
    private String kInhaber;
    private double kStand;
    private static int counter=0;

    public Konto()
    { kStand=0;
      counter++;
     }

    public Konto(String kInhaber, String kNr, double kStand)
    { this.kInhaber=kInhaber;
    this.kNr=kNr;
    this.kStand=kStand;
    counter++;
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
    public String getkNr(){
        return kNr;
    }
    public String getKInhaber(){
        return kInhaber;
    }
    public void setkNr (String kNr){
        this.kNr=kNr;
    }
    public void setKInhaber(String kInhaber){
        this.kInhaber=kInhaber;
    }
    public int getCounter(){
        return counter;
    }
}
