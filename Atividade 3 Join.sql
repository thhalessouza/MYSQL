create database db_farmacia_do_bem;

use db_farmacia_do_bem; 

create table tb_categoria(
id bigint auto_increment,
medicamentos varchar(255) not null, 
quantidade int not null,
descricao varchar(255) not null,
primary key (id)
);

insert into tb_categoria(medicamentos, quantidade, descricao) values ("Antigripal", 10,"Gripes e Resfriados");
insert into tb_categoria(medicamentos, quantidade, descricao) values ("Antitermico", 20, "Dor e Febre");
insert into tb_categoria(medicamentos, quantidade, descricao) values ("Antialergico", 15, "Alergia");
insert into tb_categoria(medicamentos, quantidade, descricao) values ("Antihipertensivo", 30, "Hipertensão");
insert into tb_categoria(medicamentos, quantidade, descricao ) values ("Antimicotico", 15, "Micoses");

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null, 
lote int,
dtvalidade date,
preco decimal (6,2),
marca varchar(255) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos (nome, lote, dtvalidade, preco, marca, categoria_id) values ("Dipirona", 2565, '2021-12-03', 3.00, "EMS", 2);
insert into tb_produtos (nome, lote, dtvalidade, preco, marca, categoria_id) values ("Paracetamol", 6355, '2023-01-22', 3.50, "Medley", 2);
insert into tb_produtos (nome, lote, dtvalidade, preco, marca, categoria_id) values ("Cimegripe", 26555, '2022-02-15', 10.00, "Cimed", 1);
insert into tb_produtos (nome, lote, dtvalidade, preco, marca, categoria_id) values ("Loratadina", 2166, '2024-03-01', 12.00, "Neo Quimica", 3);
insert into tb_produtos (nome, lote, dtvalidade, preco, marca, categoria_id) values ("Benicar", 12488, '2023-03-11', 55.00, "Daichii", 4);
insert into tb_produtos (nome, lote, dtvalidade, preco, marca, categoria_id) values ("Allegra", 3012, '2025-01-26', 45.00, "Sanofi", 3);
insert into tb_produtos (nome, lote, dtvalidade, preco, marca, categoria_id) values ("Cetoconazol", 66320, '2023-01-03', 25.00, "Neo Quimica", 5);
insert into tb_produtos (nome, lote, dtvalidade, preco, marca, categoria_id) values ("Venzer", 2659, '2022-10-05', 60.00, "Libbs", 4);

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3.00 and 60.00;

select * from tb_produtos where nome Like "B%";

select * from tb_produtos inner join tb_categoria
on tb_produtos.categoria_id = tb_categoria.id;

select tb_produtos.nome, tb_categoria.descricao from tb_produtos inner join tb_categoria
on tb_produtos.categoria_id = tb_categoria.id
where tb_categoria.id = 1

