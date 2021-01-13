package JavaOOP.OOP2.Aufgabe2neu;

public class rechner {
    
    private String rechnername;
    private String mac;
    private String domain;
    private String ip;
    private String standort;


    public rechner(String rechnername, String mac, String domain, String ip, String standort){
        this.rechnername = rechnername;
        this.mac = mac;
        this.domain = domain;
        this.standort = standort;
    }

    //Setter
    public void setRechner(String rechnername) {
        this.rechnername = rechnername;
    }

    public void setMac(String mac) {
        this.mac = mac;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public void setStandort(String standort) {
        this.standort = standort;
    }

    //Getter

    public String getRechnername(){
        return rechnername;
    }

    public String getMac(){
        return mac;
    }

    public String getDomain(){
        return domain;
    }

    public String getIp(){
        return ip;
    }

    public String getStandort(){
        return standort;
    }

    //Ausgabe
    public void ausgabe(){
        System.out.println("\nDie Daten des PCs lauten wie folgt: " + "\nComputername: " + rechnername + "\nMAC-Adresse: " + mac + "\nDomain: " + domain + "\nIP-Adresse: " + ip + "\nStandort: " + standort);
    }
}