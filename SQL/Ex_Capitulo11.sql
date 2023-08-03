/* Exercícios Cap.11 */

/*Exercício 1*/
CREATE DATABASE Empresa

/*Exercício 2*/
USE Empresa

/*Exercício 3*/
CREATE TABLE Fornecedores(
	CodFor int IDENTITY primary key,
	Empresa  VARCHAR(40),
	Contato  VARCHAR(30),
	Cargo    VARCHAR(30),
	Endereco VARCHAR(60),
	Cidade   VARCHAR(15),
	CEP      VARCHAR(10), 
	Pais     VARCHAR (15)
)

SELECT * FROM Fornecedores

CREATE TABLE Categorias(
	CodCategoria INT IDENTITY PRIMARY KEY,
	Descr VARCHAR(50)
)

SELECT * FROM Categorias

CREATE TABLE Clientes(
	CodCli CHAR(5) PRIMARY KEY,
	Nome     VARCHAR(40),
	Contato  VARCHAR(30),
	Cargo    VARCHAR(30),
	Endereco VARCHAR(60),
	Cidade   VARCHAR(15),
	Regiao   VARCHAR(15),
	CEP      VARCHAR(10),
	Pais     VARCHAR(15),
	Telefone VARCHAR(24),
	Fax      VARCHAR(24)
)

SELECT * FROM Clientes

CREATE TABLE Funcionarios(
	CodFun INT IDENTITY PRIMARY KEY,
	Sobrenome VARCHAR(20),
	Nome      VARCHAR(10),
	Cargo     VARCHAR(30),
	Datanasc  DATE,
	Endereco  VARCHAR(60),
	Cidade    VARCHAR(15),
	CEP       VARCHAR(10),
	Pais      VARCHAR(15),
	Telefone  VARCHAR(24),
	Salario   MONEY DEFAULT(0.0)
)

SELECT * FROM Funcionarios 

CREATE TABLE Produto(
	CodProd INT IDENTITY PRIMARY KEY,
	Descr VARCHAR(40),
	CodForn INT, 
	CodCategoria1 INT,
	Preco MONEY DEFAULT(0.0),
	Unidades SMALLINT DEFAULT(0),
	Descontinuando BIT,
	FOREIGN KEY (CodForn) REFERENCES Fornecedores(CodFor),
	FOREIGN KEY (CodCategoria1) REFERENCES Categorias(CodCategoria)
)

SELECT * FROM Produto 

CREATE TABLE Pedidos(
	NumPed  INT IDENTITY PRIMARY KEY,
	Codcli  CHAR(5),
	CodFunc INT, 
	DataPed DATE,
	DataEntrega DATE,
	Frete MONEY DEFAULT(0.0), 
	FOREIGN KEY (Codcli) REFERENCES Clientes(CodCli),
	FOREIGN KEY (CodFunc) REFERENCES Funcionarios(CodFun)
)

SELECT * FROM Produto 

CREATE TABLE DetalhesPed(
	NumPed  INT PRIMARY KEY,
	CodProd INT,
	CodFunc INT, 
	DataPed DATE,
	DataEntrega DATE,
	Frete MONEY DEFAULT(0.0), 
	FOREIGN KEY (NumPed) REFERENCES Pedidos(NumPed),
	FOREIGN KEY (CodProd) REFERENCES Produto(CodProd)
)

SELECT * FROM Produto

USE master
DROP DATABASE Empresa
