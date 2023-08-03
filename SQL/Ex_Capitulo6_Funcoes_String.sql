/* Exerc�cios Cap.6 - Fun��es String */

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
VALUES (1, 'Amanda Silva', '1992-09-25', 'Jundia�'),
	   (2, 'Diogo Cunha', '2000-04-21', 'Campinas'),
	   (3, 'Daniel Cunha', '1998-01-29', 'Campinas'),
	   (4, 'Jo�o Vitor de Castro', '1987-06-15', 'Itupeva'),
	   (5, 'Jo�o Roberto', '1990-10-20', 'Sorocaba'),
	   (6, 'Guilherme Adriano', '1976-07-24', 'Campinas'),
	   (7, 'Marcela Tatho', '1980-03-24', 'Niter�i'),
	   (8, 'Daniel Lu�s', '2001-12-24', 'Recife'),
	   (9, 'Carlos D�as', '1995-08-02', 'Pernambuco'),
	   (10, 'Ana Cunha', '1981-11-03', 'Acre')

/*Exerc�cio 1*/
SELECT UPPER(Nome) FROM Funcionario4

/*Exerc�cio 2*/
SELECT DISTINCT DATENAME(MONTH,Data_Nascimento),LEN(DATENAME(MONTH,Data_Nascimento)) FROM Funcionario4

/*Exerc�cio 3*/
SELECT REPLACE (Nome, ' ', '-') FROM Funcionario4

/*Exerc�cio 4*/
SELECT RIGHT(Nome, 3) FROM Funcionario4

/*Exerc�cio 5*/
SELECT SQRT(LEN(Nome)) FROM Funcionario4

/*Exerc�cio 6*/
SELECT DISTINCT SUBSTRING(Cidade, 3, 5) FROM Funcionario4

/*Exerc�cio 7*/
SELECT REPLACE(Nome, ' ', '') FROM Funcionario4

/*Exerc�cio 8*/
SELECT ASCII(ID_Funcionario) FROM Funcionario4 
WHERE Cidade= 'Campinas'

/*Exerc�cio 9*/
SELECT ASCII(Nome) FROM Funcionario4
WHERE DAY(Data_Nascimento)> 20

/*Exerc�cio 10*/
SELECT LTRIM(RIGHT(Cidade, 4)) FROM Funcionario4

/*Exerc�cio 11*/
SELECT LTRIM(RIGHT(Cidade, 6)) FROM Funcionario4

/*Exerc�cio 12*/
SELECT DISTINCT LOWER(Cidade) FROM Funcionario4

DROP TABLE Funcionario4

USE master
DROP DATABASE BD_Recursos_Humanos
