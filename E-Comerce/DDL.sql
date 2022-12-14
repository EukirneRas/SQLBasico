CREATE DATABASE db_ecomerce;

USE db_ecomerce;

CREATE TABLE tb_usuarios(
	Id_Usuarios INT NOT NULL PRIMARY KEY IDENTITY,
	Nome VARCHAR(45) NOT NULL, 
	Usuario VARCHAR(45) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Documento VARCHAR(45) NOT NULL
);

CREATE TABLE tb_produtos(
	Id_Produtos INT NOT NULL PRIMARY KEY IDENTITY,
	Produto VARCHAR(45) NOT NULL,
	Descricao VARCHAR(1000) NOT NULL,
	Valor FLOAT NOT NULL,
	Estoque INT NOT NULL,
	Categoria VARCHAR(100) NOT NULL,
	Url_Imagem VARCHAR(100) NOT NULL,
);

CREATE TABLE compras(
	Id_Compras
	Data_ano DATE NOT NULL,
	FK_Usuario INT NOT NULL,
	FK_Produto INT NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id_Usuarios),
	FOREIGN KEY (FK_Produto) REFERENCES tb_produtos (Id_Produtos)
);