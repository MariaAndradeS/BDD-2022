create database ListaTres;

drop database ListaTres;

use ListaTres;

create table Usuario (
    ID int NOT NULL,
    nome varchar(100) NOT NULL,
    email varchar (100) NOT NULL,
    senha varchar(100) NOT NULL,
    primary key (ID)
);

drop table Tarefa;

create table Tarefa (
    ID int NOT NULL,
	ID_usuario int NOT NULL,
    descricao varchar(100) NOT NULL,
    Realizado boolean NOT NULL,
    primary key (ID),
    foreign key (ID_usuario) references Usuario (ID)
);

insert into Usuario values (1, 'João da Silva', 'joãodasilva@gmail.com', 'Amomeugato');
insert into Usuario values (2, 'Cesar Cohen', 'angelofthenight@gmail.com', 'Maintwitch');
insert into Usuario values (3, 'Thiago Fritz', 'éothigao@gmail,com', 'AmoALiz');

insert into Tarefa values (1, 2, 'Comprar carne moída', true);
insert into Tarefa values (2, 3, 'Limpar a pia', false);
insert into Tarefa values (3, 1, 'Fazer lição de Lógica 2', true);

Select * from Usuario;
Select * from Tarefa


	