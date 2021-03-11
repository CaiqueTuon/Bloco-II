use e_commerce;

Create table produtos(
	id bigint auto_increment,
    nome varchar (30) not null,
    preço decimal (10,2),
    marca varchar (20) not null,
    cor varchar(10) not null,
    primary key (id)

);

insert into produtos (nome,preço,marca,cor) values ("Tenis Presto",299,"NIKE","Preto");
insert into produtos (nome,preço,marca,cor) values ("Camisa Grande",599,"Supreme","Vermelho");
insert into produtos (nome,preço,marca,cor) values ("Calça Jeans",300,"Tommy","Azul");
insert into produtos (nome,preço,marca,cor) values ("Boné Anime",40.00,"C&A","Verde");
insert into produtos (nome,preço,marca,cor) values ("Jaqueta Kaneda",1000.00,"JT","Vermelho");
insert into produtos (nome,preço,marca,cor) values ("Oculos Escuro",150.00,"Chilli Beans","Marrom");
insert into produtos (nome,preço,marca,cor) values ("Jaqueta Testsuo",1000.00,"JT","Azul");
insert into produtos (nome,preço,marca,cor) values ("Calça Baggy",199.00,"NijaStudio","Preto");

select * from produtos where preço >500;
select * from produtos where preço <500;

update produtos set marca = "NinjaStudio" where id = 7;
select * from produtos;