package JavaOOP.OOP2.Aufgabe4;

public class Main {

    public static void main(String[] args) {
        Bruch b1 = new Bruch();
        Bruch b2 = new Bruch(1,4);
        Bruch b3 = new Bruch(4);
        System.out.println(b1.bruchAusgeben());
        System.out.println(b2.bruchAusgeben());
        System.out.println(b3.bruchAusgeben());
        b3 = b1.math(b2);
        System.out.println(b1.bruchAusgeben());
        System.out.println(b2.bruchAusgeben());
        System.out.println(b3.bruchAusgeben());


    }
}