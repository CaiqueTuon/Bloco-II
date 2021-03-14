use db_pizzaria_legal;

INSERT INTO tb_categoria (nome,tamanho,valor) VALUE 
("Normal","8 Pedaços",40),
("Grande","12 Pedaços",60),
("Pequeno","6 Pedaços",29),
("Brotinho","4 Pedaços",20),
("Bate-Papo","20 Pedaços",120);

INSERT INTO tb_pizza(nome,sabor,fk_id_categoria) VALUE 
("Peruana","Atum e Mussarela",3),
("Caipira","Frango com Catupiry",5),
("Brocolis","Brocolis e Mussarela",5),
("Frango Teryaki","Frango Teryaki",2),
("Primitive","Carne de Buffalo Mussarela",5);

INSERT INTO tb_pizza(nome,sabor,fk_id_categoria) VALUE 
("Mussarela","Mussarela e Tomate",1),
("Salute","Churrasco de Laje e Mussarela",1),
("Bacon","Bacon e Mussarela",4);


SELECT tb_pizza.nome, tb_pizza.borda, tb_categoria.nome, tb_categoria.valor
FROM tb_pizza
INNER JOIN tb_categoria
ON tb_pizza.fk_id_categoria = tb_categoria.id_categoria
where tb_categoria.valor > 45;


SELECT tb_pizza.nome, tb_pizza.borda, tb_categoria.nome, tb_categoria.valor
FROM tb_pizza
INNER JOIN tb_categoria
ON tb_pizza.fk_id_categoria = tb_categoria.id_categoria
WHERE tb_categoria.valor > 29 AND tb_categoria.valor <60;

SELECT * FROM tb_pizza WHERE nome LIKE "c%";

SELECT tb_pizza.nome, tb_pizza.borda, tb_categoria.nome, tb_categoria.valor
FROM tb_pizza
INNER JOIN tb_categoria
ON tb_pizza.fk_id_categoria = tb_categoria.id_categoria
WHERE tb_categoria.nome LIKE "Bate-Papo";
