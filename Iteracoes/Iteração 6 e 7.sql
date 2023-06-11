create database AulaQuatro;

drop database AulaQuatro;
drop table Tarefa;

use AulaQuatro;

create table Usuario (
    codigo int NOT NULL,
    nome varchar(100) NOT NULL,
    email varchar (100) NOT NULL,
    senha char(60) NOT NULL,
    codigo_verificacao char(36) NOT NULL,
    verificado boolean,
    primary key (codigo)
);

create table Lista (
	codigo INT NOT NULL, 
	nome varchar (100) NOT NULL, 
    cor char(6) NOT NULL,
    codigo_usuario INT NOT NULL,
    primary key (codigo),
    foreign key (codigo_usuario) references Usuario (codigo)
);

create table Tarefa (
    codigo int NOT NULL,
	codigo_lista int NOT NULL,
    Descricao varchar(100) NOT NULL,
    Realizado boolean NOT NULL,
    primary key (codigo),
    foreign key (codigo_lista) references Lista (codigo)
);

create table Alteracao_Senha (
	codigo int NOT NULL,
	codigo_usuario int NOT NULL,
    codigo_verificacao char(36) NOT NULL,
    gerada_em DATETIME NOT NULL,
    utilizada boolean NOT NULL,
    primary key (codigo),
    foreign key (codigo_usuario) references Usuario (codigo)
);

insert into Usuario values (1, 'Joui Jouki', 'jouijojojouki@gmail.com', '$2a$12$DqZknvmrEoDVpR19f8xjYehdae0QBn5fD48sp5jyHC38KOUmRV4/q', '728eece8-fec0-4dc6-aecf-e8dd3c194a89', false);
insert into Usuario values (2, 'Cesar Cohen', 'angelofthenight@gmail.com', '$2a$12$bJOYMEtp8C7TrLRlfNWdhuzBxnibs1/2HR1De.TUmOuoBTl0g04Ve', '12248bc8-a356-42ba-92ed-018b886a2b98', false);
insert into Usuario values (3, 'Thiago Fritz', 'éothigao@gmail,com', '$2a$12$g/bLxY0.PdPWMF75TDZd9euZAEVUmBCVSgYBituJEcFldG/F6lSpS', '6bae17f8-6b4a-4225-9eb8-a6d2a2f92938', false);

insert into Lista values (1, 'Obrigações do lar', 'fc0384', 1);
insert into Lista values (2, 'Vida saudável', '03fcd3', 1);
insert into Lista values (3, 'Escola', '8b1e9e', 1);

insert into Lista values (4, 'League of Legends', '451d1d', 2);
insert into Lista values (5, 'Minecraft', '659cb8', 2);
insert into Lista values (6, 'Cuphead', 'fa2573', 2);

insert into Lista values (7, 'Missão dois', '7a8f60', 3);
insert into Lista values (8, 'Santo berço', 'cf8b80', 3);
insert into Lista values (9, 'Arnaldo Fritz', '3b0a26', 3);

insert into Tarefa values (1, 1, 'Esvaziar o sotão', true);
insert into Tarefa values (2, 1, 'Varrer a casa', true);
insert into Tarefa values (3, 1, 'Arrumar o quarto', true);

insert into Tarefa values (4, 2, 'Ir ao médico', false);
insert into Tarefa values (5, 2, 'Melhorar a alimentação', false);
insert into Tarefa values (6, 2, 'Meditar', true);

insert into Tarefa values (7, 3, 'Corrigir as provas', true);
insert into Tarefa values (8, 3, 'Falar com o diretor', false);
insert into Tarefa values (9, 3, 'Ajudar os alunos de Judô', true);

insert into Tarefa values (10, 4, 'Subir de elo', true);
insert into Tarefa values (11, 4, 'Pegar M7 de Soraka', true);
insert into Tarefa values (12, 4, 'Aprender a Jungle', true);

insert into Tarefa values (13, 5, 'Decorar a fazenda', false);
insert into Tarefa values (14, 5, 'Minerar', false);
insert into Tarefa values (15, 5, 'Construir casas', true);

insert into Tarefa values (16, 6, 'Passar o level da sereia', true);
insert into Tarefa values (17, 6, 'Passar o level do dado', false);
insert into Tarefa values (18, 6, 'Passar o level da planta', true);

insert into Tarefa values (19, 7, 'Interrogar', true);
insert into Tarefa values (20, 7, 'Falar com a dona do bar', true);
insert into Tarefa values (21, 7, 'Achar a equipe Kelvin', true);

insert into Tarefa values (22, 8, 'Libertar os mananciais', false);
insert into Tarefa values (23, 8, 'Destruir Santo Berço', false);
insert into Tarefa values (24, 8, 'Matar o deus da morte', true);

insert into Tarefa values (25, 9, 'Completar o grimório', true);
insert into Tarefa values (26, 9, 'Ir ao coliseu', false);
insert into Tarefa values (27, 9, 'Investigar a morte', true);

insert into Alteracao_Senha values (1, 3, '6bae17f8-6b4a-4225-9eb8-a6d2a2f92938', '2022-04-04 15:16:39', true);

SELECT * FROM Lista;
SELECT * FROM Tarefa
