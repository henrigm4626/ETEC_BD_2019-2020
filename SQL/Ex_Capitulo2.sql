/* Exerc�cios Cap.2 */

CREATE DATABASE BD_Recursos_Humanos
USE BD_Recursos_Humanos

CREATE TABLE Funcionario(
    ID_Funcionario INT,
	Nome     VARCHAR (30),
	Endereco VARCHAR (40),
	Cidade   VARCHAR (30),
	Estado   CHAR (2),
	Email    VARCHAR (40),
	Data_Nascimento DATE,
    PRIMARY KEY (ID_Funcionario)
)

SELECT * FROM Funcionario

/*Exerc�cio 1*/
INSERT INTO Funcionario (ID_Funcionario, Nome, Endereco, Cidade, Estado, Email, Data_Nascimento)
VALUES (5, 'Carlos D�as', 'Av. Lapa, 121', 'Itu', 'SP', 'umemail1@gmail.com',  '1990-03-31'),
	   (6, 'Ana Maria da Cunha', 'Av. S�o Paulo, 388', 'Itu', 'SP', 'umemail2@gmail.com',  '1988-04-12'),
	   (7, 'Cl�udia Regina Martins', 'Rua Holanda, 89', 'Campinas', 'SP', 'umemail3@gmail.com',  '1988-12-04'),
	   (8, 'Marcela Tatho', 'Rua B�lgica, 43', 'Campinas', 'SP', 'umemail4@hotmail.com',  '1987-09-11'),
	   (9, 'Jorge Lu�s Rodrigues', 'Av. da Saudade, 1989', 'S�o Paulo', 'SP', 'umemail5@yahoo.com',  '1990-05-05'),
	   (10, 'Ana Paulo Camargo', 'Rua Costa e Silva, 33', 'Sorocaba', 'SP', 'umemail6@gmail.com',  '1991-06-30'),
	   (11, 'Ivo Cunha', 'Av. Raio de Luz, 100', 'Campinas', 'SP', 'umemail7@bol.com.br',  '1987-04-11'),
	   (12, 'Carlos Lu�s de Souza', 'Rua Nicolau Coelho, 22', 'S�o Paulo', 'SP', 'umemail8@bol.com.br',  '1988-04-30') 

/*Exerc�cio 2*/
UPDATE Funcionario SET Cidade = 'Valinhos' WHERE Cidade = 'Itu'

/*Exerc�cio 3*/
ALTER TABLE Funcionario ADD
Salario DECIMAL (7,2) null,
Cargo VARCHAR (2) null
UPDATE Funcionario SET Cargo = 'AI', Salario = 1100 WHERE Cidade = 'Valinhos'
UPDATE Funcionario SET Cargo = 'PC', Salario = 1700 WHERE Cidade = 'Campinas'
UPDATE Funcionario SET Cargo = 'TI', Salario = 750 WHERE Cidade = 'Sorocaba'

/*Exerc�cio 4*/
SELECT Nome, Cargo FROM Funcionario

/*Exerc�cio 5*/
SELECT ID_Funcionario, Email FROM Funcionario WHERE Estado = 'SP'

/*Exerc�cio 6*/
DELETE FROM Funcionario WHERE ID_Funcionario = '5'

/*Exerc�cio 7*/
SELECT DISTINCT Cidade, Estado FROM Funcionario WHERE Cargo = 'PC'

DROP TABLE Funcionario

USE master
DROP DATABASE BD_Recursos_Humanos
