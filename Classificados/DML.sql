USE db_classificados;

SELECT * FROM tb_usuarios 
SELECT * FROM tb_anuncios

INSERT INTO tb_usuarios
VALUES
(1, 'Henrique', 'hadero', '1234',' Url_Foto'),
(2, 'Amanda', 'mandi', '1234', 'Url_Foto'),
(3, 'Garcia', 'fegar', '1234', 'Url_Foto')

INSERT INTO tb_anuncios
VALUES
(1, 'Trampo', 'Nome a vaga', 'Telefone', 'Url_Imagem', '2022-07-27', 1),
(2, 'Trabalho','Nome do cargo','Zap','Url_Imagem','2022-07-27', 2),
(3, 'Bico','Nome do serviço','E-mail','Url_Imagem','2022-07-27', 3)

SELECT * FROM tb_usuarios
WHERE Usuario = 'mandi'