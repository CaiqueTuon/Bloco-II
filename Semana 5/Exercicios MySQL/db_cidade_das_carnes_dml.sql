USE db_cidade_das_carnes;


INSERT INTO tb_categoria (tipo,porte,em_estoque) 
VALUES
("Carne de Boi", "Adulto",true), 
("Carne de Frango", "Adulto",true), 
("Queijo de Minas", "Grande",true), 
("Carne Seca", "Pacote",false), 
("Carne de Porco", "Magro",true);

INSERT INTO tb_produto (nome,preço,quantidade,qualidade,fk_categoria_id) 
VALUES
("Coxinha",5.00,1.00,"Primeira",2),
("Lombo",20.00,1.00,"Primeira",1),
("Queijo",0.10,1.00,"Segunda",2),
("Toicinho",5.00,1.00,"Primeira",5),
("Salsicha",5.00,1.00,"Terceira",5),
("Bucho",10.00,1.00,"Primeira",1),
("Bife",15.00,1.00,"Segunda",1);

INSERT INTO tb_produto (nome,preço,quantidade,qualidade,fk_categoria_id) 
VALUES("Bochecha da Angela",500.00,0.10,"Premium",3);

SELECT * FROM tb_produto WHERE preço > 50;
SELECT * FROM tb_produto WHERE preço > 3 and preço <60;

SELECT * FROM tb_produto WHERE nome LIKE "C%";

SELECT tb_produto.nome,tb_produto.preço,tb_produto.quantidade, tb_categoria.tipo,tb_categoria.em_estoque
FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.fk_categoria_id = tb_categoria.id;

SELECT tb_produto.nome,tb_produto.preço,tb_produto.quantidade, tb_categoria.tipo,tb_categoria.em_estoque
FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.fk_categoria_id = tb_categoria.id
WHERE tb_categoria.tipo LIKE "Carne de Boi";