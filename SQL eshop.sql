DROP DATABASE db_eshop; 

CREATE DATABASE db_eshop;

USE db_eshop;

CREATE TABLE tb_categorias(
	id bigint AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR(255) NOT NULL
);

	CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	categoria VARCHAR(100),
    preco DECIMAL(6,2) NOT NULL,
	estoque INT, 
    marca VARCHAR(100),
    
    PRIMARY KEY (id)
);
 


INSERT INTO tb_produtos
(nome, categoria, preco, estoque, marca)
VALUES
("Notebook Gamer", "Informática", 4500.00, 10, "Dell"),
("Smartphone Galaxy", "Celulares", 2800.00, 25, "Samsung"),
("Mouse Sem Fio", "Periféricos", 120.00, 50, "Logitech"),
("Teclado Mecânico", "Periféricos", 350.00, 30, "Redragon"),
("Monitor 24 Polegadas", "Monitores", 899.90, 15, "LG"),
("Headset Gamer", "Áudio", 299.99, 20, "HyperX"),
("Cadeira Gamer", "Móveis", 1200.00, 8, "DXRacer"),
("SSD 1TB", "Armazenamento", 550.00, 40, "Kingston");


select * from tb_produtos
where preco > 500;
select * from tb_produtos
where preco < 500;

UPDATE tb_produtos
set preco = 200
where id = 1;
