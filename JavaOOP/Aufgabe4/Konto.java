package JavaOOP.Aufgabe4;

public class Konto {
    private String kNr;
    private String kInhaber;
    private double kStand;

    public Konto()
    { kStand=0; }

    public Konto(String kInhaber, String kNr, double kStand)
    { this.kInhaber=kInhaber;
    this.kNr=kNr;
    this.kStand=kStand;}

    public void einzahlen(double betrag) {
        kStand = kStand + betrag;
    }

    public void auszahlen(double betrag) {
        kStand = kStand - betrag;
    }

    public double getKStand() {
        return kStand;
    }

}
