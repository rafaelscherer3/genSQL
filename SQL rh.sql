DROP DATABASE db_RH; 

CREATE DATABASE db_RH;

USE db_RH;

CREATE TABLE tb_categorias(
	id bigint AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR(255) NOT NULL
);

	CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	cargo VARCHAR(100) NOT NULL,
    salario DECIMAL(6,2) NOT NULL,
	departamento VARCHAR(100), 
    datacontratacao DATE,
    
    PRIMARY KEY (id)
);
 
INSERT INTO tb_categorias (descricao)
VALUES ("Nome");

INSERT INTO tb_categorias (descricao)
VALUES ("Cargo");

INSERT INTO tb_categorias (descricao)
VALUES ("Salario");

INSERT INTO tb_categorias (descricao)
VALUES ("Departamento");

INSERT INTO tb_categorias (descricao)
VALUES ("DataContratacao");

INSERT INTO tb_colaboradores
(nome, cargo, salario, departamento, datacontratacao)
VALUES
("Carlos Silva", "Analista RH", 3500.00, "Recursos Humanos", "2023-01-10"),
("Mariana Souza", "Desenvolvedora", 5500.00, "TI", "2022-05-15"),
("João Pereira", "Assistente Administrativo", 2500.00, "Administrativo", "2024-02-20"),
("Fernanda Lima", "Gerente Financeiro", 7200.00, "Financeiro", "2021-09-01"),
("Lucas Almeida", "Suporte Técnico", 3000.00, "TI", "2023-11-08");



select * from tb_colaboradores 
where salario > 2000;

select * from tb_colaboradores 
where salario < 2000;

UPDATE tb_colaboradores
set salario = 1999
where id = 5;
