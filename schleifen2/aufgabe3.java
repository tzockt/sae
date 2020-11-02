package schleifen2;

import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import java.text.NumberFormat;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
public class aufgabe3 {

public static void main (final String[] args){
    final NumberFormat n = NumberFormat.getInstance();
    n.setMaximumFractionDigits(2);
	
	final String fixkosteneingabe = JOptionPane.showInputDialog(null, "Fixkosten: ");
    final int fixkosten = Integer.parseInt(fixkosteneingabe);
    
    final String mindestmengeeingabe = JOptionPane.showInputDialog(null, "Mindestmenge: ");
    final int mindestmenge = Integer.parseInt(mindestmengeeingabe);

    final String kopiekosteneingabe = JOptionPane.showInputDialog(null, "Preis pro Kopie in Euro: ");
    final float kopiekosten = Float.parseFloat(kopiekosteneingabe);

    final JTable table = new JTable();
    final DefaultTableModel dtm = new DefaultTableModel(0,0);
    final String header[] = new String[]{"Kopieanzahl","Gesamtkosten in €", "Kosten pro Kopie in Euro"};
    dtm.setColumnIdentifiers(header);
    table.setModel(dtm);
    
    
    for ( int i = 500; i<=8000; i= i + 500){

        if (i<=mindestmenge){
            final double mindestkosten = fixkosten*1.16;
            final double preisprokopie = mindestkosten/i;
            dtm.addRow(new Object[] {i, n.format(mindestkosten), n.format(preisprokopie) });
        }
        else{
            final double gesamtkosten = (fixkosten+((i-1500)*kopiekosten)*1.16);
            final double preisprokopie = gesamtkosten/i;
            dtm.addRow(new Object[] {i, n.format(gesamtkosten), n.format(preisprokopie) });
        }

        final JFrame frame = new JFrame("Druckerkostenrechner");
        frame.setDefaultCloseOperation( JFrame.EXIT_ON_CLOSE );
        frame.add(new JScrollPane(table));
        frame.pack();
        frame.setVisible( true );
    }
}
}