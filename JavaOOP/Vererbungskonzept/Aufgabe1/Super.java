package JavaOOP.Vererbungskonzept.Aufgabe1;

public class Super {

    /**Eine oeffentliche Instanzvariable */
    public String x = "vor Super-Konstruktor";

    /**Ein argumentloser Konstruktor */
    public Super(){
        System.out.println("Super-Konstruktor gestartet.");
        System.out.println("x =" +x);
        x = "nach Superkonstruktor";
        System.out.println("Super-Konstruktor beendet.");
        System.out.println("x = " +x);
    }
}

public class Sub extends Super{
    /** Eine weitere oeffentliche Instanzvariable */
    public String y = "vor Sub-Konstruktor";

    /** Ein argumentloser Konstruktor */
    public Sub(){
        System.out.println("Sub-Konstruktor gestartet.");
        System.out.println("x = " +x);
        System.out.println("y = " +y);
        x = "nach Sub-Konstruktor" ;
        y = "nach Sub-Konstruktor" ;
        System.out.println ("Sub-Konstruktor beendet." ) ;
        System.out.println ("x " + x ) ;
        System.out.println ("y =" + y ) ;
    }
}

