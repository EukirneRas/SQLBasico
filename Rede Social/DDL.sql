CREATE DATABASE db_redesocial;

USE db_redesocial;

CREATE TABLE tb_usuarios(
	Id_Usuario INT NOT NULL PRIMARY KEY IDENTITY,
	Nome VARCHAR(45) NOT NULL,
	Usuario VARCHAR(45) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Url_Foto VARCHAR(100) NOT NULL
);

CREATE TABLE tb_grupos(
	Id_Grupo INT NOT NULL PRIMARY KEY IDENTITY,
	Grupo VARCHAR(45) NOT NULL,
	Descricao VARCHAR(100) NOT NULL,
	Url_Imagem VARCHAR(100) NOT NULL,
	FK_Usuario INT NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id_Usuario)
);

CREATE TABLE tb_inscritos(
	FK_Usuario INT NOT NULL,
	FK_Grupo INT NOT NULL,
	DataHora DATE NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id_Usuario),
	FOREIGN KEY (FK_Grupo) REFERENCES tb_grupos (Id_Grupo)
);

CREATE TABLE tb_postagens(
	Id_Postagem INT NOT NULL PRIMARY KEY IDENTITY,
	Titulo VARCHAR(50) NOT NULL,
	Descricao VARCHAR(1000) NOT NULL,
	Url_Imagem VARCHAR(100) NOT NULL,
	Data_Postagem DATE NOT NULL,
	FK_Usuario INT NOT NULL,
	FK_Grupo INT NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id_Usuario),
	FOREIGN KEY (FK_Grupo) REFERENCES tb_grupos (Id_Grupo)
);