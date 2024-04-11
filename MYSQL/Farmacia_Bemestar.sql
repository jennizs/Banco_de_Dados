create database tb_farmacia_bem_estar;
use tb_farmacia_bem_estar;

create table tb_produtos(
id bigint auto_increment,
nome varchar(30) not null,
preco DECIMAL(10, 2) NOT NULL,
estoque DECIMAL(10, 2) NOT NULL,
validade date,
categoriasid bigint,
primary key (id)
); 

create table tb_categoria(
id bigint auto_increment,
tipo varchar(30) not null,
descricao varchar(255) NOT NULL,
primary key (id)
); 

INSERT INTO tb_produtos(nome, preco, estoque, validade, categoriasid) 
VALUES ("Shampoo", 30.00, 12, "2025-10-15", 1),
("Batom", 20.00, 20, "2024-12-26", 1),
("Vitamina C", 50.00, 30, "2026-12-26", 2),
("Analgésico", 20.00, 23, "2027-11-15",3),
("Curativo", 12.00, 50, "2025-10-15", 4),
("Xarope", 5.00, 10, "2026-05-15", 2),
("Algodão", 8.00, 15, "2025-07-15", 4),
("Antibiotico", 38.00, 28, "2024-09-15", 2); 


INSERT INTO tb_categoria(tipo, descricao) 
VALUES ("Cosmetico", "Para Beleza"),
("Analgesico", "Saude"),
("Curativos", "Usado para ferimentos"),
("Vitaminas", "Suplementos"); 
 
 
 alter table tb_produtos add categoria_id bigint;

alter table tb_produtos add constraint fk_produtos_categoria
foreign key(categoria_id) references tb_categoria(id);
 

   SELECT * FROM tb_produtos;

  select* from tb_produtos where preco > 50.00;
  select* from tb_produtos where preco between 5.00 and 60.00;
  select* from tb_produtos where nome like '%C%';
 
  SELECT tb_produtos.nome, tb_produtos.preco, tb_produtos.estoque, tb_produtos.validade, tb_categoria.tipo, tb_categoria.descricao
  FROM tb_produtos INNER JOIN tb_categoria 
  ON tb_produtos.categoriasid = tb_categoria.id
  WHERE tb_categoria.tipo = 'Cosmetico';


    SELECT * FROM tb_categoria;

