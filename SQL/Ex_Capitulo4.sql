/* Exercícios Cap.4 */

CREATE DATABASE BD_Recursos_Humanos
USE BD_Recursos_Humanos

CREATE TABLE Funcionario2(
    ID_Funcionario INT,
	Nome   VARCHAR (30),
	Idade  VARCHAR (5),
	Cidade VARCHAR (30),
	Estado CHAR (2),
	Data_Nascimento DATE,
    PRIMARY KEY (ID_Funcionario)
)

SELECT * FROM Funcionario2

INSERT INTO Funcionario2 (ID_Funcionario, Nome, Idade, Cidade, Estado, Data_Nascimento)
VALUES (5, 'Carlos Días', '20', 'São Paulo', 'SP',  '1990-03-31'),
	   (6, 'Ana Maria da Cunha', '35', 'São Paulo', 'SP',  '1988-04-12'),
	   (7, 'Cláudia Regina Martins', '40', 'Sorocaba', 'SP',  '1988-12-04'),
	   (8, 'Marcela Tatho', '16', 'Campinas', 'SP',  '1987-09-11'),
	   (9, 'Jorge Luís Rodrigues', '18', 'Campinas', 'SP',  '1990-05-05'),
	   (10, 'Ana Paulo Camargo', '53', 'Itu', 'SP',  '1991-06-30'),
	   (11, 'Ivo Cunha', '62', 'Sorocaba', 'SP',  '1987-04-11'),
	   (12, 'Carlos Luís de Souza', '29', 'Campinas', 'SP',  '1988-04-30') 


/* Exercício 1 */ 
SELECT Nome, DAY (Data_Nascimento), MONTH (Data_Nascimento), YEAR (Data_Nascimento) FROM Funcionario2 

/* Exercício 2*/ 
SELECT DISTINCT MONTH(Data_Nascimento), DATENAME (MONTH, Data_Nascimento) FROM Funcionario2 ORDER BY MONTH(Data_Nascimento) ASC 

/* Exercício 3*/ 
SELECT ID_Funcionario FROM Funcionario2 WHERE YEAR(Data_Nascimento) = 1987 

/* Exercício 4*/
SELECT Nome, DATENAME (DAY, Data_Nascimento)  FROM Funcionario2 WHERE MONTH(Data_Nascimento) = 4

/* Exercício 5*/
SELECT Nome, DATEADD (MONTH, 2, Data_Nascimento) FROM Funcionario2

/*Exercício 6*/
SELECT Nome, DATEDIFF(YEAR,Data_Nascimento,GETDATE()) FROM Funcionario2

/*Exercício 7*/
SELECT ID_Funcionario, Nome, YEAR(Data_Nascimento)FROM Funcionario2 WHERE (MONTH(Data_Nascimento) BETWEEN 3 AND 5) AND YEAR(Data_Nascimento)=1990 

/*Exercício 8*/
SELECT Nome, Data_Nascimento FROM Funcionario2 WHERE Estado = 'SP'

/*Exercício 9*/
SELECT Nome, Data_Nascimento FROM Funcionario2 WHERE YEAR(Data_Nascimento) < 1990

/*Exercício 10*/
SELECT DISTINCT Nome, Cidade, Estado FROM Funcionario2 WHERE YEAR(Data_Nascimento) > 1989

/*Exercício 11*/
SELECT * FROM Funcionario2 WHERE YEAR(Data_Nascimento) = 1988 or YEAR(Data_Nascimento) = 1990

/*Exercício 12*/
SELECT Nome FROM Funcionario2 WHERE DAY(Data_Nascimento) = 30

DROP TABLE Funcionario2

USE master
DROP DATABASE BD_Recursos_Humanos
