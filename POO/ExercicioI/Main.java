public class Main
{
	public static void main(String[] args) {
	    Cliente cli01 = new Cliente("111", "João Batista", 'M', "123");
	    Cliente cli02 = new Cliente("222", "Paula Leite", 'F', "456");
	    
		Conta c1 = new Conta(cli01);
		Conta c2 = new Conta(cli02);
		
		c1.depositar(50);
		c2.depositar(30);
		c1.depositar(100);
		c2.sacar(10);
		c1.sacar(80);
		c1.transferir(c2, 20);
		
		System.out.println("Conta #1");
		System.out.println("Numero.: " + c1.getNumero());
		System.out.println("Titular: " + c1.getTitular().getCPF() + " - " + c1.getTitular().getNome());
		System.out.println("Saldo..: " + c1.getSaldo());

        System.out.println();
        
		System.out.println("Conta #2");
		System.out.println("Numero.: " + c2.getNumero());
		System.out.println("Titular: " + c2.getTitular().getNome());
		System.out.println("Saldo..: " + c2.getSaldo());
	}
}
