public class SaldoInsuficienteException extends Exception {
    Conta conta;
    
    public SaldoInsuficienteException(Conta conta) {
        super("Saldo insuficiente na conta ou o limite do cheque especial foi atingido." + conta.getNumero());
        this.conta = conta;
    }
    
    public Conta getConta() {
        return conta;
    }
}