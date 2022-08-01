USE db_ecomerce;

SELECT * FROM tb_usuarios;
SELECT * FROM tb_produtos;
SELECT * FROM tb_compras;

INSERT INTO tb_usuarios
VALUES 
(123, 'Henrique', 'hadero','134656', '1234567890'),
(234, 'Amanda', 'mangiaco', '123456', '1234567890'),
(345, 'Garcia', 'fegar', '123456', '1234567890'),
(456, 'Julia', 'juliar', '123456', '1234567890'),
(567, 'Lucas', 'caladon', '123456', '1234567890');

INSERT INTO tb_produtos
VALUES
(1, 'Coisa', 'Serve para algo', 100.99, 700, 'asiuvuhne'),
(2, 'Coisa', 'Serve para algo', 100.99, 700, 'asiuvuhne'),
(3, 'Coisa', 'Serve para algo', 100.99, 700, 'asiuvuhne'),
(4, 'Coisa', 'Serve para algo', 100.99, 700, 'asiuvuhne'),
(5, 'Coisa', 'Serve para algo', 100.99, 700, 'asiuvuhne');

INSERT INTO tb_compras
VALUES
(1, '2022-07-29', 123, 1),
(2, '2022-07-29', 234, 2),
(3, '2022-07-29', 345, 3), 
(4, '2022-07-29', 456, 4),
(5, '2022-07-29', 567, 5);

SELECT * FROM tb_usuarios
WHERE Usuario LIKE 'hadero';