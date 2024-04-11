create database tb_ecommerce;

use tb_ecommerce;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    peso DECIMAL(10, 2) NOT NULL,
    material VARCHAR(255) NOT NULL
);
INSERT INTO tb_produtos (nome, preco, estoque, peso, material)
VALUES ('vela', 26.00, 34, 1.00, 'cera'),
       ('incenso', 18.00, 56, 0.50, 'goma arabica'),
       ('incensario', 35.00, 23, 750.00, 'argila'),
       ('canecas', 60.00, 234, 1.00, 'ceramica'),
       ('porta-joias', 110.00, 54, 5.00, 'porcelana'),
       ('quadro decorativo', 80.00, 6, 2.00, 'madeira'),
       ('caixinha de chá', 25.00, 25, 0.30, 'metal'),
       ('tapete', 150.00, 50, 3.50, 'lã');
       
       SELECT * FROM tb_produtos;
select * from tb_produtos where preco < 500.00;
select * from tb_produtos where preco > 500.00;

-- DML
update tb_produtos set estoque = 20 where id = 27;

       
       