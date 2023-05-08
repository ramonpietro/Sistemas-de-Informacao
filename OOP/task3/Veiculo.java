public class Veiculo {
    private String placa;
    private String modelo;
    private Proprietario dono;
    
    public Veiculo(Proprietario dono) {
        this.dono = dono;
        this.placa = placa;
        this.modelo = modelo;
    }
    
    public Proprietario getDono() {
        return this.dono;
    }
    
    public String getModelo() {
        return this.modelo;
    }
    
    public String getPlaca() {
        return this.placa;
    }
    
    public void setDono(Proprietario dono) {
        this.dono = dono;
    }
    
    public void setModelo(String modelo) {
        this.modelo = modelo;
    }
    
    public void setPlaca(String placa) {
        this.placa = placa;
    }
}