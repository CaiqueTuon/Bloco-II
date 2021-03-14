USE db_farmacia_do_bem;

INSERT INTO tb_categoria (tipo_de_remedio,ativo) VALUE
("Dor de Cabeça",true),
("Remedio Pra Dormir",true),
("Remedio Pra Barriga",true),
("Cosmetico",true),
("Remedio Pro Olho",false);

INSERT INTO tb_produto (nome,valor,composicao,quantidade,tb_categoria_id) VALUE
("Advil",22.00,"ibuprofeno",400,1),
("Parecetamol",10.00,"Povidona",750,1),
("Diasec",4.00,"Cloridrato de loperamida",750,3),
("Esmalte",7.00,"Acetato de Butila",8,4),
("SYSTANE",62.00," hydroxipropil guar 8A",100,8);


INSERT INTO tb_produto (nome,composicao,quantidade,tb_categoria_id) VALUE
("GLIBENCLAMIDA","GLIBENCLAMIDA",100,2),
("Nortriptilina ","Nortriptilina ",400,2),
("Diarresec","Cloridrato de loperamida",750,3);

SELECT * FROM tb_produto WHERE valor > 50;
SELECT * FROM tb_produto WHERE valor > 3 AND valor < 60;
SELECT * FROM tb_produto WHERE nome LIKE "P%";

SELECT tb_produto.nome, tb_produto.valor,tb_categoria.tipo_de_remedio,tb_categoria.ativo
FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.tb_categoria_id = tb_categoria.id;

SELECT tb_produto.nome, tb_produto.valor,tb_categoria.tipo_de_remedio,tb_categoria.ativo
FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.tb_categoria_id = tb_categoria.id
WHERE tb_categoria.tipo_de_remedio LIKE "Cosmetico";