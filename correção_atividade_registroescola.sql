CREATE DATABASE db_regsitroescola;

USE db_regsitroescola;

CREATE TABLE tb_estudante(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255),
    note DECIMAL(4,2),
    matricula VARCHAR(255),
    turma VARCHAR(255),
    periodo VARCHAR(255),
    transporte BOOLEAN
);

SELECT * FROM tb_estudante;

INSERT INTO tb_estudante(nome, note, matricula, turma, periodo, transporte)
VALUES ("Jonas", 10.00, "40038922", "Brothers", "Integral", true)
, ("Wallace", 6.30, "4874430", "Bonde do T.", "Noturno", true)
, ("Joe", 10.00, "77738933", "Brothers", "Integral", true)
, ("Nick", 9.00, "12341232", "Brothers", "Integral", false)
, ("Marcia", 10.00, "27743834", "Girls", "Diurno", true)
, ("Andre", 8.00, "77738933", "Brothers", "Notourno", false)
, ("Maria", 10.00, "77764783", "Girls", "Noturno", true)
, ("Adriana", 10.00, "77726377", "Girls", "Integral", false);

SELECT * FROM tb_estudante WHERE note > 7;

SELECT * FROM tb_estudante WHERE note < 7;

UPDATE tb_estudante SET note = 10.00, matricula = 70707070 WHERE id = 2; 