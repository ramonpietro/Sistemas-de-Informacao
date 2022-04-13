public class Main
{
	public static void main(String[] args) {
	    Conta c1 = new Conta("Joao Batista", "1234-5"); // metodo construtor sempre terá o mesmo nome da classe
	    Conta c2 = new Conta("Paulo Martins", "7890-1", 30);
	    
	    c1.depositar(50);
	    c2.depositar(30);
	    c1.depositar(100);
	    c2.sacar(10);
	    c1.sacar(80);
	    
	    System.out.println(c1);
	    
	    System.out.println("Conta #1");
	    System.out.println("Numero.: " + c1.getNumero());
	    System.out.println("Titular: " + c1.getTitular());
	    System.out.println("Saldo...: " + c1.getSaldo());
	    
	    System.out.println();
	    
	    System.out.println("Conta #2");
	    System.out.println("Numero.: " + c2.getNumero());
	    System.out.println("Titular: " + c2.getTitular());
	    System.out.println("Saldo...: " + c2.getSaldo());
	}
}