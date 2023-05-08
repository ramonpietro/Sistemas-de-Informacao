public class Main {
	public static void main(String[] args) {
		Proprietario prop1 = new Proprietario("010101", "Matheus Aguiar");
		Proprietario prop2 = new Proprietario("101010", "Sara Lima");
		Proprietario prop3 = new Proprietario("001001", "Augusto Cesar");
		
		Veiculo v1 = new Veiculo(prop1);
		v1.setPlaca("AAA-0101");
		v1.setModelo("Fiat Mobi");
		Veiculo v2 = new Veiculo(prop2);
		v2.setPlaca("BBB-1010");
		v2.setModelo("Honda Elite 125");
		Veiculo v3 = new Veiculo(prop3);
		v3.setPlaca("CCC-0011");
		v3.setModelo("Fusca 96");
		Veiculo v4 = new Veiculo(prop1);
		v4.setPlaca("DDDD-0001");
		v4.setModelo("HB20");
		
		System.out.println("VEICULO 1");
		System.out.println("Placa.: " + v1.getPlaca());
		System.out.println("Modelo.: " + v1.getModelo());
		System.out.println("Dono.: " + v1.getDono().getNome());
		
		System.out.println();
		
		System.out.println("VEICULO 2");
		System.out.println("Placa.: " + v2.getPlaca());
		System.out.println("Modelo.: " + v2.getModelo());
		System.out.println("Dono.: " + v2.getDono().getNome());
		
		System.out.println();
		
		System.out.println("VEICULO 3");
		System.out.println("Placa.: " + v3.getPlaca());
		System.out.println("Modelo.: " + v3.getModelo());
		System.out.println("Dono.: " + v3.getDono().getNome());
		
		System.out.println();
		
		System.out.println("VEICULO 4");
		System.out.println("Placa.: " + v4.getPlaca());
		System.out.println("Modelo.: " + v4.getModelo());
		System.out.println("Dono.: " + v4.getDono().getNome());
	}
}
