create database db_RHempresa;

use db_RHempresa;

create table tb_funcionariosdaempresa(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
matricula int,
horario varchar(255) not null,
salario double,
primary key (id)
);

insert into tb_funcionariosdaempresa(nome, cargo, matricula, horario, salario) values ("Carla", "Atendente de Loja", 1542, "Manhã", 1.100);
insert into tb_funcionariosdaempresa(nome, cargo, matricula, horario, salario) values ("Daniel", "Atendente de Balcão", 1652, "Manhã", 1.500);
insert into tb_funcionariosdaempresa(nome, cargo, matricula, horario, salario) values ("Bruno", "Gerente", 3255, "Manhã", 3.500);
insert into tb_funcionariosdaempresa(nome, cargo, matricula, horario, salario) values ("Nathalia", "Farmacêutica", 4301, "Manhã", 4.100);

select * from tb_funcionariosdaempresa;

select * from tb_funcionariosdaempresa where salario > 2.000;

select * from tb_funcionariosdaempresa where salario < 2.000;

alter table tb_funcionariosdaempresa modify salario decimal(8,3);

update tb_funcionariosdaempresa set nome = "João" where id = 3;
