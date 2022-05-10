public class Conta {
    
    private static int prox_num = 1;
    
    private String numero;
    private Cliente titular;
    private double saldo;
    private double limiteEspecial;
    
    public Conta(Cliente titular) {
        this.titular = titular;
        this.numero = String.valueOf(prox_num++);
        this.saldo = saldo;
        this.limiteEspecial = 500;
    }
    
    public void depositar(double valor) {
        this.saldo += valor;
    }
    
    public void sacar(double valor) throws SaldoInsuficienteException {
        if (saldo > this.saldo && limiteEspecial > 0) {
            limiteEspecial = limiteEspecial - valor;
            this.saldo -= valor;
            if (limiteEspecial < 0) {
                throw new SaldoInsuficienteException(this);
            }
        } else {
            this.saldo -= valor;
        }
    }
    
    public void transferir(Conta destino, double valor) throws SaldoInsuficienteException {
        if (valor > this.saldo && limiteEspecial > 0) {
            limiteEspecial = limiteEspecial - valor;
            this.sacar(valor);
            destino.depositar(valor);
            if (limiteEspecial < 0) {
                throw new SaldoInsuficienteException(this);
            }
        } else {
        this.sacar(valor);
        destino.depositar(valor);
        }
    }
    
    public void setNumero(String numero) {
        this.numero = numero;
    }
    
    public String getNumero() {
        return this.numero;
    }
    
    public void setTitular(Cliente titular) {
        this.titular = titular;
    }
    
    public Cliente getTitular() {
        return this.titular;
    }
    
    public void setSaldo(double saldo) {
        this.saldo = saldo;    
    }
    
    public double getSaldo() {
        return this.saldo;
    }
    
    public double getLimiteEspecial() {
        return this.limiteEspecial;
    }
    
    public int getProximoNumero() {
        return this.prox_num;
    }
    
    public String toString() {
        return "Numero.: " + this.numero +
                " | Titular: " + this.titular.getCpf() +
                " | Saldo..: " + this.saldo;
    }
    
}