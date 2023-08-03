CREATE DATABASE livraria
USE livraria

CREATE TABLE livro(
	id_livro   INT NOT NULL,
	titulo     VARCHAR (40),
	id_editora INT,
	isbn       INT,
	ano        INT NULL,
	id_autor   INT,
	preco DECIMAL (10,2) NULL,
	PRIMARY KEY (id_livro)
)

SELECT * FROM livro

CREATE TABLE autor(
	id_autor      INT IDENTITY(1,1) NOT NULL,
	nome	      VARCHAR (40),
	nacionalidade VARCHAR (40),
	PRIMARY KEY (id_autor)
)

SELECT * FROM autor

CREATE TABLE editora(
	id_editora  INT IDENTITY(1,1) NOT NULL,
	nome		VARCHAR (40),
	cidade		VARCHAR (40),
	pais		VARCHAR (40),
	PRIMARY KEY (id_editora)
)

SELECT * FROM editora

ALTER TABLE livro
ADD data DATE

SELECT * FROM livro

ALTER TABLE editora
DROP COLUMN pais

SELECT * FROM editora

USE master
DROP DATABASE livraria

--5) O que são restrições. Explique a restrição UNIQUE e NOT NULL:
--Resposta:  Restrições são regras para especificar um campo, podendo ser NULL, NOT NULL e UNIQUE. UNIQUE: é único, não permite duplicação. NOT NULL: não pode ficar em branco, ou seja, a digitação é obrigatória.

--6) Qual a diferença de char e varchar:
--Resposta: O tipo de dado varchar pode possuir variação na quantidade de caracteres (Ex: "...varchar(30)" impõe que o máximo de caracteres é 30, mas pode conter qualquer quantidade inferior a esse limite),
--		    já o char possui uma quantidade definida de caracteres (Ex:"...char(5)" impõe que serão apenas 5 caracteres, sendo que ao armazenar uma string de 2 caracteres os 3 restante serão preenchidos com espaços).

--7) O que é chave primária?
--Resposta: Chave primária é uma entidade única, que não permite duplicação e requer preenchimento obrigatório

--8) O que faz o comando CREATE INDEX?
--Resposta: O comando CREATE INDEX cria um índice que pode organizar itens de uma determinada tabela, podendo ordená-los em ordem crescente (asc) ou decrescente (desc)

--9) Exclua o Banco de Dados Livraria
--Resposta: USE master
--			DROP DATABASE livraria