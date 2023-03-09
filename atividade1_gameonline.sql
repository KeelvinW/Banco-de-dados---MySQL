CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
		id_cl BIGINT AUTO_INCREMENT PRIMARY KEY,
        tipo VARCHAR(50),
        arma VARCHAR(50)
);

CREATE TABLE tb_personagens(
		id_per BIGINT AUTO_INCREMENT PRIMARY KEY, 
        nome VARCHAR(50),
        vantagem BIGINT,
        ataque INT,
        defesa INT, 
        classes_id BIGINT,
        FOREIGN KEY (classes_id) REFERENCES tb_classes (id_cl)
);	

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

INSERT INTO tb_classes(tipo, arma)
VALUE ("Paladino", "Espada/Escudo")
, ("Mago", "Rúnico")
, ("Druida", "Flauta mágica")
, ("Elfo", "Arco e flecha")
, ("Guerreiro", "Machado gigante");

INSERT INTO tb_personagens(nome, vantagem, ataque, defesa)
VALUE ("Donavan", "Abençoado", 15, 07),
	  ("Ghanor", "Magia", 11, 12),
	  ("Galadriel", "Equilibrio", 13, 10),
	  ("Cheila", "Força bruta", 17, 10),
      ("Gabriel", "Abençoado", 11, 15),
	  ("Legolas", "Equilibrio", 13, 10),
	  ("Ruffus", "Força bruta", 18, 09),
	  ("Crinci", "Magia", 12, 10);
      
SELECT * FROM tb_personagens WHERE ataque >= 13;

SELECT * FROM tb_personagens WHERE defesa >= 10 AND defesa < 13;

SELECT * FROM tb_personagens WHERE nome LIKE "%C";

SELECT nome, vantagem, ataque, defesa from tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id;

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id
WHERE tb_classes.vantagem = "Força bruta";

ALTER TABLE tb_personagens MODIFY vantagem VARCHAR(50);