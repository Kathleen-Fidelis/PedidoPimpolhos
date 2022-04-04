[13:42, 02/04/2022] Mateus Reis: -- CATEGORIA
insert into categoria (nome_categoria) values ('Menino');
insert into categoria (nome_categoria) values ('Menina');
insert into categoria (nome_categoria) values ('Acessório');

-- FORNECEDOR
insert into fornecedor (nome_fornecedor) values ('Dollbaby');

-- MARCA
insert into marca (nome_marca) values ('Pimpolhos');

-- PRODUTO
insert into produto (nome, preco, sexo, dimensao, material, peso, conteudo_produto, cod_fornecedor, cod_categoria, img_produto, cod_marca)
values ('Bebe Reborn Emilly', 619.00, 'menina', '60x30 cm','silicone', 1.599, 'Acompanha: Um bebe reborn + Roupas igual da foto + Chupeta Magnética + Mamadeira + Certidão de Nascimento', 1, 2, 'img1', 1);

insert into produto (nome, preco, sexo, dimensao, material, peso, conteudo_produt…
[13:42, 02/04/2022] Mateus Reis: -- STATUS PEDIDO
insert into status_pedido (cod_status, descricao_status_pedido) values (1, 'Processando pagamento');
insert into status_pedido (cod_status, descricao_status_pedido) values (2, 'Em separação');
insert into status_pedido (cod_status, descricao_status_pedido) values (3, 'A caminho');
insert into status_pedido (cod_status, descricao_status_pedido) values (4, 'Concluído');
insert into status_pedido (cod_status, descricao_status_pedido) values (5, 'Cancelado');

-- frete
insert into frete (cod_frete , descricao_frete , valor_frete) values (1 , 'Express até 5 dias', 25);
insert into frete (cod_frete , descricao_frete , valor_frete) values (2 , 'Normal até 9 dias', 15.90);

-- tipo_telefone
insert into tipo_telefone (descricao_telefone) values ('tel');
insert into tipo_telefone (descricao_telefone) values ('cel');

-- ENDERECO CLIENTE
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(1,1,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(2,2,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(3,3,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(4,4,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(5,5,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(6,6,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(7,7,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(8,8,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(9,9,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(10,10,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(11,11,1);

insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(12,12,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(13,13,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(14,14,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(15,15,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(16,16,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(17,17,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(18,18,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(19,19,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(20,20,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(21,21,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(22,22,1);

insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(23,23,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(24,24,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(25,25,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(26,26,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(27,27,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(28,28,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(29,29,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(30,30,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(31,31,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(32,32,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(33,33,1);

insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(34,34,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(35,35,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(36,36,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(37,37,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(38,38,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(39,39,1);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(40,40,1);

insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(1,41,0);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(2,42,0);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(3,43,0);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(4,44,0);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(5,45,0);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(6,46,0);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(7,47,0);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(8,48,0);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(9,49,0);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(10,50,0);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(11,51,0);

insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(12,52,0);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(13,53,0);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(14,54,0);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(15,55,0);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(16,1,0);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(17,2,0);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(18,8,0);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(19,9,0);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(20,3,0);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(21,4,0);
insert into endereco_cliente (cod_cliente,cod_endereco,flag_endereco) values(22,5,0);


-- NATUREZA OPERACAO
insert into natureza_operacao (cod_natureza_operacao , descricao_natureza_operacao) values (1 , 'Entrada');
insert into natureza_operacao (cod_natureza_operacao , descricao_natureza_operacao) values (2 , 'Saida');
insert into natureza_operacao (cod_natureza_operacao , descricao_natureza_operacao) values (3 , 'Devolução');


-- PESQUISA SATISFACAO
insert into pesquisa_satisfacao (cod_pesquisa, descricao_pesquisa_satisfacao) values (1, 'Muito satisfeito');
insert into pesquisa_satisfacao (cod_pesquisa, descricao_pesquisa_satisfacao) values (2, 'Satisfeito');
insert into pesquisa_satisfacao (cod_pesquisa, descricao_pesquisa_satisfacao) values (3, 'Indiferente');
insert into pesquisa_satisfacao (cod_pesquisa, descricao_pesquisa_satisfacao) values (4, 'Insatisfeito');
insert into pesquisa_satisfacao (cod_pesquisa, descricao_pesquisa_satisfacao) values (5, 'Muito insatisfeito');


-- PRODUTOS RELACIONADOS 
insert into produtos_relacionados (cod_produto) values (1);
insert into produtos_relacionados (cod_produto) values (2);
insert into produtos_relacionados (cod_produto) values (3);
insert into produtos_relacionados (cod_produto) values (4);
insert into produtos_relacionados (cod_produto) values (5);
insert into produtos_relacionados (cod_produto) values (6);
insert into produtos_relacionados (cod_produto) values (7);
insert into produtos_relacionados (cod_produto) values (8);
insert into produtos_relacionados (cod_produto) values (9);
insert into produtos_relacionados (cod_produto) values (10);


-- ITEM PEDIDO
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (1, 1, 2);

insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (1, 2, 2);

insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (2, 2, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (3, 3, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (4, 4, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (5, 5, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (6, 6, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (7, 7, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (8, 8, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (9, 9, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (10, 10, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (11, 11, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (12, 12, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (13, 13, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (14, 14, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (15, 15, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (16, 16, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (17, 17, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (18, 18, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (19, 19, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (20, 20, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (21, 21, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (22, 22, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (23, 23, 2);
insert into item_pedido (cod_item_pedido, cod_produto, quantidade) values (24, 24, 2);


-- PEDIDO
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (1, 1, 1, 1, 1, 1, '01012022', 1);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (2, 2, 2, 1, 2, 1, '01012022', 2);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (1, 3, 3, 2, 3, 2, '01012022', 3);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (2, 4, 4, 2, 4, 2, '02012022', 4);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (1, 5, 5, 3, 5, 3, '02012022', 5);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (2, 6, 6, 3, 6, 3, '02012022', 6);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (1, 7, 7, 4, 7, 1, '02012022', 7);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (2, 8, 8, 4, 8, 1, '03012022', 8);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (1, 9, 9, 5, 9, 2, '03012022', 9);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (2, 10, 10, 5, 10, 2, '04012022', 10);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (1, 1, 1, 3, 11, 1, '05012022', 11);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (1, 2, 2, 3, 12, 2, '05012022', 12);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (1, 3, 3, 3, 13, 2, '05012022', 13);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (1, 4, 4, 3, 14, 3, '05012022', 14);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (1, 5, 5, 3, 15, 2, '05012022', 15);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (1, 6, 6, 3, 16, 1, '05012022', 16);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (1, 7, 7, 3, 17, 3, '05012022', 17);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (1, 8, 8, 3, 18, 1, '05012022', 18);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (1, 9, 9, 3, 19, 2, '10012022', 19);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (1, 10, 10, 3, 20, 2, '10012022', 20);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (1, 11, 1, 1, 21, 3, '10012022', 21);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (1, 12, 2, 1, 22, 3, '10012022', 22);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (2, 1, 3, 2, 23, 3, '11012022', 23);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (1, 4, 4, 5, 24, 3, '11012022', 24);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (1, 5, 5, 4, 25, 3, '15012022', 1);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (1, 6, 6, 4, 26, 3, '15012022', 2);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (2, 7, 7, 4, 27, 3, '15012022', 3);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (2, 8, 8, 2, 28, 3, '16012022', 4);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (1, 9, 9, 1, 29, 3, '16012022', 5);
insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, data_pedido, cod_item_pedido) values (2, 2, 10, 3, 30, 3, '16012022', 6);



-- insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, cod_item_pedido) values (2, 2, 10, 3, 30, 3, 1);
-- insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento, cod_item_pedido) values (2, 3, 2, 3, 30, 3, 2);




-- DESTAQUES
insert into destaques (cod_destaques, cod_pedido) values (1, 2);
insert into destaques (cod_destaques, cod_pedido) values (2, 3);
insert into destaques (cod_destaques, cod_pedido) values (3, 4);
insert into destaques (cod_destaques, cod_pedido) values (4, 5);
insert into destaques (cod_destaques, cod_pedido) values (5, 6);
insert into destaques (cod_destaques, cod_pedido) values (6, 7);
insert into destaques (cod_destaques, cod_pedido) values (8, 9);
insert into destaques (cod_destaques, cod_pedido) values (10, 11);
insert into destaques (cod_destaques, cod_pedido) values (12, 13);
insert into destaques (cod_destaques, cod_pedido) values (13, 14);
insert into destaques (cod_destaques, cod_pedido) values (14, 15);

-- PEDIDO AVALIACAO
insert into pedido_avaliacao (cod_pedido, cod_pesquisa, mensagem_avaliativa, imagem_avaliacao) values (1, 2, 'Bebê muito pesado', 'img1');
insert into pedido_avaliacao (cod_pedido, cod_pesquisa, mensagem_avaliativa, imagem_avaliacao) values (2, 3, 'Amei o produto, de alta qualidade', 'img2');
insert into pedido_avaliacao (cod_pedido, cod_pesquisa, mensagem_avaliativa, imagem_avaliacao) values (3, 4, 'Amei, compraria de novo, minha filha amou', 'img3');
insert into pedido_avaliacao (cod_pedido, cod_pesquisa, mensagem_avaliativa, imagem_avaliacao) values (4, 3, 'Ótimo atendimento, entregaram antes do prazo', 'img4');
insert into pedido_avaliacao (cod_pedido, cod_pesquisa, mensagem_avaliativa, imagem_avaliacao) values (5, 4, 'Minha filha não desgruda da boneca, amei', 'img5');
insert into pedido_avaliacao (cod_pedido, cod_pesquisa, mensagem_avaliativa, imagem_avaliacao) values (6, 3, 'Com certeza comprarei de novo', 'img6');
insert into pedido_avaliacao (cod_pedido, cod_pesquisa, mensagem_avaliativa, imagem_avaliacao) values (7, 3, 'Chegou antes do previsto, comprarei novamente', 'img7');
insert into pedido_avaliacao (cod_pedido, cod_pesquisa, mensagem_avaliativa, imagem_avaliacao) values (8, 3, 'Boneca linda e ótima qualidade', 'img8');
insert into pedido_avaliacao (cod_pedido, cod_pesquisa, mensagem_avaliativa, imagem_avaliacao) values (9, 4, 'Adorei o atendimento', 'img9');
insert into pedido_avaliacao (cod_pedido, cod_pesquisa, mensagem_avaliativa, imagem_avaliacao) values (10, 3, 'Preço justo e produto de qualidade, amei ', 'img10');

-- FAVORITOS
insert into favoritos (cod_cliente, cod_produto) values (1, 10);
insert into favoritos (cod_cliente, cod_produto) values (2, 9);
insert into favoritos (cod_cliente, cod_produto) values (3, 8);
insert into favoritos (cod_cliente, cod_produto) values (4, 7);
insert into favoritos (cod_cliente, cod_produto) values (5, 6);
insert into favoritos (cod_cliente, cod_produto) values (6, 5);
insert into favoritos (cod_cliente, cod_produto) values (7, 4);
insert into favoritos (cod_cliente, cod_produto) values (8, 3);
insert into favoritos (cod_cliente, cod_produto) values (9, 2);
insert into favoritos (cod_cliente, cod_produto) values (10, 1);

-- TELEFONE
insert into telefone (ddd,numero_telefone ,cod_tipoTelefone) values(85,988765382,2);
insert into telefone (ddd,numero_telefone ,cod_tipoTelefone) values(11,36863559,1);
insert into telefone (ddd,numero_telefone ,cod_tipoTelefone) values(83,39899368,1);
insert into telefone (ddd,numero_telefone ,cod_tipoTelefone) values(11,987113914,2);
insert into telefone (ddd,numero_telefone ,cod_tipoTelefone) values(11,987113913,2);
insert into telefone (ddd,numero_telefone ,cod_tipoTelefone) values(45,984622644,2);
insert into telefone (ddd,numero_telefone ,cod_tipoTelefone) values(19,982509100,2);
insert into telefone (ddd,numero_telefone ,cod_tipoTelefone) values(67,998515635,2);
insert into telefone (ddd,numero_telefone ,cod_tipoTelefone) values(44,999908146,2);
insert into telefone (ddd,numero_telefone ,cod_tipoTelefone) values(97,993969148,2);

-- TELEFONE CLIENTE
insert into cliente_telefone (cod_cliente, cod_telefone) values (1, 10);
insert into cliente_telefone (cod_cliente, cod_telefone) values (2, 9);
insert into cliente_telefone (cod_cliente, cod_telefone) values (3, 8);
insert into cliente_telefone (cod_cliente, cod_telefone) values (4, 7);
insert into cliente_telefone (cod_cliente, cod_telefone) values (5, 6);
insert into cliente_telefone (cod_cliente, cod_telefone) values (6, 5);
insert into cliente_telefone (cod_cliente, cod_telefone) values (7, 4);
insert into cliente_telefone (cod_cliente, cod_telefone) values (8, 3);
insert into cliente_telefone (cod_cliente, cod_telefone) values (9, 2);
insert into cliente_telefone (cod_cliente, cod_telefone) values (10, 1);

-- ITEM NOTA
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item) 
values (1, 1, 549.00, 549.00, 1, 38.43);
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item) 
values (2, 1, 659.00, 659.00, 1, 46.13);
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item) 
values (3, 2, 79.00, 79.00, 1, 5.53);
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item) 
values (4, 3, 699.90, 699.90, 1, 48.93);
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item) 
values (5, 4, 350.90, 350.90, 1, 24.56);
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item) 
values (6, 5, 49.90, 49.90, 1, 3.49);
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item) 
values (7, 6, 499.90, 499.90, 1, 34.93);
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item) 
values (8, 7, 299.90, 299.90, 1, 20.93);
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item) 
values (9, 8, 39.90, 39.90, 1, 2.73);
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item) 
values (10, 9, 459.00, 459.00, 1, 32.13);

insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item) 
values (11, 32, 549.00, 549.00, 1, 39.40);
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item)
values (12, 33, 649.00, 1298.00, 2, 103.84);
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item)
values (13, 34, 249.00, 249.00, 1, 19.90);
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item)
values (14, 35, 449.00, 449.00, 1, 29.40);
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item)
values (15, 36, 349.00, 1049.00, 3, 83.90);
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item)
values (16, 37, 549.00, 549.00, 1, 39.40);
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item)
values (17, 38, 149.00, 149.00, 1, 11.90);
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item)
values (18, 39, 49.00, 49.00, 1, 3.99);
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item)
values (19, 40, 449.00, 449.00, 1, 35.90);
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item)
values (20, 42, 349.00, 349.00, 1, 27.90);
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item)
values (21, 44, 649.00, 649.00, 1, 51.99);

insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item)
values (22, 30, 359.99, 359.99, 1, 25.19);
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item)
values (23, 31, 359.99, 399.99, 1, 27.99);
insert into item_nf (cod_produto, cod_item_nota, valor_unitario, valor_total, quantidade, valor_icms_item)
values (24, 32, 890.99, 890.99, 1, 62.36);

-- NOTA FISCAL
insert into nf_e (cod_pedido, numero_nf, chave_acesso, data_emissao, valor_total_nf, valor_total_produtos, coo_nota,valor_frete, inscricao_estadual,
valor_icms_total, cod_produto, cod_item_nota, cod_natureza_operacao, cnpj_pimpolhos, razao_social) 
values 
(11, 5446789923, '1564864231984531896123189453418642318635186', '11012022', 549.00, 549.00, 000001, 0.00, '329.101.800.774', 38.43, 
1, 1, 2, '83986043000115','Pimpolhos');

insert into nf_e (cod_pedido, numero_nf, chave_acesso, data_emissao, valor_total_nf, valor_total_produtos, coo_nota, valor_frete, inscricao_estadual,
valor_icms_total, cod_produto, cod_item_nota, cod_natureza_operacao, cnpj_pimpolhos, razao_social) 
values 
(12,5446789924, '4561164231984531896123189455648642318635186', '11012022', 659.00, 659.00, 000002, 0.00, '105.906.899.690', 46.13, 
2, 2, 2, '83986043000115','Pimpolhos');

insert into nf_e (cod_pedido,numero_nf,chave_acesso,data_emissao,valor_total_nf,valor_total_produtos,coo_nota,valor_frete,inscricao_estadual,
valor_icms_total,cod_produto,cod_item_nota,cod_natureza_operacao,cnpj_pimpolhos,razao_social) 
values 
(13,5446789925, '4564864231984531896123189453446642318635186', '11012022', 94.90, 79.00, 000003, 15.90, '370.851.590.069', 5.53, 
3, 3, 2, '83986043000115','Pimpolhos');

insert into nf_e (cod_pedido, numero_nf, chave_acesso, data_emissao, valor_total_nf, valor_total_produtos, coo_nota, valor_frete, inscricao_estadual,
valor_icms_total, cod_produto, cod_item_nota, cod_natureza_operacao, cnpj_pimpolhos, razao_social) 
values 
(14,5446789926, '5864864231984531896124569453418642318635186', '11012022', 699.90, 699.90, 000004, 0.00, '378.295.571.942', 48.93, 
4, 4, 2, '83986043000115','Pimpolhos');

insert into nf_e (cod_pedido,numero_nf,chave_acesso,data_emissao,valor_total_nf,valor_total_produtos,coo_nota,valor_frete,inscricao_estadual,
valor_icms_total,cod_produto,cod_item_nota,cod_natureza_operacao,cnpj_pimpolhos,razao_social) 
values 
(15,5446789927, '1564864231984531894654589453418642318635186', '12012022', 366.80, 350.90, 000005, 15.90, '411.832.734.824', 24.56, 
5, 5, 2, '83986043000115','Pimpolhos');

insert into nf_e (cod_pedido, numero_nf, chave_acesso, data_emissao, valor_total_nf, valor_total_produtos, coo_nota, valor_frete, inscricao_estadual,
valor_icms_total, cod_produto, cod_item_nota, cod_natureza_operacao, cnpj_pimpolhos, razao_social) 
values 
(16,5446789928, '8642319845318961234594534585518642318635186', '12012022', 65.80, 49.90, 000006, 15.90, '641.295.775.807', 3.49, 
6, 6, 2, '83986043000115','Pimpolhos');

insert into nf_e (cod_pedido, numero_nf, chave_acesso, data_emissao, valor_total_nf, valor_total_produtos, coo_nota, valor_frete, inscricao_estadual,
valor_icms_total,cod_produto,cod_item_nota,cod_natureza_operacao,cnpj_pimpolhos,razao_social) 
values 
(17,5446789929, '1564864231984531896123143215341864231863516', '12012022', 515.80, 499.90, 000007, 15.90, '528.168.727.791', 34.93, 
7, 7, 2, '83986043000115','Pimpolhos');

insert into nf_e (cod_pedido,numero_nf,chave_acesso,data_emissao,valor_total_nf,valor_total_produtos,coo_nota,valor_frete,inscricao_estadual,
valor_icms_total,cod_produto,cod_item_nota,cod_natureza_operacao,cnpj_pimpolhos,razao_social) 
values 
(18,5446789930, '1564864231984531896123189453418642318563518', '13012022', 315.80, 299.90, 000008, 15.90, '298.579.858.126', 20.93, 
8, 8, 2, '83986043000115','Pimpolhos');

insert into nf_e (cod_pedido,numero_nf,chave_acesso,data_emissao,valor_total_nf,valor_total_produtos,coo_nota,valor_frete,inscricao_estadual,
valor_icms_total,cod_produto,cod_item_nota,cod_natureza_operacao,cnpj_pimpolhos,razao_social) 
values 
(19,5446789931, '1564864231984544896123189453418642318563518', '13012022', 64.90, 39.90, 000009, 25.00, '744.845.698.695', 2.73, 
9, 9, 2, '83986043000115','Pimpolhos');

insert into nf_e (cod_pedido,numero_nf,chave_acesso,data_emissao,valor_total_nf,valor_total_produtos,coo_nota,valor_frete,inscricao_estadual,
valor_icms_total,cod_produto,cod_item_nota,cod_natureza_operacao,cnpj_pimpolhos,razao_social)
values 
(1,1046789935, '8642319845318961931242489453418642318563518', '14012022', 599.90, 599.90, 000020, 0.00, '675.494.070.942', 47.99, 
2, 1, 2, '83986043000115','Pimpolhos');

insert into nf_e (cod_pedido,numero_nf,chave_acesso,data_emissao,valor_total_nf,valor_total_produtos,coo_nota,valor_frete,inscricao_estadual,
valor_icms_total,cod_produto,cod_item_nota,cod_natureza_operacao,cnpj_pimpolhos,razao_social) 
values 
(2,1046789936, '8642319845318961231942489453418642318563518', '15012022', 299.90, 299.90, 000021, 25.00, '675.494.070.942', 24.00, 
3, 2, 2, '83986043000115','Pimpolhos');

insert into nf_e (cod_pedido,numero_nf,chave_acesso,data_emissao,valor_total_nf,valor_total_produtos,coo_nota,valor_frete,inscricao_estadual,
valor_icms_total,cod_produto,cod_item_nota,cod_natureza_operacao,cnpj_pimpolhos,razao_social) 
values 
(2,1046789936, '8642319845318961231242489953418642318563518', '15012022', 799.90, 799.90, 000021, 0.00, '675.494.070.942', 29.00, 
3, 3, 2, '83986043000115','Pimpolhos');

insert into nf_e (cod_pedido,numero_nf,chave_acesso,data_emissao,valor_total_nf,valor_total_produtos,coo_nota,valor_frete,inscricao_estadual,
valor_icms_total,cod_produto,cod_item_nota,cod_natureza_operacao,cnpj_pimpolhos,razao_social)
values 
(3,1046789937, '8642319845318961231242489453418642818563518', '15012022', 799.90, 799.90, 000022, 0.00, '675.494.070.942', 29.00, 
4, 4, 2, '83986043000115','Pimpolhos');

insert into nf_e (cod_pedido,numero_nf,chave_acesso,data_emissao,valor_total_nf,valor_total_produtos,coo_nota,valor_frete,inscricao_estadual,
valor_icms_total,cod_produto,cod_item_nota,cod_natureza_operacao,cnpj_pimpolhos,razao_social) 
values 
(4,1046789938, '8642319845318961231242489453418642818563518', '16012022', 899.90, 899.90, 000023, 0.00, '675.494.070.942', 71.00, 
5, 5, 2, '83986043000115','Pimpolhos');

insert into nf_e (cod_pedido,numero_nf,chave_acesso,data_emissao,valor_total_nf,valor_total_produtos,coo_nota,valor_frete,inscricao_estadual,
valor_icms_total,cod_produto,cod_item_nota,cod_natureza_operacao,cnpj_pimpolhos,razao_social) 
values 
(4,1046789939, '8642319845318961231242489455818642318563518', '16012022', 1099.90, 1099.90, 000024, 0.00, '675.494.070.942', 87.90, 
6, 6, 2, '83986043000115','Pimpolhos');

insert into nf_e (cod_pedido,numero_nf,chave_acesso,data_emissao,valor_total_nf,valor_total_produtos,coo_nota,valor_frete,inscricao_estadual,
valor_icms_total,cod_produto,cod_item_nota,cod_natureza_operacao,cnpj_pimpolhos,razao_social) 
values 
(5,1046789940, '8642319845318961231242489853418642318563518', '16012022', 299.90, 299.90, 000025, 0.00, '675.494.070.942', 23.90, 
7, 7, 2, '83986043000115','Pimpolhos');

insert into nf_e (cod_pedido,numero_nf,chave_acesso,data_emissao,valor_total_nf,valor_total_produtos,coo_nota,valor_frete,inscricao_estadual,
valor_icms_total,cod_produto,cod_item_nota,cod_natureza_operacao,cnpj_pimpolhos,razao_social) 
values 
(6,1046789941, '8642319845318961231262489453418642318563518', '16012022', 499.90, 499.90, 000026, 0.00, '675.494.070.942', 39.90, 
8, 8, 2, '83986043000115','Pimpolhos');

insert into nf_e (cod_pedido,numero_nf,chave_acesso,data_emissao,valor_total_nf,valor_total_produtos,coo_nota,valor_frete,inscricao_estadual,
valor_icms_total,cod_produto,cod_item_nota,cod_natureza_operacao,cnpj_pimpolhos,razao_social) 
values
(7,1046789942, '8642319845318961231242489443418642318563518', '17012022', 499.90, 499.90, 000027, 0.00, '675.494.070.942', 39.90, 
9, 9, 2, '83986043000115','Pimpolhos');


-- LOGIN
insert into login (usuario, senha) values ("mateus@pimpolhos.com.br", "pimpolhos");
insert into login (usuario, senha) values ("kaique@pimpolhos.com.br", "pimpolhos");
insert into login (usuario, senha) values ("kathleen@pimpolhos.com.br", "pimpolhos");
insert into login (usuario, senha) values ("isabella@pimpolhos.com.br", "pimpolhos");
insert into login (usuario, senha) values ("gabriel@pimpolhos.com.br", "pimpolhos");




-- pedido com calculo
select pedido.cod_pedido, c.nome_cliente, pedido.data_pedido, ip.quantidade, f.descricao_frete, f.valor_frete, sp.descricao_status_pedido, (ip.quantidade * p.preco) + f.valor_frete as valor_total from pedido
inner join cliente c on c.cod_cliente = pedido.cod_cliente
inner join item_pedido ip on ip.cod_item_pedido = pedido.cod_item_pedido
inner join frete f on f.cod_frete = pedido.cod_frete 
inner join status_pedido sp on sp.cod_status = pedido.cod_status
inner join produto p on p.cod_produto = ip.cod_produto;


-- detalhe do pedido com calculo
select pedido.cod_pedido, pedido.data_pedido, c.nome_cliente, e.nome_cidade, e.cep, e.nome_rua, e.numero_casa, e.complemento, e.bairro, e.ponto_referencia, e2.descricao_estado, f.descricao_frete, f.valor_frete, sp.descricao_status_pedido, fp.descricao_forma_pagamento, p.nome, p.preco, m.nome_marca, ip.quantidade, (ip.quantidade * p.preco) + f.valor_frete as valor_total from pedido 
inner join cliente c on c.cod_cliente = pedido.cod_cliente 
inner join endereco e on e.cod_endereco = pedido.cod_endereco 
inner join estado e2 on e2.cod_estado = e.cod_estado 
inner join frete f on f.cod_frete = pedido.cod_frete 
inner join status_pedido sp on sp.cod_status = pedido.cod_status 
inner join forma_pagamento fp on fp.cod_forma_pagamento = pedido.cod_forma_pagamento 
inner join item_pedido ip on ip.cod_item_pedido = pedido.cod_item_pedido
inner join produto p on p.cod_produto = ip.cod_produto 
inner join marca m on m.cod_marca = p.cod_marca where cod_pedido = 1
ORDER BY cod_pedido ASC
;


-- cliente
select cliente.cod_cliente ,cliente.nome_cliente, cliente.cpf,cliente.data_nasc ,cliente.email from cliente;


-- detalhe cliente
select cliente.cod_cliente ,cliente.nome_cliente, cliente.cpf,cliente.data_nasc ,cliente.email, e.nome_rua, e.numero_casa,e.bairro,e.complemento,e.ponto_referencia, e.cep , e.nome_cidade,e2.descricao_estado,c.nome_titular,b.descricao_bandeira,t.ddd,t.numero_telefone,tt.descricao_telefone from cliente 
inner join cliente_telefone ct ON ct.cod_cliente = cliente.cod_cliente 
inner join telefone t on t.cod_telefone = ct.cod_telefone 
inner join tipo_telefone tt on tt.cod_tipoTelefone = t.cod_tipoTelefone 
inner join cartao c on c.cod_cliente = cliente.cod_cliente 
inner join bandeira b on b.cod_bandeira = c.cod_bandeira 
inner join endereco_cliente ec on ec.cod_cliente = cliente.cod_cliente
inner join endereco e on e.cod_endereco = ec.cod_endereco
inner join estado e2 on e2.cod_estado = e.cod_estado where ec.flag_endereco = 1
order by cod_cliente asc ;



-- contador da home
select count(cod_cliente) from cliente;
select count(cod_pedido) from pedido;
select count(cod_produto) from produto;



-- clientes com endereços ativos
select cliente.cod_cliente ,cliente.nome_cliente, cliente.cpf,cliente.data_nasc ,cliente.email,cliente.senha,ec.cod_endereco,e.nome_rua, e.numero_casa, e.bairro,e.complemento,e.ponto_referencia, e.cep , e.nome_cidade,e2.descricao_estado from cliente
inner join endereco_cliente ec on ec.cod_cliente = cliente.cod_cliente
inner join endereco e on e.cod_endereco = ec.cod_endereco
inner join estado e2  on e2.cod_estado  =  e.cod_estado where ec.flag_endereco = 1
;

select cliente.cod_cliente ,cliente.nome_cliente, cliente.cpf,cliente.data_nasc ,cliente.email,cliente.senha ,ec.cod_endereco , e.nome_rua, e.numero_casa, e.bairro,e.complemento,e.ponto_referencia, e.cep , e.nome_cidade,e2.descricao_estado,ec2.flag_endereco from cliente
inner join endereco_cliente ec on ec.cod_cliente = cliente.cod_cliente
inner join endereco e on e.cod_endereco = ec.cod_endereco 
inner join estado e2  on e2.cod_estado  = e.cod_estado 
inner join endereco_cliente ec2 on ec.cod_endereco = e.cod_endereco where ec.flag_endereco = 1;


-- produtos
select produto.cod_produto, produto.nome, produto.preco, produto.sexo, produto.dimensao, produto.material, produto.peso, produto.conteudo_produto , f.nome_fornecedor, c.nome_categoria, produto.img_produto, m.nome_marca from produto
inner join fornecedor f on f.cod_fornecedor = produto.cod_fornecedor 
inner join categoria c on c.cod_categoria = produto.cod_categoria 
inner join marca m on m.cod_marca = produto.cod_marca;




delete estoque from estoque
inner join produto p on p.cod_produto = estoque.cod_produto 
where  p.cod_categoria = 1 ;


delete favoritos from favoritos 
inner join produto p on p.cod_produto = favoritos.cod_produto 
where p.cod_categoria = 1;

delete nf_e from nf_e 
inner join produto p on p.cod_produto = nf_e.cod_produto 
where p.cod_categoria = 1;

-- delete nf_e from nf_e
-- inner join produto p on p.cod_produto = item_nf.cod_produto 
-- where p.cod_categoria = 1;

-- delete item_nf from item_nf 
-- inner join produto p on p.cod_produto = item_nf.cod_produto 
-- where p.cod_categoria = 1;

-- delete produto from produto 
-- inner join categoria c on c.cod_categoria = produto.cod_categoria 
-- where c.cod_categoria = 1;

delete from produto where cod_fornecedor = 1;

select * from estoque;
select * from produto;
select * from favoritos;
select * from login;
select * from produto;
select * from cliente;
select * from nf_e;
select * from item_nf;
select * from pedido;
select * from endereco_cliente;
select * from item_pedido;
select * from pedido;
select * from item_pedido ip;
select * from frete;
select * from produto;
select * from cliente;
select * from marca;
select * from fornecedor;







select * from categoria;
select * from fornecedor;

select * from cliente;
select * from produto;

select * from pedido;
select * from  marca;