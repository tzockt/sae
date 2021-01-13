package JavaOOP.OOP2.Aufgabe2neu;

public class main {

    public static void main(String[] args) {
        
        rechner pc1 = new rechner("Kevins", "00-00-00-00-00-01","kevin.de","192.168.178.1","Kevin Stadt");
        rechner pc2 = new rechner("Peter", "00-00-00-00-00-02","peter.de","192.168.178.2","Peter Stadt");
        rechner pc3 = new rechner("Manuel", "00-00-00-00-00-03","manuel.de","192.168.178.3","Manuel Stadt");



        pc1.ausgabe();
        pc2.ausgabe();
        pc3.ausgabe();
    }
}