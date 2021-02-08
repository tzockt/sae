package JavaOOP.OOP1.LoesungAufgabe4;

import java.util.ArrayList;

public class Konten {
    public static ArrayList<Konto> konten = new ArrayList<Konto>();

    public static void setKonten(Konto konto) {
        konten.add(konto);
    }

    public static ArrayList getKonten(){
        return konten;
    }
}

