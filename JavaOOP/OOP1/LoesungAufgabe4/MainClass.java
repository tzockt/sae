package JavaOOP.OOP1.LoesungAufgabe4;
import javax.swing.*;
import java.util.ArrayList;

public class MainClass {
    public static void main(String[] args){
        Konto k1 = new Konto();
        Konten.setKonten(k1);



        Konto k2 = new Konto("Huber","12022200",5);
        Konten.setKonten(k2);



        k1.setKNr("40223307");
        k1.einzahlen(10000);
        System.out.println("Kontostand k1: "+k1.getKStand());



        k1.auszahlen(100);



        System.out.println("Kontostand k1: "+k1.getKStand());
        System.out.println("Kontostand k2: "+k2.getKStand());



        System.out.println("Anzahl Konten: " + Konto.getCounter());


        //Konten auslesen
        ArrayList konten = Konten.getKonten();
        String kontostring = "";
        for (int i = 0; i < konten.size(); i++){
            Konto konto = (Konto) konten.get(i);
            kontostring = kontostring + "Kontoinhaber: " + konto.getkInhaber() + "\n" + "Kontonummer: " + konto.getkNr() + "\n" + "Kontostand: " + konto.getKStand() + "\n\n\n";
        }

        JOptionPane.showMessageDialog(null, kontostring, "Konto Ausgabe (Gesamt: " + Konto.getCounter() + ")", JOptionPane.INFORMATION_MESSAGE);

    }

}

