public class Conta {
    String numero;
    String titular;
    double saldo;
    
    public Conta(String titular, String numero, double saldo) {
        this.titular = titular;
        this.numero = numero;
        this.saldo = saldo;
    }
    
    public Conta(String titular, String numero) {
        this(titular, numero, 0);
    }
    
    public void depositar(double valor) {
        this.saldo = this.saldo + valor;
    }
    
    public void sacar(double valor) {
        this.saldo = this.saldo - valor;
    }
    
    // obtem o valor de um atributo atraves do metodo get
    public String getNumero() {
        return this.numero;
    }
    
    public String getTitular() {
        return this.titular;
    }
    
    public void setTitular(String titular) {
        this.titular = titular;
    }
    
    public double getSaldo() {
        return this.saldo;
    }
    
    // definindo um valor para um atributo vindo de fora atraves do metodo set
    // public void setSaldo(double saldo) {
    //    this.saldo = saldo;
    // }
    
    // public void setNumero(String numero) {
    //    this.numero = numero;
    // }
    
    public String toString() {
        return this.numero + " | " + this.titular + " | Saldo: " + this.saldo;
    }
}