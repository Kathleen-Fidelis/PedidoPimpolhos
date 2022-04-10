create table cliente 
(
  cod_cliente smallint not null auto_increment,
  nome_cliente varchar(50) not null,
  cpf varchar(11) not null,
  data_nasc DATE not null,
  email varchar(50) not null,
  senha varchar(50) not null,
  primary key (cod_cliente), 
  unique (email),
  unique (cpf)
);


-- CLIENTE
insert into cliente (nome_cliente, cpf, data_nasc, email, senha) 
values ('Maria Silva', '79487888080', '1997-01-24', 'mariasilva@gmail.com', MD5('ch%&tw@jy'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha) 
values (' Souza', '00760659010', '1987-05-23', 'joaosoduza@gmail.com', MD5('kte&#koen'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha) 
values ('Tereza Batista', '84783947023', '2000-09-22', 'terezabatista@gmail.com', MD5('qutl&%da#'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha) 
values ('Ana Carolina', '21189301008', '1997-11-02', 'ana@gmail.com', MD5('drewrl&%da#'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha) 
values ('Felipe Melo', '79001884016', '1987-12-01', 'felipeme@gmail.com', MD5 ('jgu%jg&#h'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha) 
values ('Jorge Amado', '63271265020', '1998-02-03', 'jorge@gmail.com',  MD5('kdftr@hfkj#'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha) 
values ('Amanda Melo', '76144108076', '1990-07-04', 'amanda@gmail.com', MD5 ('esle#ue%c@'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha) 
values ('Felicia Costa', '32678795071', '1999-12-06', 'felicia@gmail.com', MD5 ('oap#ner@g%'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha) 
values ('Camila Ribeiro', '34303111015', '1997-02-07', 'caribeiro@gmail.com', MD5 ('bsyt&lwo#'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha) 
values ('Luciano Gonçalves', '45674990000', '2000-05-10', 'lug@hotmail.com',  MD5('latb@kgi6%'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha)
values ('Rita Silva', '64849549098', '1990-04-24', 'rita2@gmail.com',  MD5 ('fdhks6#'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha)
values ('Joana Camargo', '44845579098', '1997-04-14', 'jocamargo@gmail.com', MD5 ('ffdhajag6#'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha)
values ('José Alfredo Lima', '56639544023', '1991-05-15', 'joselima@hotmail.com', MD5 ('fd8886#'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha)
values ('Alberto Gonçalves', '23149549074', '1989-01-20', 'alberto@gmail.com',  MD5('fdhk88%'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha)
values ('Henrique Joji', '44446549078', '1997-03-13', 'joji2@gmail.com',  MD5('aaa3#s6#'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha)
values ('Camila Oliveira', '33145649498', '1996-04-24', 'cami2@gmail.com',  MD5('ffff%46#'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha)
values ('Kelly Cristina', '23144549012', '2000-01-24', 'kelly@hotmail.com',  MD5('abcks6#'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha)
values ('Raphael Milani', '14445549076', '1999-02-27', 'raphami@gmail.com',  MD5('hsgsg6#'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha)
values ('Maria de Lourdes', '13349554398', '1998-07-14', 'marialo@gmail.com',  MD5('fdddd5'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha)
values ('Claudia Soyombo', '65546549093', '2001-04-28', 'claudia@gmail.com', MD5 ('5647#2@'));

insert into cliente  (nome_cliente, cpf, data_nasc, email, senha)
values ('Theo Thomas Mateus Figueiredo', '47006132622', '1941-05-01', 'theothomasmateusfigueiredo-98@campanati.com.br',  MD5('j$PM*uQq5'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha)
values ('Marly Vidal Mota', '61594048061', '1945-08-25', 'marly55@gmail.com',  MD5('wuFkeb@qR'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha)
values ('Ryan Pires Temperini', '14963209055', '1961-03-02', 'rp55@gmail.com',  MD5('dJXgTnE#r'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha)
values ('Edna Dias Candido', '15830423006', '1981-05-05', 'ednaadias@gmail.com',  MD5('$ZwWfEtnw'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha)
values ('Emanoel Dores Mozer', '46555804025', '1962-08-09', 'emanoeldores6858@bol.com.br',  MD5('fs&ZFby$^'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha)
values ('Débora Barcelos Paiva', '24677517088', '1981-02-23', 'debspaiva@terra.com.br',  MD5('fjABB@F^!'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha)
values ('Alex Passos Melo', '98032008012', '1961-08-03', 'alexmelo@gmail.com', MD5 ('^5n#ZECC&'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha)
values ('Emmanuel Esteves Prucho', '23255575028', '1931-01-15', 'emep55@hotmail.com', MD5 ('MeE6FcqB@'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha)
values ('Ricardo Juan Souza', '28950624044', '1948-09-01', 'ricadinho@gmail.com',  MD5('#!k2#Ywp6'));

insert into cliente (nome_cliente, cpf, data_nasc, email, senha)
values ('Bernardo Martin Gomes', '95220689347', '1992-01-01', 'bernadmg@hotmail.com',  MD5('gkxEjEgV&'));

insert into cliente (nome_cliente,cpf,data_nasc,email,senha)
values ('Osvaldo Carvalho Melo','61030384053', '1970-12-01','osvaldoc@gmail.com',MD5('valdoMelo1'));

insert into cliente (nome_cliente,cpf,data_nasc,email,senha)
values ('Nathalia Silva Costa da Silva','91619247097', '1982-01-02','natS@gmail.com',MD5('NatSilCo821'));

insert into cliente (nome_cliente,cpf,data_nasc,email,senha)
values ('Matilde Santos Cunha','70564247081', '1947-09-23','MatildeSantosCunha@gmail.com',MD5('aira5AhGhohS'));

insert into cliente (nome_cliente,cpf,data_nasc,email,senha)
values ('Matheus Cunha Pereira','81235972151', '1980-05-15','cunhamaths@hotmail.com',MD5('Cho1oole1v'));

insert into cliente (nome_cliente,cpf,data_nasc,email,senha)
values ('Eduarda Ferreira Lima','66810572090', '1989-09-21','dudalima45@gmail.com',MD5('nFICercLEgan'));

insert into cliente (nome_cliente,cpf,data_nasc,email,senha)
values ('Levi João Felipe Melo da Cunha','85766346000', '1992-03-22','ljfmcunha@gmail.com', MD5('MEnGAZEintIc'));

insert into cliente (nome_cliente,cpf,data_nasc,email,senha)
values ('Ivo Arouca Parente','09681826078', '1960-10-25','ivo@gmail.com', MD5('AIsHALYPoeSM'));

insert into cliente (nome_cliente,cpf,data_nasc,email,senha)
values ('Fernanda Damasceno Torres','62777859078', '1975-05-08','torresnanda67@gmail.com', MD5('ToUrKBorYsEo'));

insert into cliente (nome_cliente,cpf,data_nasc,email,senha)
values ('Danilo Almeida Lima','13421155038', '1997-02-02','danAlmeida@outlook.com', MD5('AmblERpHYsto'));

insert into cliente (nome_cliente,cpf,data_nasc,email,senha)
values ('Renato Schneider Sanches','70564357081', '1947-09-3','renato@gmail.com', MD5('aira5AhGhohS'));