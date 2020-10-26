drop table funcionarios;

create database rechumanos;

use rechumanos;

create table funcionarios(
	id int not null auto_increment,
    nome varchar(30) not null,
    sobrenome varchar(40),
    nascimento date,
    sexo enum('M','F'),
    numcamisa enum('P', 'M', 'G'),
    salario double(6,2),
    primary key(id)
	)engine=innodb;
Insert into funcionarios values
(DEFAULT, 'Alex','Silva', '2018-02-03','M','P','1598.34');
Insert into funcionarios (nome,sobrenome,nascimento,sexo,numcamisa,salario)
values('Gabriela','Santos','1998-02-03','F','P','2745.32'),
	  ('João','Guimarães','2000-03-03','M','M','3500.00'),
	  ('Marcio','Guerra','1998-02-04','M','G','1834.50'),
	  ('Marcio','França','1990-05-07','M','G','2000.00');
select * from funcionarios;
select * from funcionarios where salario > 2000;
select * from funcionarios where salario < 2000;

update funcionarios
 set salario = 3500.00
 where salario = 3.5;