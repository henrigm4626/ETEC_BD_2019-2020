/* Exercícios - WHERE, JOIN e subconsultas */

CREATE DATABASE Universidade
GO

USE Universidade
GO

CREATE TABLE Alunos (
	MAT      INT PRIMARY KEY,
	nome     VARCHAR (70),
	endereco VARCHAR (100),
	cidade   VARCHAR (20)
)

CREATE TABLE Disciplinas (
	COD_DISC  VARCHAR (5) PRIMARY KEY,
	nome_disc VARCHAR(60),
	carga_hor INT
)

CREATE TABLE Professores (
	COD_PROF INT PRIMARY KEY,
	nome VARCHAR(70),
	endereco VARCHAR(100),
	cidade VARCHAR(20)
)

CREATE TABLE Turma (
	COD_DISC VARCHAR (5),
	COD_TURMA VARCHAR(5),
	COD_PROF INT,
	ANO INT,
	horario VARCHAR(10),
	PRIMARY KEY (COD_DISC, COD_TURMA, COD_PROF, ANO),
	FOREIGN KEY (COD_DISC) REFERENCES Disciplinas (COD_DISC),
	FOREIGN KEY (COD_PROF) REFERENCES Professores (COD_PROF)
)

CREATE TABLE Historico (
	MAT INT,
	COD_DISC  VARCHAR (5),
	COD_TURMA VARCHAR(5),
	COD_PROF INT,
	ANO  INT,
	nota INT,
	frequencia INT,
	FOREIGN KEY (MAT) REFERENCES Alunos (MAT),
	FOREIGN KEY (COD_DISC, COD_TURMA, COD_PROF, ANO) REFERENCES Turma (COD_DISC, COD_TURMA, COD_PROF, ANO)
)

INSERT INTO Alunos (MAT, nome, endereco, cidade)
VALUES (2015010101, 'JOSE DE ALENCAR', 'RUA DAS ALMAS', 'NATAL'),
	   (2015010102, 'JOÃO JOSÉ', 'AVENIDA RUY CARNEIRO', 'JOÃO PESSOA'),
	   (2015010103, 'MARIA JOAQUINA', 'RUA CARROSSEL', 'RECIFE'),
	   (2015010104, 'MARIA DAS DORES', 'RUA DAS LADEIRAS', 'FORTALEZA'),
	   (2015010105, 'JOSUÉ CLAUDINO DOS SANTOS', 'CENTRO', 'NATAL'),
	   (2015010106, 'JOSUÉLISSON CLAUDINO DOS SANTOS', 'CENTRO', 'NATAL')

INSERT INTO Disciplinas (COD_DISC, nome_disc, carga_hor)
VALUES ('BD','BANCO DE DADOS', 100),
	   ('POO','PROGRAMAÇÃO ORIENTADA A OBJETOS', 100),
	   ('PW','PROGRAMAÇÃO WEB', 60),
	   ('ENG','ENGENHARIA DE SOFTWARE', 80)

INSERT INTO Professores (COD_PROF, nome, endereco, cidade) 
VALUES (212131, 'NICKERSON FERREIRA', 'RUA MANAÍRA', 'JOÃO PESSOA'),
	   (122135, 'ADORILSON BEZERRA', 'AVENIDA SALGADO FILHO', 'NATAL'),
	   (192011, 'DIEGO OLIVEIRA', 'AVENIDA ROBERTO FREIRE', 'NATAL')

INSERT INTO Turma (COD_DISC, COD_TURMA, COD_PROF, ANO, horario)
VALUES ('BD', 1, 212131, 2015, '11H-12H'), 
	   ('BD', 2, 212131, 2015, '13H-14H'),
	   ('POO', 1, 192011, 2015, '08H-09H'),
	   ('PW', 1, 192011, 2015, '07H-08H'),
	   ('ENG', 1, 122135, 2015, '10H-11H')

