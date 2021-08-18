create database db_ecommerceprodutos;

use db_ecommerceprodutos;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
categoria varchar(255) not null,
cor varchar(255) not null,
tamanho varchar(255) not null,
codigo int,
quantidade int,
preco double,
vendedor varchar(255) not null,
primary key (id)
);

insert into tb_produtos(nome, categoria, cor, tamanho, codigo, quantidade, preco, vendedor) values ("Mesa 4 cadeiras", "Cozinha", "Branco", "Médio", 0021, 5, 100.00, "Lucio");
insert into tb_produtos(nome, categoria, cor, tamanho, codigo, quantidade, preco, vendedor) values ("Cama Box", "Quarto", "Preto", "Grande", 3256, 10, 500.00, "Otávio");
insert into tb_produtos(nome, categoria, cor, tamanho, codigo, quantidade, preco, vendedor) values ("Sofá", "Sala", "Marrom", "Médio", 0014, 3, 600.00, "Patricia");


select * from tb_produtos;

select * from tb_produtos where preco > 500.00;
select * from tb_produtos where preco < 500.00;


update tb_produtos set preco = 250.00 where id = 1;



