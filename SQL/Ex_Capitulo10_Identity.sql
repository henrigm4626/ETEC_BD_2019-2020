/* Exerc�cios Cap.10 - Identity */

/*Exerc�cio 1*/
CREATE DATABASE BD_Compras

/*Exerc�cio 2*/
USE BD_Compras

/*Exerc�cio 3*/
CREATE TABLE Cliente(
	ID_Cliente INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(30),
	Endereco VARCHAR(30),
	Cidade VARCHAR(15),
	Estado CHAR(2) 
) 

SELECT * FROM Cliente

CREATE TABLE Produto(
	ID_Produto INT IDENTITY PRIMARY KEY, 
	Descricao VARCHAR(15),
	Preco DECIMAL(5,2),
	Quantidade INT
) 

SELECT * FROM Produto

CREATE TABLE Compras(
	ID_Compra INT IDENTITY(1000,2),
	ID_Cliente INT,
	ID_Produto INT, 
	Data_Nascimento VARCHAR (15),
	Quantidade INT,
	Valor DECIMAL(5,2),
	PRIMARY KEY(ID_Compra,ID_Cliente,ID_Produto)
) 

SELECT * FROM Compras

/*Exerc�cio 4*/
ALTER TABLE Cliente ADD Sexo CHAR(1)  

/*Exerc�cio 5*/
INSERT INTO Cliente (Nome,Endereco,Cidade,Estado,Sexo)
VALUES ('Jos� de Oliveira','Av. Jatob�,34','Jundia�','SP','F'), 
	   ('Maria da Silva','Av. Presidente,12','Itatiba','MG','F'), 
	   ('Antonio Carlos','R. Floren�a,5','Jundia�','SP','M'), 
	   ('Luisa de Souza','Av. Jatob�,45','Jundia�','MG','F'), 
	   ('Calos de Souza','Av. Jatob�,45','Jundia�','SP','M')

/*Exerc�cio 6*/
INSERT INTO Produto (Descricao,Preco,Quantidade)
VALUES ('L�pis','1.50','20'), 
	   ('Borracha','1.00','15'), 
	   ('Caneta','1.75','35'), 
	   ('Compasso','5.20','10'), 
	   ('R�gua','0.75','16'),  
	   ('Papel Sul.te','10.50','5') 

/*Exerc�cio 7*/
INSERT INTO Compras (ID_Cliente,ID_Produto,Data_Nascimento,Quantidade,Valor)
VALUES (1,1,'2010-12-01','2','1.50'), 
	   (2,1,'2010-12-03','5','1.50'), 
	   (1,3,'2011-01-05','13','1.75'), 
	   (1,4,'2011-01-11','1','5.20'), 
	   (3,2,'2011-03-16','7','1.00'), 
	   (4,5,'2011-05-21','10','0.75'),
	   (2,6,'2011-06-07','2','10.50'), 
	   (5,3,'2011-06-07','2','1.75') 

/*Exerc�cio 8*/
UPDATE Cliente SET Estado = 'SP' 

/*Exerc�cio 9*/
SELECT Nome, Estado FROM Cliente 

/*Exerc�cio 10*/
UPDATE Cliente SET Sexo = 'M' WHERE Nome = 'Jos� de Oliveira' 

/*Exerc�cio 11*/
SELECT Descricao, Preco FROM Produto 

/*Exerc�cio 12*/
DELETE FROM Produto WHERE Descricao = 'Papel Sul.te' 

/*Exerc�cio 13*/
UPDATE Produto SET Quantidade = 15 WHERE Descricao = 'L�pis' 

/*Exerc�cio 14*/
SELECT TOP 2 LOWER (Descricao) FROM Produto 

/*Exerc�cio 15*/
SELECT SUM (Valor) FROM Compras WHERE ID_Produto = 1 

/*Exerc�cio 16*/
SELECT AVG (valor) FROM Compras WHERE ID_Cliente = 1 

/*Exerc�cio 17*/
SELECT Nome FROM Cliente WHERE Cidade = 'Jundia�' 

