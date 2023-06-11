create database Lista;

use Lista;

drop table Tarefas;

create table Tarefas(
	ID int NOT NULL,
    descrição varchar(100) NOT NULL,
    primary key (ID)
    );
    
insert into Tarefas (ID, descrição)
values (1, 'Comprar carne moída');

insert into Tarefas (ID, descrição)
values (2, 'Limpar pia');

insert into Tarefas (ID, descrição)
values (3, 'Fazer lição de Lógica 2');

SELECT * FROM Tarefas;