CREATE DATABASE db_marketplace

USE db_marketplace

CREATE TABLE tb_usuarios(
	Id_Usuario INT NOT NULL PRIMARY KEY IDENTITY,
	Nome VARCHAR(45) NOT NULL,
	Usuario VARCHAR(45) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Url_Foto VARCHAR(100) NOT NULL
);

CREATE TABLE tb_categorias(
	Id_Categoria INT NOT NULL PRIMARY KEY IDENTITY,
	Categoria VARCHAR(45) NOT NULL
);

CREATE TABLE tb_produtos(
	Id_Produto INT NOT NULL PRIMARY KEY IDENTITY,
	Produto VARCHAR(45) NOT NULL,
	Descricao VARCHAR(100) NOT NULL,
	Valor FLOAT NOT NULL,
	Url_Imagem VARCHAR(100) NOT NULL,
	FK_Usuario INT NOT NULL,
	FK_Categoria INT NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id_Usuario),
	FOREIGN KEY (FK_Categoria) REFERENCES tb_categorias (Id_Categoria)
);

CREATE TABLE compras(
	Id_Compra INT NOT NULL PRIMARY KEY IDENTENTITY,
	FK_Usuario INT NOT NULL,
	FK_Produto INT NOT NULL,
	Data DATE NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id_Usuario),	
	FOREIGN KEY (FK_Produto) REFERENCES tb_produtoS (Id_Produto)
);