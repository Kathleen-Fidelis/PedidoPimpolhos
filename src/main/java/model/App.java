package model;

public class App {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		DAO maca = new DAO();
//		System.out.println(maca.exibirCartoes());
//		Produto laranja = new Produto("Beb� reborn teste", 499.90, "Feminino", "30x40", "Algodao", 1.500, "acompanha chupeta", 1, 1, "img21", 1);
////		maca.inserirProduto(laranja);
//		System.out.println(maca.exibirProduto());
		
//		Produto laranja1 = new Produto("Will", "Jap�o", "melao@rd.com.br");
//		maca.insert(laranja1);
//		System.out.println(maca.selectAll());
//		
//		maca.deletarProduto(26);
//		System.out.println(maca.exibirProduto());
//		
//		User laranja2 = new User("Muryllo", "Mal�sia", "uva@rd.com.br");
//		maca.insert(laranja2);
//		System.out.println(maca.selectAll());
//		
//		maca.delete(2);
//		System.out.println(maca.selectAll());
////	
//		laranja.setCod_produto(1);
//		laranja.setNome("Bella");
//		maca.atualizarProduto(laranja);
//		System.out.println(maca.exibirProduto());
//		
//		User novo = maca.selectById(3);
//		System.out.println(novo);
//		
		Usuario novo1 = maca.recuperarCartao(1);
		System.out.println(novo1);
	}


}