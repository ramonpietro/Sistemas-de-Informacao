/* Defina uma classe para representar um candidato a uma eleição
com atributos para armazenar o número, nome do candidato e o número de votos, todos privados.
Defina métodos de acessos (get e set) para cada atributo,
um construtor para a classe que recebe como argumento
o número e o nome do candidato e inicializa o número de votos com zero,
também um método (votar), com o qual o candidato recebe um voto. */

/* Desenvolva um programa que testa a Classe.
Nele crie três objetos Candidatos diferentes e simule alguns votos para eles.
No final imprima o relatório final no os nomes e quantidade de votos de cada candidato. */

public class Main
{
	public static void main(String[] args) {
		Candidato c1 = new Candidato("34", "Joao Almeida", 0);
		Candidato c2 = new Candidato("67", "Luisa Dias", 0);
		Candidato c3 = new Candidato("25", "Alice Martins", 0);
		
		c1.votar(2);
		c2.votar(5);
		c3.votar(4);
		
		System.out.println(c1);
		
		System.out.println("Candidato #1");
		System.out.println("Numero: " + c1.getNumero());
		System.out.println("Nome: " + c1.getNome());
		System.out.println("Votos: " + c1.getVotos());
		
	    System.out.println();
	    
	    System.out.println(c2);
	    System.out.println("Candidato #2");
		System.out.println("Numero: " + c2.getNumero());
		System.out.println("Nome: " + c2.getNome());
		System.out.println("Votos: " + c2.getVotos());
		
		System.out.println();
		
		System.out.println(c3);
		System.out.println("Candidato #3");
		System.out.println("Numero: " + c3.getNumero());
		System.out.println("Nome: " + c3.getNome());
		System.out.println("Votos: " + c3.getVotos());
	}
}
