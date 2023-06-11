create table Medico (
	codigo INT NOT NULL,
	nome varchar(100) NOT NULL,
	especialidade varchar(100) NOT NULL,
	primary key (codigo)
);

create table Paciente (
	codigo INT NOT NULL,
	nome varchar(100) NOT NULL,
	cpf int NOT NULL,
	data_de_nascimento DATE NOT NULL,
	primary key (codigo)
);

create table Consulta (
	codigo INT NOT NULL,
	codigo_medico INT NOT NULL,
	codigo_paciente INT NOT NULL,
	data_hora_inicio DATETIME NOT NULL,
	data_hora_fim DATETIME NOT NULL,
	primary key (codigo),
	foreign key (codigo_medico) references Medico (codigo)
);

insert into Medico values (1, 'Arnaldo Fritz', 'Psiquiatra');
insert into Paciente values (3, 'Joui Jouki', '5429789683', '1990-02-27');
insert into Consulta values (2, 1, 3, '2022-04-04 15:30:00', '2022-04-04 16:30:00');

SELECT * FROM Consulta;
SELECT * FROM Medico;
SELECT * FROM Paciente