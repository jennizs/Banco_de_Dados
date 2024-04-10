create database tb_escola;

use tb_escola;

CREATE TABLE tb_alunos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    serie INT NOT NULL,
    sala  INT NOT NULL,
    nota  DECIMAL(4,2) NOT NULL
);

INSERT INTO tb_alunos (nome, idade, serie, sala, nota)
VALUES ('Pedro', 12, 6, 114, 8.00),
       ('Larissa', 13, 7, 124, 7.00),
       ('Bernardo', 12, 6, 114, 7.00),
       ('Sabastian', 11, 6, 112, 8.5),
       ('Mariana', 13, 7, 124, 9.00),
       ('Carla', 15, 7, 124, 6.00),
       ('Juliana', 11, 6, 112, 7.5),
       ('Junior', 12, 6, 112, 8.5);
       
              SELECT * FROM tb_alunos;
select * from tb_alunos where nota < 7.0;
select * from tb_alunos where nota > 7.0;

update tb_alunos set nota = 6.5 where id = 6;

