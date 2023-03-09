-- comando para criação de banco de dados
CREATE DATABASE bd_tenis;

-- comando que indica ao mysql workbench o banco de dados usado
USE bd_tenis;

CREATE TABLE tb_prod (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255),
    preco DECIMAL(6,2),
    marca VARCHAR (255),
    tamanho VARCHAR (255),
    cor VARCHAR (255)
);

-- comando que trás todos os dados da tabela de produtos
SELECT * FROM tb_prod;

INSERT INTO  tb_prod (nome_produto, preco, marca, tamanho, cor)
VALUES 	("JORDAN 11", "2.500", "NIKE", "11.5", "CONCORD (AZUL MARINHO E BRANCO")
		, ("DUNK LOW", "1.900", "NIKE", "11.5", "PRETO E BRANCO")
		, ("DUNK LOW", "1.900", "NIKE", "11.5", "PRETO E BRANCO")
		, ("YEEZY 350", "2.000", "ADIDAS", "11.5", "PALHA")
        , ("SPRING BLADE", "499", "ADIDAS", "11.5", "PRETO E VERDE")
		, ("AIR FORCE 1", "499", "NIKE", "11.5", "BRANCO")
        , ("PROPHECY 8", "250", "MIZUNO", "11.5", "PRETO")
        , ("550", "320", "NEW BALENCE", "11.5", "CINZA");

-- desativa o modo seguro do mysql e permite update e delete
SET SQL_SAFE_UPDATES = 0;

-- atualização de um dado dentro da minha tabela
UPDATE tb_prod SET preco = 2500.00 WHERE id = 1;
UPDATE tb_prod SET preco = 1900.00 WHERE id = 2;
UPDATE tb_prod SET preco = 1900.00 WHERE id = 3;
UPDATE tb_prod SET preco = 2000.00 WHERE id = 4;

UPDATE tb_prod SET nome_produto = "JORDAN 3" WHERE id = 3;

UPDATE tb_prod SET preco = 1000.00 WHERE id = 3;

SELECT * FROM tb_prod WHERE preco > 500;

SELECT * FROM tb_prod WHERE preco < 500;