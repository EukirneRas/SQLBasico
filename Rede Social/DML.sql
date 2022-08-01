USE db_redesocial;

SELECT * FROM tb_usuarios;
SELECT * FROM tb_grupos;
SELECT * FROM tb_postagens;
SELECT * FROM tb_inscritos;

INSERT INTO tb_usuarios
VALUES
('Henrique', 'hadero', '12345', 'Url_Foto'),
('Amanda', 'mandi', '12345', 'Url_Foto'),
('Garcia', 'fegar', '12345', 'Url_Foto');

INSERT INTO tb_grupos
VALUES
('Grupão', 'Grupo do zap', 'Url_Foto', 1),
('Feira do rolo', 'Feirão da cidade', 'Url_Foto', 1),
('Grupo da Familia', 'Bom dia', 'Url_Foto', 1);

INSERT INTO tb_postagens
VALUES
('Bom dia', 'Bom dia', 'Url_Bom dia', '2022-07-27', 1, 1);

INSERT INTO tb_inscritos
VALUES(1, 1, '2022-07-28 14:39');

SELECT * FROM tb_usuarios
WHERE Usuario LIKE 'fegar';

