package view;

public class Message {
 private String content;
 private String tipo;
 private String cssClasse;
 
 
public Message(String content, String tipo, String cssClasse) {
	super();
	this.content = content;
	this.tipo = tipo;
	this.cssClasse = cssClasse;
}


public String getContent() {
	return content;
}


public void setContent(String content) {
	this.content = content;
}


public String getTipo() {
	return tipo;
}


public void setTipo(String tipo) {
	this.tipo = tipo;
}


public String getCssClasse() {
	return cssClasse;
}


public void setCssClasse(String cssClasse) {
	this.cssClasse = cssClasse;
}
 
 
}
