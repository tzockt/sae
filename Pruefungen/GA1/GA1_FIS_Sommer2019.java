package Pruefungen.GA1;

import java.util.Arrays;

public class GA1_FIS_Sommer2019{
public static void main(String[] args) {

    String[] aPersonalWirth = {"Mueller|Josef|FR_1112|Freiburg","Maier|Fritz|ST_1114|Vaihingen","Heinzel|Maria|ST_5525| Bad Cannstatt","Herrman|Georg|FR_2536|Merzhausen"};
    String[] aPersonalSchneider = {"Schneider|Wolfgang|Heidelberg|HE_20011","Bartels|Martina|Sandhausen|HE_15436","Beck|Hans|Neckarsteinach|HE_5436"};
    
    personalNumberFist(aPersonalSchneider, 3);
    personalNumberFist(aPersonalWirth, 2);

    }

    public static void personalNumberFist(String[] aPersonaldatenSatz, int iPosTrenner){
        String [] aPersTeilDatein = new String[aPersonaldatenSatz.length];
        
        for (int i=0; i<aPersonaldatenSatz.length; i++){
            aPersTeilDatein= aPersonaldatenSatz[i].split("|");
            String parse = aPersonaldatenSatz[iPosTrenner] + "|";
            for (int b = 0; b < aPersTeilDatein.length; b++ ){
                if (aPersTeilDatein[b].contains("_")) continue;
                parse = parse + aPersTeilDatein[b] + "|";
            }
            
            aPersonaldatenSatz[i] = parse;
        }
        System.out.println(Arrays.toString(aPersonaldatenSatz));
    }
}
