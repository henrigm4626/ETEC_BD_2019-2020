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

--5) O que s�o restri��es. Explique a restri��o UNIQUE e NOT NULL:
--Resposta:  Restri��es s�o regras para especificar um campo, podendo ser NULL, NOT NULL e UNIQUE. UNIQUE: � �nico, n�o permite duplica��o. NOT NULL: n�o pode ficar em branco, ou seja, a digita��o � obrigat�ria.

--6) Qual a diferen�a de char e varchar:
--Resposta: O tipo de dado varchar pode possuir varia��o na quantidade de caracteres (Ex: "...varchar(30)" imp�e que o m�ximo de caracteres � 30, mas pode conter qualquer quantidade inferior a esse limite),
--		    j� o char possui uma quantidade definida de caracteres (Ex:"...char(5)" imp�e que ser�o apenas 5 caracteres, sendo que ao armazenar uma string de 2 caracteres os 3 restante ser�o preenchidos com espa�os).

--7) O que � chave prim�ria?
--Resposta: Chave prim�ria � uma entidade �nica, que n�o permite duplica��o e requer preenchimento obrigat�rio

--8) O que faz o comando CREATE INDEX?
--Resposta: O comando CREATE INDEX cria um �ndice que pode organizar itens de uma determinada tabela, podendo orden�-los em ordem crescente (asc) ou decrescente (desc)

--9) Exclua o Banco de Dados Livraria
--Resposta: USE master
--			DROP DATABASE livraria