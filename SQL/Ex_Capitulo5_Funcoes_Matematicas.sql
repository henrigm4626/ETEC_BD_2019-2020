/* Exerc�cios Cap.5 - Fun��es Matem�ticas */

CREATE DATABASE BD_Recursos_Humanos
USE BD_Recursos_Humanos

CREATE TABLE Funcionario3(
	ID_Funcionario INT,
	Nome    VARCHAR (40),
	Cidade  VARCHAR (20),
	Salario VARCHAR (30),
	Data_Nascimento VARCHAR(15),
	PRIMARY KEY (ID_Funcionario)
)

SELECT * FROM Funcionario3

INSERT INTO Funcionario3 (ID_Funcionario, Nome, Salario, Cidade, Data_Nascimento)
VALUES (1, 'Andr�', '5000', 'Jundia�',  '1990-06-09'), 
   	   (2, 'Gabriel', '7000', 'Campinas', '1990-01-01'), 
	   (3, 'Ana J�lia', '3500', 'Valinhos', '2000-07-25'), 
	   (4, 'Jo�o Pedro', '1500', 'Valinhos', '1984-03-16'), 
	   (5, 'Lu�z', '9000', 'Itupeva', '1990-10-15')

/*Exerc�cio 1*/
SELECT Nome, Salario + PI() FROM Funcionario3

/*Exerc�cio 2*/
SELECT SQRT(DAY(Data_Nascimento)) FROM Funcionario3 WHERE Cidade ='Valinhos'

/*Exerc�cio 3*/
SELECT LOG(MONTH(Data_Nascimento)) FROM Funcionario3 WHERE YEAR(Data_Nascimento)=1990

/*Exerc�cio 4*/
SELECT Nome, DAY(Data_Nascimento) FROM Funcionario3 WHERE POWER(DAY(Data_Nascimento),3)>=1000

/*Exerc�cio 5*/
SELECT ROUND((Salario + (0.155*100)),0) FROM Funcionario3 WHERE Salario >1000

/*Exerc�cio 6*/
SELECT ABS(1500-Salario) FROM Funcionario3

/*Exerc�cio 7*/
SELECT ID_Funcionario, SQRT(ID_Funcionario) FROM Funcionario3 WHERE Data_Nascimento <'1989-04-01'

/*Exerc�cio 8*/
SELECT Nome, ROUND((Salario - (0.35*100)), 1) FROM Funcionario3

/*Exerc�cio 9*/
SELECT LOG(ID_Funcionario) FROM Funcionario3

/*Exerc�cio 10*/
SELECT SQRT(ID_Funcionario) FROM Funcionario3

/*Exerc�cio 11*/
SELECT POWER(ID_Funcionario,2) FROM Funcionario3

/*Exerc�cio 12*/
SELECT ABS(ID_Funcionario-10) AS valor_absoluto FROM Funcionario3 ORDER BY valor_absoluto DESC

DROP TABLE Funcionario3

USE master
DROP DATABASE BD_Recursos_Humanos