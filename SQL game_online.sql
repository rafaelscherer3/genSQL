DROP DATABASE IF EXISTS db_generation_game_online;

CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT,
    nome_classe VARCHAR(255) NOT NULL,
    especialidade VARCHAR(255) NOT NULL,
    
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nivel INT,
    poder_ataque INT,
    poder_defesa INT,
    classe_id BIGINT,
    
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(nome_classe, especialidade)
VALUES
("Arqueiro", "Ataque à distância"),
("Guerreiro", "Combate corpo a corpo"),
("Mago", "Magias elementais"),
("Assassino", "Ataques rápidos"),
("Paladino", "Defesa e suporte");

INSERT INTO tb_personagens
(nome, nivel, poder_ataque, poder_defesa, classe_id)
VALUES
("Cecilia", 35, 2500, 1800, 1),
("Arthur", 40, 3200, 2500, 2),
("Merlin", 50, 4000, 1500, 3),
("Caio", 28, 1900, 1200, 4),
("Beatriz", 33, 2100, 1700, 5),
("Carlos", 25, 1700, 1100, 1),
("Camila", 45, 3500, 2200, 2),
("Cristina", 38, 2600, 1900, 3);

SELECT * FROM tb_personagens
WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens
WHERE nome LIKE "%C%";

SELECT * FROM tb_personagens
INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens
INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id
WHERE nome_classe = "Arqueiro";