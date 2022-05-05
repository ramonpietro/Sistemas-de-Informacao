public class Proprietario {
    private String cnh;
    private String nome;
    
    public Proprietario(String cnh, String nome) {
        this.cnh = cnh;
        this.nome = nome;
    }
    
    public String getCnh() {
        return this.cnh;
    }
    
    public void setCnh(String cnh) {
        this.cnh = cnh;
    }
    
    public String getNome() {
        return this.nome;
    }
    
    public void setNome(String nome) {
        this.nome = nome;
    }
}