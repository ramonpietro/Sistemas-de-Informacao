
public class Main
{
	public static void main(String[] args) {
	    Cliente cli_1 = new Cliente("111111111-11", "João Batista", 'M', "12345");
	    Cliente cli_2 = new Cliente("222222222-22", "Paula Leite", 'F', "67890");
	    
		Conta c1 = new Conta(cli_1);
		Conta c2 = new Conta(cli_2);
		
		c1.depositar(50);
		c2.depositar(30);
		c1.depositar(100);

		try {
    		c2.sacar(10);
		} catch (SaldoInsuficienteException e) {
		    System.out.println(e.getMessage()); 
		}
		
		try {
    		c1.sacar(80);
		} catch (SaldoInsuficienteException e) {
		    System.out.println(e.getMessage()); 
		}
    	
    	try {	
    		// Transfêrencia = Regra do negócio
    		c1.transferir(c2, 10);
    		c2.transferir(c1, 10);
    	} catch (SaldoInsuficienteException e) {
		    System.out.println(e.getMessage()); 
		    System.out.println("Saldo atual: " + e.getConta().getSaldo());
		}
    		
    		
		c1.depositar(30);
		try {
		    // utilizando o cheque especial. caso o usuário ultrapasse o limite, o sistema vai ativar um erro
		    // de exception no console e não vai permitir novos saques ou transferencias
		    c1.sacar(100); // a conta 1 só possui 100 reais, então a partir desse saque ela fica zerada;
		    c1.sacar(400); // o saque do cheque especial é de 500 reais, então a conta zerada consegue sacar dinheiro
		                   // mesmo estando negativada entretanto o limite de cheque especial vai diminuindo;
		    c1.sacar(101); // neste ponto ocorre um estouro do limite do cheque especial por isso o sistema ativa
		                   // uma Exception dizendo que o limite máximo foi atingido;
		    c1.sacar(10); // a partir daqui, como o limite foi atingido e ficou abaixo de zero nao é mais possível
		                  // realizar transferencias ou saques
		} catch(SaldoInsuficienteException e) {
		    System.out.println(e.getMessage());
		}
		try {
		    c2.sacar(20); // nesta linha, a conta 2 está zerada, pois ela possuia uma quantia de 20 reais e 
		                  // realizou o saque deste
		    c2.sacar(200); // aqui a conta 2 faz uso do cheque especial
		} catch(SaldoInsuficienteException e) {
		    System.out.println(e.getMessage());
		}
    		
		
		System.out.println("Conta #1");
		System.out.println(c1);
		System.out.println("Limite total: 500");
		System.out.println("Limite do cheque especial: " + c1.getLimiteEspecial());
		
        System.out.println();
        
		System.out.println("Conta #2");
		System.out.println(c2);
		System.out.println("Limite total: 500");
		System.out.println("Limite do cheque especial: " + c1.getLimiteEspecial());
	}
}
