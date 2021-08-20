create database db_generation_game_online ;
use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
descricao varchar(255) not null, 
skill varchar(255) not null,
hp int,
primary key (id)
);

insert into tb_classe (descricao, skill, hp) values ("Detetive", "Detectar Inimigos num raio de 30m", 15);
insert into tb_classe (descricao, skill, hp) values ("Mercenário", "Ataques Silenciosos", 30);
insert into tb_classe (descricao, skill, hp) values ("Agente Especial", "Tiros de Precisão", 20);
insert into tb_classe (descricao, skill, hp) values ("Hacker", "Identifica inimigos ao atirar", 25);
insert into tb_classe (descricao, skill, hp) values ("Ex-policial", "Perseguir e eliminar", 10);

create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
defesa int not null,
ataque int not null,
arma varchar(255) not null,
custo decimal (6,2) not null,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe (id)
);

insert into tb_personagens(nome, defesa, ataque, arma, custo, classe_id) values ("Cloe", 2500, 2000, "M21", 200.00, 1);
insert into tb_personagens(nome, defesa, ataque, arma, custo, classe_id) values ("Walken", 3000, 3200, "SKS", 250.00, 4);
insert into tb_personagens(nome, defesa, ataque, arma, custo, classe_id) values ("Jota", 2600, 2700, "AWM", 210.00, 5);
insert into tb_personagens(nome, defesa, ataque, arma, custo, classe_id) values ("Jolie", 3500, 3600, "VSS", 300.00, 2);
insert into tb_personagens(nome, defesa, ataque, arma, custo, classe_id) values ("Jans", 2000, 2000, "CG15", 210.00, 3);
insert into tb_personagens(nome, defesa, ataque, arma, custo, classe_id) values ("Kent", 2300, 3000, "Kar98", 150.00, 4);
insert into tb_personagens(nome, defesa, ataque, arma, custo, classe_id) values ("Heu", 4000, 4100, "SKS", 200.00, 1);

select * from tb_personagens;

select * from tb_personagens where ataque > 2000; 

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome Like "C%";

select * from tb_personagens inner join tb_classe
on tb_personagens.classe_id = tb_classe.id;

select tb_personagens.nome, tb_classe.descricao from tb_personagens inner join tb_classe
on tb_personagens.classe_id = tb_classe.id
where tb_classe.id = 4;


