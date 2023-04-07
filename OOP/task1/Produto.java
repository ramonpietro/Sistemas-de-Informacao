public class Produto {
    private String nome;
    private double preco;
    private int qtd;
    
    public Produto(String nome, double preco, int qtd) {
        this.nome = nome;
        this.preco = preco;
        this.qtd = qtd;
    }
    
    public double getValorFinal() {
        return preco * qtd;
    }
    
    public static double desconto(double valorTotal) {
        if (valorTotal < 100.00) {
            return 0.0;
        } else if (valorTotal >= 100.00 && valorTotal < 200.00) {
            return valorTotal * 0.1;
        } else if (valorTotal >= 200.00 && valorTotal < 500.00) {
            return valorTotal * 0.15;
        } else {
            return valorTotal * 0.2;
        }
    }
    
    public String getNome() {
        return this.nome;
    }
    
    public double getPreco() {
        return this.preco;
    }
    
    public int getQtd() {
        return this.qtd;
    }
}