create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment, 
descricao varchar(255) not null,
tamanho varchar(255) not null,
cortesia varchar(255) not null,
primary key (id)
);

insert into tb_categoria (descricao, tamanho, cortesia) values ("Pizza Família", "Grande", "Refrigerante 2L");
insert into tb_categoria (descricao, tamanho, cortesia) values ("Pizza Brotão", "Média", "Refrigerante 1L");
insert into tb_categoria (descricao, tamanho, cortesia) values ("Pizza da Casa", "Extra Grande", "Refrigerante 2L");
insert into tb_categoria (descricao, tamanho, cortesia) values ("Pizza Brotinho", "Pequena", "Refrigerante 600ml");
insert into tb_categoria (descricao, tamanho, cortesia) values ("Pizza Namorados", "Média", "Refrigerante 1L");

create table tb_produtos(
id bigint auto_increment,
nomepizza varchar(255) not null, 
ingredientes varchar(255) not null,
sabor varchar(255) not null,
borda varchar(255) not null, 
preco decimal(6,2) not null, 
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos (nomepizza, ingredientes, sabor, borda, preco, categoria_id) values ("Mussarela", "Queijo Mussarela", "Salgado", "Recheada com Catupiry", 25.00, 1); 
insert into tb_produtos (nomepizza, ingredientes, sabor, borda, preco, categoria_id) values ("Calabresa", "Calabresa com Cebola", "Salgado", "Recheada com Catupiry", 22.00, 2); 
insert into tb_produtos (nomepizza, ingredientes, sabor, borda, preco, categoria_id) values ("Atum", "Atum com Queijo", "Salgado", "Recheada com Cheddar", 28.00, 1); 
insert into tb_produtos (nomepizza, ingredientes, sabor, borda, preco, categoria_id) values ("Chocolate", "Chocolate ao Leite", "Doce", "Leite Condensado", 30.00, 5); 
insert into tb_produtos (nomepizza, ingredientes, sabor, borda, preco, categoria_id) values ("Pepperoni", "Pepperoni com Queijo", "Salgado", "Recheada com Catupiry", 35.00, 3); 
insert into tb_produtos (nomepizza, ingredientes, sabor, borda, preco, categoria_id) values ("Mussarela", "Queijo Mussarela", "Salgado", "Recheada com Catupiry", 18.00, 4); 
insert into tb_produtos (nomepizza, ingredientes, sabor, borda, preco, categoria_id) values ("Hot Dog", "Salsicha com purê", "Salgado", "Recheada com Cheddar", 31.00, 3); 
insert into tb_produtos (nomepizza, ingredientes, sabor, borda, preco, categoria_id) values ("M&ms", "Chocolate ao Leite com Confetes", "Doce", "Leite Condensado", 46.00, 5); 

select * from tb_produtos;

select * from tb_produtos where preco > 45.00; 

select * from tb_produtos where preco between 29.00 and 60.00;

select * from tb_produtos where nomepizza Like "C%";

select * from tb_produtos inner join tb_categoria
on tb_produtos.categoria_id = tb_categoria.id;

select tb_produtos.sabor, tb_categoria.descricao from tb_produtos inner join tb_categoria
on tb_produtos.categoria_id = tb_categoria.id
where tb_categoria.id = 2;
