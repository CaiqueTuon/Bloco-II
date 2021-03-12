-- Exercicio 1

USE db_generation_game_online;
	INSERT INTO tb_classe (nome,elemento) values ("Arqueiro","Terra");
    INSERT INTO tb_classe (nome,elemento) values("Guerreiro","Fogo");
    INSERT INTO tb_classe (nome,elemento) values("Mago","Ar");
    INSERT INTO tb_classe (nome,elemento) values("Tanque","Relampago");
	INSERT INTO tb_classe (nome,elemento) values ("Curandeiro","Agua");
    
    INSERT INTO tb_personagem(nome,raça,tb_classe_id,poder_ataque,poder_defesa) values 
    ("Amilton","Fenix",2,2020,3000),
    ("Jesus","Homem-Porco",5,200,7000),
    ("XaolinMataPorco","Humano",2,4000,2900),
    ("FlavioDuPneu","Hommem-Gato",4,1900,7000),
    ("Torru","Gato",1,5000,1000),
    ("Marromey","Tartaruga",4,2000,9000),
    ("Angela","Humana",3,4000,4000),
    ("Akeem","Marciano",1,4000,1999);
    
    SELECT * FROM tb_personagem WHERE poder_ataque > 2000;
    SELECT * FROM tb_personagem WHERE poder_defesa > 1000 and poder_defesa <2000;
    SELECT * FROM tb_personagem WHERE nome LIKE "C%";
	
    SELECT tb_personagem.nome,tb_classe.nome FROM tb_classe
    INNER JOIN tb_personagem on tb_personagem.tb_classe_id = tb_classe.id; 