public class Cliente {
    
    private String cpf;
    private String nome;
    private char sexo;
    private String telefone;
    
    public Cliente(String cpf, String nome, char sexo, String telefone) {
        this.cpf = cpf;
        this.nome = nome;
        this.sexo = sexo;
        this.telefone = telefone;
    }
    
    public String getCpf(){
        return this.cpf;
    }
    
    public void set(String cpf){
        this.cpf = cpf;
    }
    
    public String getNome(){
        return this.nome;
    }
    
    public void setNome(String nome){
        this.nome = nome;
    }
    
    public char getSexo(){
        return this.sexo;
    }
    
    public void setSexo(char sexo){
        this.sexo = sexo;
    }
    
    public String getTelefone(){
        return this.telefone;
    }
    
    public void setTelefone(String telefone){
        this.telefone = telefone;
    }
}