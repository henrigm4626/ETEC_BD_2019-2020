/* Exercícios Cap.3 */

CREATE DATABASE BD_Recursos_Humanos
USE BD_Recursos_Humanos

CREATE TABLE Funcionario1(
    ID_Funcionario INT,
	Nome	 VARCHAR (30),
	Endereco VARCHAR (40),
	Cidade   VARCHAR (30),
	Estado   CHAR (2),
	Email    VARCHAR (40),
	Data_Nascimento DATE,
	Salario VARCHAR (10),
	Cargo   VARCHAR (2),
    PRIMARY KEY (ID_Funcionario)
)

SELECT * FROM Funcionario1

INSERT INTO Funcionario1 (ID_Funcionario, Nome, Endereco, Cidade, Estado, Email, Data_Nascimento, Salario, Cargo)
VALUES (5, 'Carlos Días', 'Av. Lapa, 121', 'Itu', 'SP', 'umemail1@gmail.com',  '1990-03-31', '1000', 'AI'),
	   (6, 'Ana Maria da Cunha', 'Av. São Paulo, 388', 'Itu', 'SP', 'umemail2@gmail.com',  '1988-04-12', '1500', 'PC'),
	   (7, 'Cláudia Regina Martins', 'Rua Holanda, 89', 'Campinas', 'SP', 'umemail3@gmail.com',  '1988-12-04', '2000', 'AI'),
	   (8, 'Marcela Tatho', 'Rua Bélgica, 43', 'Campinas', 'SP', 'umemail4@hotmail.com',  '1987-09-11', '2000', 'TI'),
	   (9, 'Jorge Luís Rodrigues', 'Av. da Saudade, 1989', 'São Paulo', 'SP', 'umemail5@yahoo.com',  '1990-05-05', '2500', 'TI'),
	   (10, 'Ana Paulo Camargo', 'Rua Costa e Silva, 33', 'Sorocaba', 'SP', 'umemail6@gmail.com',  '1991-06-30', '3000', 'PC'),
	   (11, 'Ivo Cunha', 'Av. Raio de Luz, 100', 'Campinas', 'SP', 'umemail7@bol.com.br',  '1987-04-11', '750', 'AI'),
	   (12, 'Carlos Luís de Souza', 'Rua Nicolau Coelho, 22', 'São Paulo', 'SP', 'umemail8@bol.com.br',  '1988-04-30', '1000', 'AI') 

/*Exercício 1*/
SELECT Nome, Salario FROM Funcionario1
SELECT Salario + (Salario * 30) / 100 FROM Funcionario1

/*Exercício 2*/
SELECT Nome, (Salario*20)/100 FROM Funcionario1 WHERE Cidade LIKE 'Campinas'

/*Exercício 3*/
SELECT Nome, Salario FROM Funcionario1 WHERE Salario > 1500

/*Exercício 4*/ 
SELECT Nome, Cidade FROM Funcionario1 where Cidade != 'Valinhos'

/*Exercício 5*/
SELECT ID_Funcionario, Cidade FROM Funcionario1 WHERE Cidade ='Valinhos' OR Cidade ='Campinas'

/*Exercício 6*/
SELECT ID_Funcionario, Cargo, Salario FROM Funcionario1 WHERE Salario >= '1000' AND Cidade != 'São Paulo'

/*Exercício 7*/
SELECT Nome FROM Funcionario1 WHERE Cargo is null

/*Exercício 8*/
SELECT Nome, Salario FROM Funcionario1 WHERE Salario BETWEEN 500 AND 1500

/*Exercício 9*/
SELECT Nome, Email FROM Funcionario1 WHERE Email LIKE '%hotmail%'

/*Exercício 10*/
SELECT Nome, Email FROM Funcionario1 WHERE Email LIKE '%.br' ORDER BY Nome

/*Exercício 11*/
SELECT Nome, Email FROM Funcionario1 WHERE Email NOT LIKE '%.com' ORDER BY Nome

/*Exercício 12*/
SELECT Nome, Email FROM Funcionario1 WHERE Email LIKE '__r%'

DROP TABLE Funcionario1

USE master
DROP DATABASE BD_Recursos_Humanos