package model;

import java.util.Date;

public class Usuario {

	private Integer cod_cliente;
	private String  nome;
	private String  cpf;
	private Date  nascimento;
	private String  email;
	private String  rua;
	private String numeroCasa;
	private String bairro;
	private String complemento;
	private String pontoReferencia;
	private String cep;
	private String cidade;
	private String estado;
	private String titularCartao;
	private String bandeira;
	private String dddtelefone;
	private String telefoneCliente;
	private String tipoTelefone;
	
	
	
	public Usuario(String nome, String cpf, Date nascimento, String email, String rua, String numeroCasa, String bairro,
			String complemento, String pontoReferencia, String cep, String cidade, String estado, String titularCartao,
			String bandeira, String dddtelefone, String telefoneCliente, String tipoTelefone) {
		super();
		this.nome = nome;
		this.cpf = cpf;
		this.nascimento = nascimento;
		this.email = email;
		this.rua = rua;
		this.numeroCasa = numeroCasa;
		this.bairro = bairro;
		this.complemento = complemento;
		this.pontoReferencia = pontoReferencia;
		this.cep = cep;
		this.cidade = cidade;
		this.estado = estado;
		this.titularCartao = titularCartao;
		this.bandeira = bandeira;
		this.dddtelefone = dddtelefone;
		this.telefoneCliente = telefoneCliente;
		this.tipoTelefone = tipoTelefone;
	}
	
	

	
	



}