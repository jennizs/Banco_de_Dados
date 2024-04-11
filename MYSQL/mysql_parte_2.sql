

CREATE TABLE tb_categorias(
	id bigint AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias (descricao)
VALUES ("Frutas");

INSERT INTO tb_categorias (descricao)
VALUES ("Verduras");

INSERT INTO tb_categorias (descricao)
VALUES ("Legumes");

INSERT INTO tb_categorias (descricao)
VALUES ("Temperos");

INSERT INTO tb_categorias (descricao)
VALUES ("Ovos");

INSERT INTO tb_categorias (descricao)
VALUES ('Outros');

select * from tb_produtos;
select * from tb_categorias;


select * from tb_produtos;
select * from tb_categorias;

-- Modificando a Estrutura da Tabela - Criando o Relacionamento
alter table tb_produtos add categoria_id bigint;

alter table tb_produtos add constraint fk_produtos_categorias 
foreign key(categoria_id) references tb_categorias(id);

-- vamos atualizar os dados

UPDATE tb_produtos SET categoria_id = 3 WHERE id = 1;
UPDATE tb_produtos SET categoria_id = 1 WHERE id = 2;
UPDATE tb_produtos SET categoria_id = 1 WHERE id = 3;
UPDATE tb_produtos SET categoria_id = 1 WHERE id = 4;
UPDATE tb_produtos SET categoria_id = 1 WHERE id = 5;
UPDATE tb_produtos SET categoria_id = 1 WHERE id = 6;

-- vamos atualizar os dados

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES ("Grapefruit", 3000, "2022-03-13", 50.00, 1);

INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);

INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);

select * from tb_produtos;

-- SELECT com ORDER BY
select * from tb_produtos order by categoria_id asc;

select * from tb_produtos order by categoria_id desc;

-- elecionando dados dentro de uma lista de critérios

SELECT * FROM tb_produtos WHERE preco IN (5.00, 10.00, 15.00);

-- Selecionando dados dentro de um intervalo

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 15.00;


SELECT * FROM tb_produtos WHERE nome not LIKE  "a%";

SELECT * FROM tb_produtos WHERE preco REGEXP '[^0-9a-zA-Z ]';

-- Relacionamento entre Tabelas

-- INNER JOIN

SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

-- LEFT  JOIN

SELECT nome, tb_categorias.descricao
FROM tb_produtos LEFT JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

-- RIGHT JOIN

SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos RIGHT JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;







