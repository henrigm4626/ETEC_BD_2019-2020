/* Exercícios Cap.6 - Funções String */

CREATE DATABASE BD_Recursos_Humanos
USE BD_Recursos_Humanos

CREATE TABLE Funcionario4(
	ID_Funcionario INT, 
	Nome     VARCHAR(30),
	Data_Nascimento VARCHAR (15),
	Cidade   VARCHAR (20),
	PRIMARY KEY (ID_Funcionario)
)

SELECT * FROM Funcionario4

INSERT INTO Funcionario4 (ID_Funcionario, Nome, Data_Nascimento, Cidade)
VALUES (1, 'Amanda Silva', '1992-09-25', 'Jundiaí'),
	   (2, 'Diogo Cunha', '2000-04-21', 'Campinas'),
	   (3, 'Daniel Cunha', '1998-01-29', 'Campinas'),
	   (4, 'João Vitor de Castro', '1987-06-15', 'Itupeva'),
	   (5, 'João Roberto', '1990-10-20', 'Sorocaba'),
	   (6, 'Guilherme Adriano', '1976-07-24', 'Campinas'),
	   (7, 'Marcela Tatho', '1980-03-24', 'Niterói'),
	   (8, 'Daniel Luís', '2001-12-24', 'Recife'),
	   (9, 'Carlos Días', '1995-08-02', 'Pernambuco'),
	   (10, 'Ana Cunha', '1981-11-03', 'Acre')

/*Exercício 1*/
SELECT UPPER(Nome) FROM Funcionario4

/*Exercício 2*/
SELECT DISTINCT DATENAME(MONTH,Data_Nascimento),LEN(DATENAME(MONTH,Data_Nascimento)) FROM Funcionario4

/*Exercício 3*/
SELECT REPLACE (Nome, ' ', '-') FROM Funcionario4

/*Exercício 4*/
SELECT RIGHT(Nome, 3) FROM Funcionario4

/*Exercício 5*/
SELECT SQRT(LEN(Nome)) FROM Funcionario4

/*Exercício 6*/
SELECT DISTINCT SUBSTRING(Cidade, 3, 5) FROM Funcionario4

/*Exercício 7*/
SELECT REPLACE(Nome, ' ', '') FROM Funcionario4

/*Exercício 8*/
SELECT ASCII(ID_Funcionario) FROM Funcionario4 
WHERE Cidade= 'Campinas'

/*Exercício 9*/
SELECT ASCII(Nome) FROM Funcionario4
WHERE DAY(Data_Nascimento)> 20

/*Exercício 10*/
SELECT LTRIM(RIGHT(Cidade, 4)) FROM Funcionario4

/*Exercício 11*/
SELECT LTRIM(RIGHT(Cidade, 6)) FROM Funcionario4

/*Exercício 12*/
SELECT DISTINCT LOWER(Cidade) FROM Funcionario4

DROP TABLE Funcionario4

USE master
DROP DATABASE BD_Recursos_Humanos
