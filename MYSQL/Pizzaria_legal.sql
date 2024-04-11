git create database tb_pizzaria_legal;
use tb_pizzaria_legal;

create table tb_pizzas(
id bigint auto_increment,
sabor varchar(30) not null,
preco DECIMAL(10, 2) NOT NULL,
quantidade int not null,
tamanho varchar(30) not null,
categoriasid bigint,
primary key (id)
); 

create table tb_categorias(
id bigint auto_increment,
tipo varchar(30) not null,
descricao varchar(255) not null,
primary key (id)
); 

alter table tb_pizzas add categorias_id bigint;

alter table tb_pizzas add constraint fk_pizzas_categorias 
foreign key(categoriasid) references tb_categorias(id); 

INSERT INTO tb_pizzas (sabor, preco, quantidade, tamanho, categoriasid)
VALUES ('mussarela', 35.00, 1, 'grande', 1),
       ('4queijos', 31.00,  1, 'grande',2),
       ('frango', 27.00, 5, 'grande', 3),
       ('Portuguesa', 30.00, 2, 'grande', 4),
       ('Calabresa', 35.00, 3, 'grande', 5),
       ('Milho', 30.00, 4, 'grande',  5),
	   ('chocolate',100.00, 8, 'grande', 3),
       ('Peperoni', 28.00, 8, 'media', 5);
       
       
       
INSERT INTO tb_categorias (tipo,descricao)
VALUES ('pequena', ' 5 pedaços'),
       ('meio a meio', '6 pedaços'),
       ('broto', '4 pedaços'),
       ('fatia', '1 pedaço'),
       ('tamanho familia', '10 pedaços');
       
       SELECT * FROM tb_pizzas;
        -- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00. 
        select* from tb_pizzas where preco > 45.00;
        -- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00
		select* from tb_pizzas where preco between 45.00 and 100.00;
	    -- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
        select* from tb_pizzas where sabor like '%M%'; 
          
		

  SELECT tb_pizzas.sabor, tb_pizzas.preco, tb_pizzas.quantidade, tb_pizzas.tamanho, tb_categorias.tipo, tb_categorias.descricao
   FROM tb_pizzas INNER JOIN tb_categorias 
  ON tb_pizzas.categoriasid = tb_categorias.id
   WHERE tb_categorias.tipo = 'broto';



