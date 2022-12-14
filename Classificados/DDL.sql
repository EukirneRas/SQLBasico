CREATE DATABASE db_classificados;

USE db_classificados;

CREATE TABLE tb_usuarios(
	Id_Usuario INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(45) NOT NULL,
	Usuario VARCHAR(45) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Url_Imagem VARCHAR(100) NOT NULL
);

CREATE TABLE tb_anuncios(
	Id_Anuncio INT NOT NULL PRIMARY KEY,
	Titulo VARCHAR(45) NOT NULL,
	Descricao VARCHAR(1000) NOT NULL,
	Contato VARCHAR(50) NOT NULL,
	Url_Imagem VARCHAR(100) NOT NULL,
	DataHora DATE NOT NULL,
	FK_Usuario INT NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id_Usuario)
);