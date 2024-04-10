create database tb_empresa;
use tb_empresa;

create table tb_dados(
id bigint auto_increment,
nome varchar(30) not null,
idade int not null,
nascimento varchar(10)  not null,
funcao varchar(255) not null,
salario decimal(10,2) not null,
primary key (id)
); 

INSERT INTO tb_dados (nome, idade, nascimento, funcao, salario)
VALUES ('Maria', 26, '1996-10-01', 'recepcionista', 2000),
       ('Joao', 31, '1993-07-23', 'gerente', 3000),
       ('Rosa', 27, '1995-11-11', 'consultora', 3500),
       ('Paula', 30, '1994-10-01', 'analista', 4000),
       ('Carlos', 35, '1989-08-26', 'Pleno', 8000),
       ('Ricardo', 30, '1993-10-05', 'Pleno', 8000),
       ('Joana', 28, '1996-10-25', 'recrutadora', 4000);
       

update tb_dados set salario = 2200 where id = 1;