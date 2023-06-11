create database ListaDois;

use ListaDois;

drop table Tarefas;

create table Tarefas(
	ID int NOT NULL,
    descrição varchar(100) NOT NULL,
    realizada boolean NOT NULL,
    primary key (ID)
    );
    
insert into Tarefas (ID, descrição, realizada)
values (1, 'Comprar carne moída', true);

insert into Tarefas (ID, descrição, realizada)
values (2, 'Limpar pia', false);

insert into Tarefas (ID, descrição, realizada)
values (3, 'Fazer lição de Lógica 2', true);

SELECT * FROM Tarefas