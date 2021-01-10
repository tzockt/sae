package JavaOOP.OOP2.Aufgabe1;

public class Rechteck5 {
    //Variablen
    private double seiteA;
    private double seiteB;
    private static int AnzahlRechtecke = 0;

    public Rechteck5(){
        this.seiteA = 0;
        this.seiteB = 0;

        AnzahlRechtecke++;
    }
    public Rechteck5(double seiteA, double seiteB){
        setSeiteA(seiteA);
        setSeiteB(seiteB);

        AnzahlRechtecke++;
    }

    public double getSeiteA() {
        return seiteA;
    }
    public double getSeiteB() {
        return seiteB;
    }
    public double getFlaeche(){
        return (this.seiteA * this.seiteB);
    }
    public double getUmfang(){
        return (this.seiteA + this.seiteB + this.seiteA + this.seiteB);
    }
    public double getDiagonale(){
        double d2 = (this.seiteA * this.seiteA) + (this.seiteB * this.seiteB);
        double d = Math.sqrt(d2);
        return d;
    }
    public static int getAnzahlRechtecke() {
        return AnzahlRechtecke;
    }

    public void setSeiteA(double seiteA) {
        this.seiteA = seiteA;
    }
    public void setSeiteA(String seiteA) {
        this.seiteA = Double.parseDouble(seiteA);
    }
    public void setSeiteB(double seiteB) {
        this.seiteB = seiteB;
    }
    public void setSeiteB(String seiteB) {
        this.seiteB = Double.parseDouble(seiteB);
    }
    public void setSeiteAB(double seiteA, double seiteB){
        this.seiteA = seiteA;
        this.seiteB = seiteB;
    }
    public void setSeiteAB(String seiteA, String seiteB){
        this.seiteA = Double.parseDouble(seiteA);
        this.seiteB = Double.parseDouble(seiteB);
    }

    public void showFlaeche(){
        double flaeche = (this.seiteA * this.seiteB);
        System.out.println("Flächeninhalt: " + flaeche);
    }
    public Boolean isQuadrat(){
        if (this.seiteA == this.seiteB){
            return true;
        }else return false;
    }

}

