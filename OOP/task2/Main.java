public class Main {
	public static void main(String[] args) {
	    Candidato c1 = new Candidato("00", "Maria", 0);
	    Candidato c2 = new Candidato("01", "João", 0);
	    Candidato c3 = new Candidato("02", "Pedro", 0);
	    
	    c1.Votar(4);
	    c2.Votar(6);
	    c3.Votar(3);
	    
		System.out.println("Candidato #1");
		System.out.println("Número: " + c1.getNumero());
		System.out.println("Nome: " + c1.getNome());
		System.out.println("Votos: " + c1.getVotos());
		
		System.out.println();
		
		System.out.println("Candidato #2");
		System.out.println("Número: " + c2.getNumero());
		System.out.println("Nome: " + c2.getNome());
		System.out.println("Votos: " + c2.getVotos());
		
		System.out.println();
		
		System.out.println("Candidato #3");
		System.out.println("Número: " + c3.getNumero());
		System.out.println("Nome: " + c3.getNome());
		System.out.println("Votos: " + c3.getVotos());
	}
}
