DROP DATABASE db_pizzaria_legal;

CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(255) NOT NULL,
    tamanho VARCHAR(50) NOT NULL,
    
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    ingredientes VARCHAR(255),
    borda_recheada BOOLEAN,
    valor DECIMAL(6,2) NOT NULL,
    categoria_id BIGINT,
    
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome_categoria, tamanho)
VALUES
("Salgada", "Grande"),
("Doce", "Média"),
("Vegetariana", "Grande"),
("Especial", "Família"),
("Tradicional", "Pequena");

INSERT INTO tb_pizzas
(nome, ingredientes, borda_recheada, valor, categoria_id)
VALUES
("Mussarela", "Queijo e molho de tomate", true, 49.90, 5),
("Calabresa", "Calabresa e cebola", false, 52.00, 1),
("Marguerita", "Queijo, tomate e manjericão", true, 58.00, 1),
("Chocolate", "Chocolate ao leite", false, 65.00, 2),
("Morango com Nutella", "Morango e Nutella", true, 89.90, 2),
("Portuguesa", "Presunto, ovo e cebola", false, 54.50, 5),
("Vegetariana Suprema", "Legumes e queijo", true, 72.00, 3),
("Moda da Casa", "Ingredientes especiais", true, 99.90, 4);

SELECT * FROM tb_pizzas
WHERE valor > 45.00;

SELECT * FROM tb_pizzas
WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas
WHERE nome LIKE "%M%";

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id
WHERE nome_categoria = "Doce";