/* Defina uma classe para representar um candidato a uma eleição
com atributos para armazenar o número, nome do candidato e o número de votos, todos privados.
Defina métodos de acessos (get e set) para cada atributo,
um construtor para a classe que recebe como argumento
o número e o nome do candidato e inicializa o número de votos com zero,
também um método (votar), com o qual o candidato recebe um voto. */

/* Desenvolva um programa que testa a Classe.
Nele crie três objetos Candidatos diferentes e simule alguns votos para eles.
No final imprima o relatório final no os nomes e quantidade de votos de cada candidato. */

public class Candidato {
    private String numero;
    private String nome;
    private int votos;
    
    public Candidato(String numero, String nome, int votos) {
        this.numero = numero;
        this.nome = nome;
        this.votos = votos;
    }
    
    public void votar(int voto) {
        this.votos = this.votos + voto;
    }
    
    public String getNumero() {
        return this.numero;
    }
    
    public void setNumero(String numero) {
        this.numero = numero;
    }
    
    public String getNome() {
        return this.nome;
    }
    
    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public int getVotos() {
        return this.votos;
    }
    
    public void setVotos(int votos) {
        this.votos = votos;
    }
    
    public String toString() {
        return "Numero do candidato: " + this.numero + " | Nome do candidato: " + this.nome + " | Votos: " + this.votos;
    }
}