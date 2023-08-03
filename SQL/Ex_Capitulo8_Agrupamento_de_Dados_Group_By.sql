/* Exerc�cios Cap.8 - Agrupamento de Dados */

CREATE DATABASE BD_Recursos_Humanos
USE BD_Recursos_Humanos

CREATE TABLE Funcionario6(
	ID_Funcionario INT, 
	Nome VARCHAR(30),
	Data_Nascimento VARCHAR (15),
	Cargo    CHAR(2),
	Cidade   VARCHAR (20),
	Estado   CHAR (2),
	Salario  MONEY,
	Email    VARCHAR (30),
	Endereco VARCHAR (40),
	Ativo INT,
	PRIMARY KEY (ID_Funcionario)
)

SELECT * FROM Funcionario6

INSERT INTO Funcionario6 (ID_Funcionario, Nome, Data_Nascimento, Cargo, Cidade, Estado, Salario, Email, Endereco, Ativo)
VALUES (1, 'Ana Silva', '1992-09-25', 'TI',  'Sorocaba', 'SP' , '1150', 'umemail1@yahoo.com.br', 'Av. Lapa, 121', '0'),
	   (2, 'Diogo Cunha', '2000-04-21', 'RH', 'Campinas', 'SP', '3100', 'umemail2@terra.com.br', 'Av. S�o Paulo, 99', '1'),
	   (3, 'Daniel Cunha', '1998-01-29', 'TI', 'Campinas', 'SP' , '2600', 'umemail3@yahoo.com.br', 'Av. S�o Jo�o, 139', '0'),
	   (4, 'Jo�o Vitor de Castro', '1987-06-15', 'RH', 'Valinhos', 'SP' , '5000', 'umemail4@gmail.com', 'Rua Salavador, 881', '1'),
	   (5, 'Jo�o Roberto', '1990-10-20', 'TI', 'S�o Paulo', 'SP' , '4700', 'umemail5@uol.com.br', 'Av. S�o Paulo, 1001', '0'),
	   (6, 'Guilherme Adriano', '1976-07-24', 'RH', 'Campinas', 'SP' , '11200', 'umemail6@yahoo.com.br', 'Av. S�o Paulo, 42', '1'),
	   (7, 'Marcela Tatho', '1980-03-24', 'TI', 'S�o Paulo', 'SP' , '20000', 'umemail7@yahoo.com.br', 'Rua Bras�lia, 300', '0'),
	   (8, 'Daniel Lu�s', '2001-12-24', 'RH', 'Valinhos', 'SP' , '8975', 'umemail8@gmail.com', 'Av. Dom Jo�o, 427', '1'),
	   (9, 'Carlos D�as', '1995-08-02', 'TI', 'S�o Paulo', 'SP' , '6875', 'umemail9@yahoo.com.br', 'Av. Argentina, 1700', '0'),
	   (10, 'Ana Cunha', '1981-11-03', 'RH', 'Valinhos', 'SP' , '13300', 'umemail10@uol.com.br', 'Av. Sorocaba, 25', '1')

/*Exerc�cio 1*/
SELECT Cargo, COUNT(*) AS quantidade FROM Funcionario6 GROUP BY Cargo ORDER BY quantidade

/*Exerc�cio 2*/
SELECT Cargo, COUNT(*) FROM Funcionario6 WHERE not Cargo is NULL GROUP BY Cargo

/*Exerc�cio 3*/
SELECT Cargo, AVG(Salario) AS "Media_Salarios_Cargo" FROM Funcionario6 GROUP BY Cargo

/*Exerc�cio 4*/
SELECT Cargo, SUM(Salario) FROM Funcionario6 GROUP BY Cargo HAVING SUM(Salario)> 3000 

/*Exerc�cio 5*/
SELECT Cargo, SUM(Salario) FROM Funcionario6 WHERE Estado = 'SP' GROUP BY Cargo

/*Exerc�cio 6*/
UPDATE Funcionario6 SET Ativo = 1 WHERE Cidade = 'Sorocaba' or Cidade = 'S�o Paulo'

/*Exerc�cio 7*/
UPDATE Funcionario6 SET Ativo = 0 WHERE not Cidade = 'Sorocaba' or Cidade = 'S�o Paulo'

/*Exerc�cio 8*/
SELECT Ativo, COUNT(*) FROM Funcionario6 GROUP BY Ativo

/*Exerc�cio 9*/
SELECT Cidade, SUM(Salario) FROM Funcionario6 GROUP BY Cidade

/*Exerc�cio 10*/
SELECT Cidade, AVG(Salario) FROM Funcionario6 GROUP BY Cidade HAVING NOT AVG(Salario) is NULL

/*Exerc�cio 11*/
SELECT Cargo, SUM(Salario), AVG(Salario) FROM Funcionario6 GROUP BY Cargo HAVING SUM(Salario) < 5000

/*Exerc�cio 12*/
SELECT Cidade, Cargo, SUM(Salario), AVG(Salario) FROM Funcionario6 GROUP BY Cidade, Cargo

DROP TABLE Funcionario6

USE master
DROP DATABASE BD_Recursos_Humanos