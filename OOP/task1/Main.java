public class Main {
	public static void main(String[] args) {
	    Produto p1 = new Produto("Café", 120.00, 1);
	    Produto p2 = new Produto("Feijão", 150.00, 1);
	    Produto p3 = new Produto("Arroz", 300.00, 1);
	    
	    double total = p1.getValorFinal() + p2.getValorFinal() + p3.getValorFinal();
	    double desc = Produto.desconto(total);
	    double totalDes = total - desc;
	    
		System.out.println("COMPROVANTE DE VENDA\nEMPRESA X");
		System.out.println();
		System.out.println("Data: 01/04/2023");
		System.out.println("Hora: 12:54");
		System.out.println();
		System.out.println("Produto\t\tValor");
		System.out.println(p1.getNome() + "\t\tR$" + p1.getValorFinal());
        System.out.println(p2.getNome() + "\t\tR$" + p2.getValorFinal());
        System.out.println(p3.getNome() + "\t\tR$" + p3.getValorFinal());
        System.out.println();
        System.out.println("Total: R$" + total);
        System.out.println("Desconto: R$" + desc);
        System.out.println("Total a Pagar: R$" + totalDes);
	}
}