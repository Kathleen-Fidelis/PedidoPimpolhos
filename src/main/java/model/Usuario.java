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
	private String cep;
	private String complemento;
	private String pontoReferencia;
	private String bairro;
	private String cidade;
	private String estado;
	private String bandeira;
	private String titularCartao;
	private String dddtelefone;
	private String telefoneCliente;
	private String tipoTelefone;
	
	













	public Usuario(String nome, String cpf, Date nascimento, String email, String rua, String numeroCasa, String cep,
			String complemento, String pontoReferencia, String bairro, String cidade, String estado, String bandeira,
			String titularCartao, String dddtelefone, String telefoneCliente, String tipoTelefone) {
		super();
		this.nome = nome;
		this.cpf = cpf;
		this.nascimento = nascimento;
		this.email = email;
		this.rua = rua;
		this.numeroCasa = numeroCasa;
		this.cep = cep;
		this.complemento = complemento;
		this.pontoReferencia = pontoReferencia;
		this.bairro = bairro;
		this.cidade = cidade;
		this.estado = estado;
		this.bandeira = bandeira;
		this.titularCartao = titularCartao;
		this.dddtelefone = dddtelefone;
		this.telefoneCliente = telefoneCliente;
		this.tipoTelefone = tipoTelefone;
	}








	// CLIENTE PADRÃO
	
	



	public Usuario(String nome, String cpf, Date nascimento, String email) {
		super();
		this.nome = nome;
		this.cpf = cpf;
		this.nascimento = nascimento;
		this.email = email;
	}

	
	
	
	
	









	public Integer getCod_cliente() {
		return cod_cliente;
	}








	public void setCod_cliente(Integer cod_cliente) {
		this.cod_cliente = cod_cliente;
	}








	public String getNome() {
		return nome;
	}








	public void setNome(String nome) {
		this.nome = nome;
	}








	public String getCpf() {
		return cpf;
	}








	public void setCpf(String cpf) {
		this.cpf = cpf;
	}








	public Date getNascimento() {
		return nascimento;
	}








	public void setNascimento(Date nascimento) {
		this.nascimento = nascimento;
	}








	public String getEmail() {
		return email;
	}








	public void setEmail(String email) {
		this.email = email;
	}








	public String getRua() {
		return rua;
	}








	public void setRua(String rua) {
		this.rua = rua;
	}








	public String getNumeroCasa() {
		return numeroCasa;
	}








	public void setNumeroCasa(String numeroCasa) {
		this.numeroCasa = numeroCasa;
	}








	public String getCep() {
		return cep;
	}








	public void setCep(String cep) {
		this.cep = cep;
	}








	public String getComplemento() {
		return complemento;
	}








	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}








	public String getPontoReferencia() {
		return pontoReferencia;
	}








	public void setPontoReferencia(String pontoReferencia) {
		this.pontoReferencia = pontoReferencia;
	}








	public String getBairro() {
		return bairro;
	}








	public void setBairro(String bairro) {
		this.bairro = bairro;
	}








	public String getCidade() {
		return cidade;
	}








	public void setCidade(String cidade) {
		this.cidade = cidade;
	}








	public String getEstado() {
		return estado;
	}








	public void setEstado(String estado) {
		this.estado = estado;
	}








	public String getBandeira() {
		return bandeira;
	}








	public void setBandeira(String bandeira) {
		this.bandeira = bandeira;
	}








	public String getTitularCartao() {
		return titularCartao;
	}








	public void setTitularCartao(String titularCartao) {
		this.titularCartao = titularCartao;
	}








	public String getDddtelefone() {
		return dddtelefone;
	}








	public void setDddtelefone(String dddtelefone) {
		this.dddtelefone = dddtelefone;
	}








	public String getTelefoneCliente() {
		return telefoneCliente;
	}








	public void setTelefoneCliente(String telefoneCliente) {
		this.telefoneCliente = telefoneCliente;
	}








	public String getTipoTelefone() {
		return tipoTelefone;
	}








	public void setTipoTelefone(String tipoTelefone) {
		this.tipoTelefone = tipoTelefone;
	}









	
	
}