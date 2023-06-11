create database AulaTres;

drop database AulaTres;

use AulaTres;

create table Usuario (
    codigo int NOT NULL,
    nome varchar(100) NOT NULL,
    email varchar (100) NOT NULL,
    senha char(60) NOT NULL,
    codigo_verificacao char(36) NOT NULL,
    verificado boolean,
    primary key (codigo)
);

create table Tarefa (
    codigo int NOT NULL,
	codigo_usuario int NOT NULL,
    Descricao varchar(100) NOT NULL,
    Realizado boolean NOT NULL,
    primary key (codigo),
    foreign key (codigo_usuario) references Usuario (codigo)
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

insert into Tarefa values (1, 1, 'Meditar', true);
insert into Tarefa values (2, 1, 'Ajudar um asilo', true);

insert into Tarefa values (3, 2, 'Ir ao médico', false);
insert into Tarefa values (4, 2, 'Subir de rank no League of Legends', false);

insert into Tarefa values (5, 3, 'Visitar a Liz', true);
insert into Tarefa values (6, 3, 'Fazer compras', false);

insert into Alteracao_Senha values (1, 3, '6bae17f8-6b4a-4225-9eb8-a6d2a2f92938', '2022-04-04 15:16:39', true);

Select * from Usuario;
Select * from Tarefa;
Select * from Alteracao_Senha


