/* Exerc�cios Cap.7 - Fun��es de Agreaga��o */

CREATE DATABASE BD_Recursos_Humanos
USE BD_Recursos_Humanos

CREATE TABLE Funcionario5(
	ID_Funcionario INT, 
	Nome VARCHAR(30),
	Data_Nascimento VARCHAR (15),
	Cidade  VARCHAR (20),
	Estado  CHAR (2),
	Salario MONEY,
	Email   VARCHAR (30),
	Endereco VARCHAR (40),
	PRIMARY KEY (ID_Funcionario)
)

SELECT * FROM Funcionario5

INSERT INTO Funcionario5 (ID_Funcionario, Nome, Data_Nascimento, Cidade, Estado, Salario, Email, Endereco)
VALUES (1, 'Ana Silva', '1992-09-25', 'Sorocaba', 'SP' , '1150', 'umemail1@yahoo.com.br', 'Av. Lapa, 121'),
	   (2, 'Diogo Cunha', '2000-04-21', 'Campinas', 'SP', '3100', 'umemail2@terra.com.br', 'Av. S�o Paulo, 99'),
	   (3, 'Daniel Cunha', '1998-01-29', 'Campinas', 'SP' , '2600', 'umemail3@yahoo.com.br', 'Av. S�o Jo�o, 139'),
	   (4, 'Jo�o Vitor de Castro', '1987-06-15', 'Valinhos', 'SP' , '5000', 'umemail4@gmail.com', 'Rua Salavador, 881'),
	   (5, 'Jo�o Roberto', '1990-10-20', 'S�o Paulo', 'SP' , '4700', 'umemail5@uol.com.br', 'Av. S�o Paulo, 1001'),
	   (6, 'Guilherme Adriano', '1976-07-24', 'Campinas', 'SP' , '11200', 'umemail6@yahoo.com.br', 'Av. S�o Paulo, 42'),
	   (7, 'Marcela Tatho', '1980-03-24', 'S�o Paulo', 'SP' , '20000', 'umemail7@yahoo.com.br', 'Rua Bras�lia, 300'),
	   (8, 'Daniel Lu�s', '2001-12-24', 'Valinhos', 'SP' , '8975', 'umemail8@gmail.com', 'Av. Dom Jo�o, 427'),
	   (9, 'Carlos D�as', '1995-08-02', 'S�o Paulo', 'SP' , '6875', 'umemail9@yahoo.com.br', 'Av. Argentina, 1700'),
	   (10, 'Ana Cunha', '1981-11-03', 'Valinhos', 'SP' , '13300', 'umemail10@uol.com.br', 'Av. Sorocaba, 25')   

/*Exerc�cio 1*/
SELECT MAX(Salario), MIN(Salario) FROM Funcionario5 WHERE Estado = 'SP'

/*Exerc�cio 2*/
SELECT SUM(Salario) FROM Funcionario5 WHERE Nome LIKE '%Cunha'

/*Exerc�cio 3*/
SELECT AVG(Salario) FROM Funcionario5 WHERE Email LIKE '%yahoo%'

/*Exerc�cio 4*/
SELECT COUNT(*) FROM Funcionario5 WHERE Email NOT LIKE '%.br'

/*Exerc�cio 5*/
SELECT MIN(Data_Nascimento) FROM Funcionario5

/*Exerc�cio 6*/
SELECT MAX(Data_Nascimento) AS "Maior_Nascimento" FROM Funcionario5

/*Exerc�cio 7*/
SELECT COUNT(*) AS "Quantidade_de_Valinhos" FROM Funcionario5 WHERE Cidade = 'Valinhos'

/*Exerc�cio 8*/
SELECT SUM(Salario) FROM Funcionario5 WHERE Cidade = 'Campinas'

/*Exerc�cio 9*/
SELECT AVG(Salario) FROM Funcionario5 WHERE Cidade = 'S�o Paulo'

/*Exerc�cio 10*/
SELECT SUM(Salario) FROM Funcionario5 WHERE Nome LIKE 'Ana%'

/*Exerc�cio 11*/
SELECT COUNT(*) FROM Funcionario5 WHERE Nome LIKE '%Lu�s%'

/*Exerc�cio 12*/
SELECT MIN(Salario), MAX(Salario) FROM Funcionario5 WHERE Endereco LIKE 'Av. S�o Paulo%'

DROP TABLE Funcionario5

USE master
DROP DATABASE BD_Recursos_Humanos