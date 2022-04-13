import java.util.Scanner;

public class main
{
	public static void main(String[] args) {
	    Scanner sc = new Scanner(System.in);
	    
	    // ENTRADA DE DADOS
		double ax = sc.nextDouble();
		double bx = sc.nextDouble();
		double cx = sc.nextDouble();
		double ay = sc.nextDouble();
		double by = sc.nextDouble();
		double cy = sc.nextDouble();
		
		// PROCESSAMENTO
		double px = (ax + bx + cx) / 2;
		double areax = Math.sqrt( px * (px-ax) * (px-bx) * (px-cx) );
		double py = (ay+ by + cy) / 2;
		double areay = Math.sqrt( py * (py-ay) * (py-by) * (py-cy) );
		
		// SAIDA DE DADOS
		System.out.printf("AREA DO TRIANGULO X: %.4f\n", areax);
		System.out.printf("AREA DO TRIANGULO Y: %.4f\n", areay);
		
		if (areax == areay) {
		    System.out.println("AREAS IGUAIS");
		} else {
		    if (areax > areay) {
	            System.out.println("TRIANGULO DE MAIOR AREA: X");
		    } else {
                System.out.println("TRIANGULO DE MAIOR AREA: Y");
		    }
		}
	}
}