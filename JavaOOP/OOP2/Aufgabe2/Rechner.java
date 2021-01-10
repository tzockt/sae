package JavaOOP.OOP2.Aufgabe2;

import javax.swing.*;
import java.util.ArrayList;

public class Rechner {
    private String computername;
    private ArrayList<String> macadd = new ArrayList<>();
    private static ArrayList<Rechner> rechners = new ArrayList<Rechner>();
    private String domaene;
    private String ip;
    private String standort;

    public Rechner(String computername, String[] macadd, String domaene, String ip, String standort){
        try{
            if (computername.length() > 15){
                throw new Exception("ERR: Computername zu lang.");
            }
            setComputername(computername);
            setDomaene(domaene);
            setIp(ip);
            setStandort(standort);

            for (String s : macadd) {
                this.macadd.add(s);
            }

        }catch (Exception e){
            System.out.println(e.toString());
        }
    }
    public Rechner(String computername, String macadd, String domaene, String ip, String standort){
        try{
            if (computername.length() > 15){
                throw new Exception("ERR: Computername zu lang.");
            }
            setComputername(computername);
            setDomaene(domaene);
            setIp(ip);
            setStandort(standort);

            this.macadd.add(macadd);
        }catch (Exception e){
            System.out.println(e.toString());
        }
    }

    public void setComputername(String computername) {
        this.computername = computername;
    }
    public void setDomaene(String domaene) {
        this.domaene = domaene;
    }
    public void setIp(String ip) {
        this.ip = ip;
    }
    public void setStandort(String standort) {
        this.standort = standort;
    }

    public String getComputername() {
        return computername;
    }
    public ArrayList<String> getMacadd() {
        return macadd;
    }
    public String getDomaene() {
        return domaene;
    }
    public String getIp() {
        return ip;
    }
    public String getStandort() {
        return standort;
    }

    public void printRechner(){
        JOptionPane.showMessageDialog(
                null,
                "Computername: " + getComputername() + "\n" +
                        "MAC-Adressen(n) \n" + getMacadd().toString() + "\n" +
                        "IP-Adresse: " + getIp() + "\n" +
                        "Standort: " + getStandort(),
                "Rechner: " + getComputername(),
                JOptionPane.INFORMATION_MESSAGE
        );
    }

}