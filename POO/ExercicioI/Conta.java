public class Conta {
    
    private static int prox_num = 1234;
    
    private String numero;
    private Cliente titular;
    private double saldo;
    
    public Conta(Cliente titular, double saldo) {
        this.titular = titular;
        this.numero = String.valueOf(prox_num++);
        this.saldo = saldo;
    }
    
    public Conta(Cliente titular) {
        this(titular, 0);
    }
    
    public void depositar(double valor) {
        this.saldo = this.saldo + valor;
    }
    
    public void sacar(double valor) {
        this.saldo = this.saldo - valor;
    }
    
    public void transferir(Conta destino, double valor) {
        this.sacar(valor);
        destino.depositar(valor);
    }
    
    public String getNumero() {
        return this.numero;
    }
    
    public Cliente getTitular() {
        return this.titular;
    }
    
    public void setTitular(Cliente titular) {
        this.titular = titular;
    }
    
    public double getSaldo() {
        return this.saldo;
    }
    
}