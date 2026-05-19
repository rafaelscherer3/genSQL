DROP DATABASE db_ESCOLA; 

CREATE DATABASE db_ESCOLA;

USE db_ESCOLA;


	CREATE TABLE tb_estudantes(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	idade INT,
    turma VARCHAR(50),
	nota DECIMAL(4,2) NOT NULL, 
    datamatricula DATE,
    
    PRIMARY KEY (id)
);
 
INSERT INTO tb_estudantes
(nome, idade, turma, nota, datamatricula)
VALUES
("Ana Silva", 15, "1A", 8.5, "2024-02-01"),
("Carlos Souza", 16, "2B", 7.8, "2023-02-05"),
("Mariana Lima", 14, "1A", 9.2, "2024-02-01"),
("João Pereira", 17, "3C", 6.9, "2022-02-10"),
("Fernanda Rocha", 15, "2B", 8.0, "2023-02-05"),
("Lucas Almeida", 16, "3C", 7.5, "2022-02-10"),
("Beatriz Santos", 14, "1A", 9.7, "2024-02-01"),
("Gabriel Costa", 15, "2B", 6.8, "2023-02-05");


select * from tb_estudantes 
where nota > 7.0;

select * from tb_estudantes 
where nota < 7.0;

UPDATE tb_estudantes
set idade = 37
where id = 5;