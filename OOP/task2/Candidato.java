public class Candidato {
    private String numero;
    private String nome;
    private int votos;
    
    public Candidato(String numero, String nome, int votos) {
        this.numero = numero;
        this.nome = nome;
        this.votos = votos;
    }
    
    public void Votar(int voto) {
        this.votos = this.votos + voto; 
    }
    
    public String getNumero() {
        return this.numero;
    }
    
    public String getNome() {
        return this.nome;
    }
    
    public int getVotos() {
        return this.votos;
    }
    
    public void setNumero(String numero) {
        this.numero = numero;
    }
    
    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public void setVotos(int votos) {
        this.votos = votos;
    }
}