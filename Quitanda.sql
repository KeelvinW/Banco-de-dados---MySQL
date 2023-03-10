
-- comando para criação de banco de dados
CREATE DATABASE db_quitanda;

-- comando que indica ao mysql workbench o banco de dados usado
USE db_quitanda;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(255),
    preco DECIMAL(6,2),

	PRIMARY KEY(id)
);

-- comando que trás todos os dados da tabela de produtos
SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome_produto, preco) 
VALUES ("Banana", 5.00),("Mexirica", 7.00);

-- desativa o modo seguro do mysql e permite update e delete
SET SQL_SAFE_UPDATES = 0;

-- atualização de um dado dentro da minha tabela
UPDATE tb_produtos SET preco = 7.90;
