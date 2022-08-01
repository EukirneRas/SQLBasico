USE db_marketplace

SELECT * FROM tb_usuarios
SELECT * FROM tb_categorias
SELECT * FROM tb_produtos
SELECT * FROM tb_compras

INSERT INTO tb_usuarios
VALUES
('Henrique', 'hadero', '1234', 'URL_foto001'),
('Amanda', 'mandi', '1234', 'URL_foto001'),
('Garcia', 'Fegar', '1234', 'URL_foto001');

INSERT INTO tb_categorias
VALUES
('Coisas para se comprar'),
('Coisas que estão a venda'),
('Coisas e promoção')

INSERT INTO tb_produtos
VALUES
('Produto 1', 'Uma coisa', 200.99, 'Url_Foto', 1, 1),
('Produto 2', 'Outra coisa', 20.99, 'Url_Foto', 2, 2),
('Produto 3', 'Mais uma coisa', 1, 'Url_Foto', 3, 3)

INSERT INTO tb_compras
VALUES
(1, 3, '2022-07-27'),
(2, 4, '2022-07-27'),
(3, 5, '2022-07-27')

SELECT * FROM tb_usuarios
WHERE Nome LIKE 'Henrique'