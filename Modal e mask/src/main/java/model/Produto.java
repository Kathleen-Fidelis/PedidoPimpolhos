package model;

public class Produto {



	
	private Integer cod_produto;
	private String  nome;
	private double  preco;
	private String  sexo;
	private String  dimensao;
	private String  material;
	private double  peso;
	private String  conteudo_produto;
	private Integer  cod_fornecedor;
	private String nome_fornecedor;
	private Integer  cod_categoria;
	private String nome_categoria;
	private String img_produto;
	private Integer  cod_marca;
	private String nome_marca;
	
	
	public Produto(String nome, Double preco, String sexo, String dimensao, 
			String material, Double peso, String conteudo_produto, Integer cod_fornecedor, Integer cod_categoria, String img_produto, Integer cod_marca) {
		super();
		this.nome = nome;
		this.preco = preco;
		this.sexo = sexo;
		this.dimensao = dimensao;
		this.material = material;
		this.peso = peso;
		this.conteudo_produto = conteudo_produto;
		this.cod_fornecedor = cod_fornecedor;
		this.cod_categoria = cod_categoria;
	
		this.img_produto = img_produto;
		this.cod_marca = cod_marca;
		
		
	}


	
	
	
	
	public Produto(String nome, double preco, String sexo, String dimensao, String material, double peso,
			String conteudo_produto, String nome_fornecedor, String nome_categoria, String img_produto,
			String nome_marca) {
		super();
		this.nome = nome;
		this.preco = preco;
		this.sexo = sexo;
		this.dimensao = dimensao;
		this.material = material;
		this.peso = peso;
		this.conteudo_produto = conteudo_produto;
		this.nome_fornecedor = nome_fornecedor;
		this.nome_categoria = nome_categoria;
		this.img_produto = img_produto;
		this.nome_marca = nome_marca;
	}






	public String getImg_produto() {
		return img_produto;
	}




	public void setImg_produto(String img_produto) {
		this.img_produto = img_produto;
	}




	public Integer getCod_marca() {
		return cod_marca;
	}




	public void setCod_marca(Integer cod_marca) {
		this.cod_marca = cod_marca;
	}




	public Integer getCod_produto() {
		return cod_produto;
	}




	public void setCod_produto(Integer cod_produto) {
		this.cod_produto = cod_produto;
	}




	public String getNome() {
		return nome;
	}




	public void setNome(String nome) {
		this.nome = nome;
	}




	public double getPreco() {
		return preco;
	}




	public void setPreco(double preco) {
		this.preco = preco;
	}






	public String getSexo() {
		return sexo;
	}




	public void setSexo(String sexo) {
		this.sexo = sexo;
	}




	public String getDimensao() {
		return dimensao;
	}




	public void setDimensao(String dimensao) {
		this.dimensao = dimensao;
	}




	public String getMaterial() {
		return material;
	}




	public void setMaterial(String material) {
		this.material = material;
	}




	public double getPeso() {
		return peso;
	}




	public void setPeso(double peso) {
		this.peso = peso;
	}




	public String getConteudo_produto() {
		return conteudo_produto;
	}




	public void setConteudo_produto(String conteudo_produto) {
		this.conteudo_produto = conteudo_produto;
	}




	public Integer getCod_fornecedor() {
		return cod_fornecedor;
	}




	public void setCod_fornecedor(Integer cod_fornecedor) {
		this.cod_fornecedor = cod_fornecedor;
	}




	public Integer getCod_categoria() {
		return cod_categoria;
	}


	public void setCod_categoria(Integer cod_categoria) {
		this.cod_categoria = cod_categoria;
	}

	
	
	



	public String getNome_fornecedor() {
		return nome_fornecedor;
	}






	public void setNome_fornecedor(String nome_fornecedor) {
		this.nome_fornecedor = nome_fornecedor;
	}






	public String getNome_categoria() {
		return nome_categoria;
	}






	public void setNome_categoria(String nome_categoria) {
		this.nome_categoria = nome_categoria;
	}






	public String getNome_marca() {
		return nome_marca;
	}






	public void setNome_marca(String nome_marca) {
		this.nome_marca = nome_marca;
	}






	@Override
	public String toString() {
		return "Produto [cod_produto=" + cod_produto + ", nome=" + nome + ", preco=" + preco + ", sexo=" + sexo
				+ ", dimensao=" + dimensao + ", material=" + material + ", peso=" + peso + ", conteudo_produto="
				+ conteudo_produto + ", cod_fornecedor=" + cod_fornecedor + ", cod_categoria=" + cod_categoria
				+ ", img_produto=" + img_produto + ", cod_marca=" + cod_marca + "]";
	}




	





}