/*Exerc�cio 18*/
SELECT ID_Cliente, UPPER(Nome)FROM Cliente WHERE Nome LIKE '%Carlos%' 

/*Exerc�cio 19*/
SELECT Descricao, Preco, Quantidade FROM Produto WHERE Preco > 1 AND Quantidade >= 10 

/*Exerc�cio 20*/
SELECT * FROM Cliente ORDER BY Nome 

/*Exerc�cio 21*/
SELECT DISTINCT cidade, COUNT(*)
FROM Cliente 
GROUP BY Cidade 
ORDER BY COUNT(*) 

/*Exerc�cio 22*/
SELECT SUM(Preco) AS SomaPreco, AVG (Preco) AS MediaPreco FROM Produto 

/*Exerc�cio 23*/
SELECT MAX (Preco) AS PrecoMaisCaro, MIN (Preco) AS PrecoMaisBarato FROM Produto 

/*Exerc�cio 24*/
SELECT SUM(Valor)
FROM Compras
WHERE YEAR(Data_Nascimento)= '2010' 

/*Exerc�cio 25*/
SELECT top 1 Valor FROM Compras WHERE YEAR(Data_Nascimento)= '2011' ORDER BY Data_Nascimento 

/*Exerc�cio 26*/
SELECT Nome FROM Cliente WHERE Sexo = 'F' 

/*Exerc�cio 27*/
SELECT * FROM Compras
WHERE DAY(Data_Nascimento) IN ('1','11') 

/*Exerc�cio 28*/
SELECT Descricao, Preco, (Preco + (Preco*0.1)) AS PrecoAcrescido10porCento FROM Produto 

/*Exerc�cio 29*/
SELECT ID_Cliente, COUNT(*) AS QuantidadeCompra FROM Compras GROUP BY ID_Cliente 

/*Exerc�cio 30*/
UPDATE Produto 
SET Preco = (Preco - (Preco*0.1))
WHERE Quantidade < 15 

/*Exerc�cio 31*/
SELECT ID_Produto, DAY (Data_Nascimento)
FROM Compras

/*Exerc�cio 32*/
SELECT DISTINCT Sexo, COUNT(*)
FROM Cliente 
GROUP BY Sexo 

/*Exerc�cio 33*/
DELETE FROM Compras
WHERE ID_Compra = 1000 

/*Exerc�cio 34*/
SELECT Descricao, POWER(Quantidade,2) AS QuantidadeAoQuadrado FROM Produto WHERE Quantidade > 15 AND Quantidade < 25 

/*Exerc�cio 35*/
SELECT SQRT(Quantidade) AS RaizDaQuantidade
FROM Produto 
WHERE Descricao like 'C%' 

/*Exerc�cio 36*/
SELECT Nome 
FROM Cliente 
WHERE Endereco like 'Av. Jatob�%' 

/*Exerc�cio 37*/
SELECT Nome, LEN(Nome) AS QuantCaracteres FROM Cliente 

/*Exerc�cio 38*/
SELECT ID_Compra, Valor, (Valor-(Valor*0.2)) AS Valor20PorCento FROM Compras WHERE ID_Cliente = 2 

/*Exerc�cio 39*/
SELECT YEAR(Data_Nascimento), COUNT(*)
FROM Compras
GROUP BY YEAR(Data_Nascimento) 

/*Exerc�cio 40*/
SELECT ID_Compra, DAY(Data_Nascimento) AS DiaCompra, DATENAME(MONTH,Data_Nascimento) AS MesCompra, YEAR(Data_Nascimento) AS AnoCompras FROM Compras 

/*Exerc�cio 41*/
SELECT ID_Produto, SUM(Valor*Quantidade) FROM Compras GROUP BY ID_Produto HAVING SUM(Valor*Quantidade)> 7 

/*Exerc�cio 42*/
DELETE FROM Compras WHERE ID_Cliente BETWEEN 3 AND 5 

/*Exerc�cio 43*/
DROP TABLE Produto 

/*Exerc�cio 44*/
USE master
DROP DATABASE BD_Compras