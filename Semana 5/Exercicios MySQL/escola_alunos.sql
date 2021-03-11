use escola;

Create table alunos(
	id bigint auto_increment,
    nome varchar (30) not null,
    idade int (10),
    nota decimal(10,2) not null,
	aprovado boolean not null,
    primary key (id)

);

insert into alunos (nome,idade,nota,aprovado) values ("Camila",15,9.7,true);
insert into alunos (nome,idade,nota,aprovado) values ("Caio",17,8,true);
insert into alunos (nome,idade,nota,aprovado) values ("Caique",10,6,true);
insert into alunos (nome,idade,nota,aprovado) values ("Casandra",13,5,false);
insert into alunos (nome,idade,nota,aprovado) values ("Calungria",12,7,true);
insert into alunos (nome,idade,nota,aprovado) values ("Cazalberto",7,5,false);
insert into alunos (nome,idade,nota,aprovado) values ("Camilo",15,3,false);
insert into alunos (nome,idade,nota,aprovado) values ("Cesar",16,8,true);
insert into alunos (nome,idade,nota,aprovado) values ("Conde",11,6,true);

select * from alunos where nota >7;
select * from alunos where nota <7;

update alunos set nota = 7 where id = 7;
select * from alunos;