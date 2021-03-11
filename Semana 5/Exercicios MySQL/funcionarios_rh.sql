use rh_servicos;

Create table funcionarios_rh(
	id bigint auto_increment,
    nome varchar (30) not null,
    salario decimal (20,2),
    setor varchar (30) not null,
    telefone long not null,
    primary key (id)

);

insert into funcionarios_rh (nome,salario,setor,telefone) values ("Sofia",2500.00,"Sistemas",999999);
insert into funcionarios_rh (nome,salario,setor,telefone) values ("Alexandre",1900.00,"Advocacia",9929239);
insert into funcionarios_rh (nome,salario,setor,telefone) values ("Marcelo",7000.00,"Gerencia",888888);
insert into funcionarios_rh (nome,salario,setor,telefone) values ("Mia",1500.00,"Limpeza",777777);
insert into funcionarios_rh (nome,salario,setor,telefone) values ("José",2800.00,"Serviços Gerais",555555);

select * from funcionarios_rh where salario >2000;
select * from funcionarios_rh where salario <2000;

update funcionarios_rh set setor = "Administração" where id = 5;