INSERT INTO Historico (MAT, COD_DISC, COD_TURMA, COD_PROF, ANO, nota, frequencia)
VALUES (2015010101,'BD', 1, 212131, 2015, 2, 90), 
	   (2015010102,'BD', 2, 212131, 2015, 5, 100),
	   (2015010103,'POO', 1, 192011, 2015, 9, 80),
	   (2015010104,'PW', 1, 192011, 2015, 10, 60),
	   (2015010105,'ENG', 1, 122135, 2015, 8, 70),
	   (2015010106,'POO', 1, 192011, 2015, 7, 100)
GO

SELECT * FROM Alunos
GO

SELECT * FROM Disciplinas
GO

SELECT * FROM Professores
GO

SELECT * FROM Turma
GO

SELECT * FROM Historico

/* RESPONDA AS CONSULTAS ABAIXO UTILIZANDO DOS RECURSOS DE RELACIONAMENTO COM WHERE, JOIN E SUBCONSULTAS. */

/* 5a) Encontre a MAT dos alunos com nota em BD em 2015 menor que 5(obs: BD = código da disciplinas). */

/*WHERE*/
SELECT Alunos.MAT, Historico.nota, Historico.COD_DISC FROM Alunos, Historico WHERE Alunos.MAT = Historico.MAT AND Historico.COD_DISC = 'BD' AND Historico.nota < 5 

/*JOIN*/
SELECT Alunos.MAT, Historico.nota, Historico.COD_DISC FROM Alunos JOIN Historico ON Alunos.MAT = Historico.MAT AND Historico.COD_DISC = 'BD' AND Historico.nota < 5

/*subconsulta*/
SELECT Alunos.MAT FROM Alunos WHERE Alunos.MAT IN (SELECT Historico.MAT FROM Historico WHERE Historico.nota < 5 AND Historico.MAT = Alunos.MAT AND Historico.COD_DISC = 'BD')

/* 5b) Encontre a MAT e calcule a média das notas dos alunos na disciplina de POO em 2015. */

/*WHERE*/
SELECT AVG(Historico.nota), Alunos.MAT FROM Historico, Alunos GROUP BY Alunos.MAT, Historico.COD_DISC, Historico.ANO HAVING Historico.COD_DISC = 'POO' AND Historico.ANO = 2015

/*JOIN*/
SELECT AVG(Historico.nota), Alunos.MAT FROM Historico CROSS JOIN Alunos GROUP BY Alunos.MAT, Historico.COD_DISC, Historico.ANO HAVING Historico.COD_DISC = 'POO' AND Historico.ANO = 2015

/*subconsulta*/
SELECT AVG(Historico.nota) FROM Historico WHERE Historico.MAT IN (SELECT Alunos.MAT FROM Alunos WHERE Historico.COD_DISC = 'POO' AND Historico.ANO = 2015)

/* 5c) Encontre a MAT e calcule a média das notas dos alunos na disciplina de POO em 2015 e que esta média seja superior a 6. */

/*WHERE*/
SELECT AVG(Historico.nota), Alunos.MAT FROM Alunos, Historico GROUP BY Alunos.MAT, Historico.COD_DISC, Historico.ANO HAVING Historico.COD_DISC = 'POO' AND AVG(Historico.nota) > 6 AND Historico.ANO = 2015

/*JOIN*/
SELECT AVG(Historico.nota), Alunos.MAT FROM Historico CROSS JOIN Alunos GROUP BY Alunos.MAT, Historico.COD_DISC, Historico.ANO HAVING Historico.COD_DISC = 'POO' AND AVG(Historico.nota) > 6 AND Historico.ANO = 2015

/*subconsulta*/
SELECT AVG(Historico.nota) FROM Historico WHERE Historico.MAT IN (SELECT Alunos.MAT FROM Alunos WHERE Historico.COD_DISC = 'POO' AND Historico.ANO = 2015 AND Historico.MAT = Alunos.MAT)

/* 5d) Encontre quantos alunos não são de Natal. */
SELECT COUNT(Alunos.MAT) FROM Alunos WHERE Alunos.cidade != 'NATAL'

USE master
DROP DATABASE Universidade