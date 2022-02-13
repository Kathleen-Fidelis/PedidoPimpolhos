package model;

public class Pedido {

	private Integer cod_pedido;
	private Integer cod_frete;
	private Integer cod_endereco;
	private Integer cod_cliente;
	private Integer cod_status;
	private Integer cod_operacao;
	private Integer cod_forma_pagamento;
//	private String nome_cliente;
//	private String cep;
//	private String nome_cidade;
//	private String nome_rua;
//	private Integer numero_casa;
//	private String complemento;
//	private String bairro;
//	private String ponto_referencia;
//	private String descricao_estado;
//	private String descricao_frete;
//	private String valor_frete;
//	private String descricao_forma_pagamento;
//	private String descricao_status;
//	private String flag_endereco;
//	
//	
//	
//	public Pedido(String nome_cliente, String cep, String nome_cidade, String nome_rua, Integer numero_casa,
//			String complemento, String bairro, String ponto_referencia, String descricao_estado, String descricao_frete,
//			String valor_frete, String descricao_forma_pagamento, String descricao_status, String flag_endereco) {
//		super();
//		this.nome_cliente = nome_cliente;
//		this.cep = cep;
//		this.nome_cidade = nome_cidade;
//		this.nome_rua = nome_rua;
//		this.numero_casa = numero_casa;
//		this.complemento = complemento;
//		this.bairro = bairro;
//		this.ponto_referencia = ponto_referencia;
//		this.descricao_estado = descricao_estado;
//		this.descricao_frete = descricao_frete;
//		this.valor_frete = valor_frete;
//		this.descricao_forma_pagamento = descricao_forma_pagamento;
//		this.descricao_status = descricao_status;
//		this.flag_endereco = flag_endereco;
//	}
//
//
//
//	public Integer getCod_pedido() {
//		return cod_pedido;
//	}
//
//
//
//	public void setCod_pedido(Integer cod_pedido) {
//		this.cod_pedido = cod_pedido;
//	}
//
//
//
//	public String getNome_cliente() {
//		return nome_cliente;
//	}
//
//
//
//	public void setNome_cliente(String nome_cliente) {
//		this.nome_cliente = nome_cliente;
//	}
//
//
//
//	public String getCep() {
//		return cep;
//	}
//
//
//
//	public void setCep(String cep) {
//		this.cep = cep;
//	}
//
//
//
//	public String getNome_cidade() {
//		return nome_cidade;
//	}
//
//
//
//	public void setNome_cidade(String nome_cidade) {
//		this.nome_cidade = nome_cidade;
//	}
//
//
//
//	public String getNome_rua() {
//		return nome_rua;
//	}
//
//
//
//	public void setNome_rua(String nome_rua) {
//		this.nome_rua = nome_rua;
//	}
//
//
//
//	public Integer getNumero_casa() {
//		return numero_casa;
//	}
//
//
//
//	public void setNumero_casa(Integer numero_casa) {
//		this.numero_casa = numero_casa;
//	}
//
//
//
//	public String getComplemento() {
//		return complemento;
//	}
//
//
//
//	public void setComplemento(String complemento) {
//		this.complemento = complemento;
//	}
//
//
//
//	public String getBairro() {
//		return bairro;
//	}
//
//
//
//	public void setBairro(String bairro) {
//		this.bairro = bairro;
//	}
//
//
//
//	public String getPonto_referencia() {
//		return ponto_referencia;
//	}
//
//
//
//	public void setPonto_referencia(String ponto_referencia) {
//		this.ponto_referencia = ponto_referencia;
//	}
//
//
//
//	public String getDescricao_estado() {
//		return descricao_estado;
//	}
//
//
//
//	public void setDescricao_estado(String descricao_estado) {
//		this.descricao_estado = descricao_estado;
//	}
//
//
//
//	public String getDescricao_frete() {
//		return descricao_frete;
//	}
//
//
//
//	public void setDescricao_frete(String descricao_frete) {
//		this.descricao_frete = descricao_frete;
//	}
//
//
//
//	public String getValor_frete() {
//		return valor_frete;
//	}
//
//
//
//	public void setValor_frete(String valor_frete) {
//		this.valor_frete = valor_frete;
//	}
//
//
//
//	public String getDescricao_forma_pagamento() {
//		return descricao_forma_pagamento;
//	}
//
//
//
//	public void setDescricao_forma_pagamento(String descricao_forma_pagamento) {
//		this.descricao_forma_pagamento = descricao_forma_pagamento;
//	}
//
//
//
//	public String getDescricao_status() {
//		return descricao_status;
//	}
//
//
//
//	public void setDescricao_status(String descricao_status) {
//		this.descricao_status = descricao_status;
//	}
//
//
//
//	public String getFlag_endereco() {
//		return flag_endereco;
//	}
//
//
//
//	public void setFlag_endereco(String flag_endereco) {
//		this.flag_endereco = flag_endereco;
//	}
	
	
	
	
	public Pedido(Integer cod_frete, Integer cod_endereco, Integer cod_cliente, Integer cod_status,
			Integer cod_operacao, Integer cod_forma_pagamento) {
		super();
		this.cod_frete = cod_frete;
		this.cod_endereco = cod_endereco;
		this.cod_cliente = cod_cliente;
		this.cod_status = cod_status;
		this.cod_operacao = cod_operacao;
		this.cod_forma_pagamento = cod_forma_pagamento;
	}


	public Integer getCod_pedido() {
		return cod_pedido;
	}


	public void setCod_pedido(Integer cod_pedido) {
		this.cod_pedido = cod_pedido;
	}


	public Integer getCod_frete() {
		return cod_frete;
	}


	public void setCod_frete(Integer cod_frete) {
		this.cod_frete = cod_frete;
	}


	public Integer getCod_endereco() {
		return cod_endereco;
	}


	public void setCod_endereco(Integer cod_endereco) {
		this.cod_endereco = cod_endereco;
	}


	public Integer getCod_cliente() {
		return cod_cliente;
	}


	public void setCod_cliente(Integer cod_cliente) {
		this.cod_cliente = cod_cliente;
	}


	public Integer getCod_status() {
		return cod_status;
	}


	public void setCod_status(Integer cod_status) {
		this.cod_status = cod_status;
	}


	public Integer getCod_operacao() {
		return cod_operacao;
	}


	public void setCod_operacao(Integer cod_operacao) {
		this.cod_operacao = cod_operacao;
	}


	public Integer getCod_forma_pagamento() {
		return cod_forma_pagamento;
	}


	public void setCod_forma_pagamento(Integer cod_forma_pagamento) {
		this.cod_forma_pagamento = cod_forma_pagamento;
	}



	public String toString() {
		return this.cod_pedido + "-" + this.cod_frete + "-" + this.cod_endereco + "-" + this.cod_cliente + "-" + this.cod_status + "-" + this.cod_operacao + "-" + this.cod_forma_pagamento;
	}
	
	
	
	
	
	
	
	
	
	
}
