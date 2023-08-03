CREATE DATABASE  Concessionaria

USE Concessionaria

CREATE TABLE veiculo(
    chassi  VARCHAR (17),
	marca   VARCHAR (10) NULL,
	modelo  VARCHAR (20) NOT NULL,
	ano_fab INT NULL,
	ano_mod INT NULL,
	combustivel CHAR (1) NULL,
	PRIMARY KEY (chassi)
)

SELECT * FROM veiculo

ALTER TABLE veiculo ADD
valor DECIMAL (9,2),
motor VARCHAR (20)

ALTER TABLE veiculo
DROP COLUMN motor

CREATE INDEX funcaomarca ON veiculo (marca ASC, modelo ASC)
	
CREATE INDEX funcaoano ON veiculo (ano_fab DESC)
	
DROP INDEX funcaomarca ON veiculo

DROP TABLE veiculo

USE MASTER
DROP DATABASE Concessionaria