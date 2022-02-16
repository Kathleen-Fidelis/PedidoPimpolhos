$(document).ready(function(){
	$(".telefone, .celular").mask("(00) 0000-0000");
	$(".cpf").mask("000.000.000-00"); 
	$(".preco").mask("0.000,00", {reverse: true}); 
	$(".preco2").mask("R$ 000,00");
	$(".preco3").mask("R$ 00,000");
	$(".cep").mask("00000-000"); 
	$(".dimensao").mask("00x00 cm"); 
	$(".peso").mask("0.000,00", {reverse: true}); 
	$(".peso2").mask("0.000,00 kg", {reverse: true});  
	$(".cnpj").mask("00.000.000/0000-00", {reverse: true});     
});
 