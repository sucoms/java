package edunova.organizacijakoda;

import javax.swing.JOptionPane;

public class Start {

	public static void main(String[] args) {
		
		int prviBroj = Integer.parseInt(JOptionPane.showInputDialog("Unesi 1. broj"));
		int drugiBroj = Integer.parseInt(JOptionPane.showInputDialog("Unesi 2. broj"));
		
		int rezultat = prviBroj + drugiBroj;
		
//		System.out.print(prviBroj + "+" + drugiBroj);
//		System.out.print(" = ");
//		System.out.println(rezultat);
		
		
		System.out.println(" " + prviBroj);
		System.out.println("+" + drugiBroj);
		System.out.println(" __");
		System.out.println(" " + rezultat);
	}
	
}
