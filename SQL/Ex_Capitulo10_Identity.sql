/* Exercícios Cap.10 - Identity */

/*Exercício 1*/
CREATE DATABASE BD_Compras

/*Exercício 2*/
USE BD_Compras

/*Exercício 3*/
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

/*Exercício 4*/
ALTER TABLE Cliente ADD Sexo CHAR(1)  

/*Exercício 5*/
INSERT INTO Cliente (Nome,Endereco,Cidade,Estado,Sexo)
VALUES ('José de Oliveira','Av. Jatobá,34','Jundiaí','SP','F'), 
	   ('Maria da Silva','Av. Presidente,12','Itatiba','MG','F'), 
	   ('Antonio Carlos','R. Florença,5','Jundiaí','SP','M'), 
	   ('Luisa de Souza','Av. Jatobá,45','Jundiaí','MG','F'), 
	   ('Calos de Souza','Av. Jatobá,45','Jundiaí','SP','M')

/*Exercício 6*/
INSERT INTO Produto (Descricao,Preco,Quantidade)
VALUES ('Lápis','1.50','20'), 
	   ('Borracha','1.00','15'), 
	   ('Caneta','1.75','35'), 
	   ('Compasso','5.20','10'), 
	   ('Régua','0.75','16'),  
	   ('Papel Sul.te','10.50','5') 

/*Exercício 7*/
INSERT INTO Compras (ID_Cliente,ID_Produto,Data_Nascimento,Quantidade,Valor)
VALUES (1,1,'2010-12-01','2','1.50'), 
	   (2,1,'2010-12-03','5','1.50'), 
	   (1,3,'2011-01-05','13','1.75'), 
	   (1,4,'2011-01-11','1','5.20'), 
	   (3,2,'2011-03-16','7','1.00'), 
	   (4,5,'2011-05-21','10','0.75'),
	   (2,6,'2011-06-07','2','10.50'), 
	   (5,3,'2011-06-07','2','1.75') 

/*Exercício 8*/
UPDATE Cliente SET Estado = 'SP' 

/*Exercício 9*/
SELECT Nome, Estado FROM Cliente 

/*Exercício 10*/
UPDATE Cliente SET Sexo = 'M' WHERE Nome = 'José de Oliveira' 

/*Exercício 11*/
SELECT Descricao, Preco FROM Produto 

/*Exercício 12*/
DELETE FROM Produto WHERE Descricao = 'Papel Sul.te' 

/*Exercício 13*/
UPDATE Produto SET Quantidade = 15 WHERE Descricao = 'Lápis' 

/*Exercício 14*/
SELECT TOP 2 LOWER (Descricao) FROM Produto 

/*Exercício 15*/
SELECT SUM (Valor) FROM Compras WHERE ID_Produto = 1 

/*Exercício 16*/
SELECT AVG (valor) FROM Compras WHERE ID_Cliente = 1 

/*Exercício 17*/
SELECT Nome FROM Cliente WHERE Cidade = 'Jundiaí' 

/*Exercício 18*/
SELECT ID_Cliente, UPPER(Nome)FROM Cliente WHERE Nome LIKE '%Carlos%' 

/*Exercício 19*/
SELECT Descricao, Preco, Quantidade FROM Produto WHERE Preco > 1 AND Quantidade >= 10 

/*Exercício 20*/
SELECT * FROM Cliente ORDER BY Nome 

/*Exercício 21*/
SELECT DISTINCT cidade, COUNT(*)
FROM Cliente 
GROUP BY Cidade 
ORDER BY COUNT(*) 

/*Exercício 22*/
SELECT SUM(Preco) AS SomaPreco, AVG (Preco) AS MediaPreco FROM Produto 

/*Exercício 23*/
SELECT MAX (Preco) AS PrecoMaisCaro, MIN (Preco) AS PrecoMaisBarato FROM Produto 

/*Exercício 24*/
SELECT SUM(Valor)
FROM Compras
WHERE YEAR(Data_Nascimento)= '2010' 

/*Exercício 25*/
SELECT top 1 Valor FROM Compras WHERE YEAR(Data_Nascimento)= '2011' ORDER BY Data_Nascimento 

/*Exercício 26*/
SELECT Nome FROM Cliente WHERE Sexo = 'F' 

/*Exercício 27*/
SELECT * FROM Compras
WHERE DAY(Data_Nascimento) IN ('1','11') 

/*Exercício 28*/
SELECT Descricao, Preco, (Preco + (Preco*0.1)) AS PrecoAcrescido10porCento FROM Produto 

/*Exercício 29*/
SELECT ID_Cliente, COUNT(*) AS QuantidadeCompra FROM Compras GROUP BY ID_Cliente 

/*Exercício 30*/
UPDATE Produto 
SET Preco = (Preco - (Preco*0.1))
WHERE Quantidade < 15 

/*Exercício 31*/
SELECT ID_Produto, DAY (Data_Nascimento)
FROM Compras

/*Exercício 32*/
SELECT DISTINCT Sexo, COUNT(*)
FROM Cliente 
GROUP BY Sexo 

/*Exercício 33*/
DELETE FROM Compras
WHERE ID_Compra = 1000 

/*Exercício 34*/
SELECT Descricao, POWER(Quantidade,2) AS QuantidadeAoQuadrado FROM Produto WHERE Quantidade > 15 AND Quantidade < 25 

/*Exercício 35*/
SELECT SQRT(Quantidade) AS RaizDaQuantidade
FROM Produto 
WHERE Descricao like 'C%' 

/*Exercício 36*/
SELECT Nome 
FROM Cliente 
WHERE Endereco like 'Av. Jatobá%' 

/*Exercício 37*/
SELECT Nome, LEN(Nome) AS QuantCaracteres FROM Cliente 

/*Exercício 38*/
SELECT ID_Compra, Valor, (Valor-(Valor*0.2)) AS Valor20PorCento FROM Compras WHERE ID_Cliente = 2 

/*Exercício 39*/
SELECT YEAR(Data_Nascimento), COUNT(*)
FROM Compras
GROUP BY YEAR(Data_Nascimento) 

/*Exercício 40*/
SELECT ID_Compra, DAY(Data_Nascimento) AS DiaCompra, DATENAME(MONTH,Data_Nascimento) AS MesCompra, YEAR(Data_Nascimento) AS AnoCompras FROM Compras 

/*Exercício 41*/
SELECT ID_Produto, SUM(Valor*Quantidade) FROM Compras GROUP BY ID_Produto HAVING SUM(Valor*Quantidade)> 7 

/*Exercício 42*/
DELETE FROM Compras WHERE ID_Cliente BETWEEN 3 AND 5 

/*Exercício 43*/
DROP TABLE Produto 

/*Exercício 44*/
USE master
DROP DATABASE BD_Compras