#Exercicio01

#criar banco
create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table if not exists tb_categoria(
id_categoria int not null auto_increment,
tipo varchar(40) not null,
entrega enum("S","N"),
primary key(id_categoria))
engine=innodb;

create table if not exists tb_produto(
id_produto int not null auto_increment,
nome_carne varchar(40),
quantidade_disponivel int,
preco decimal(5,2),
tipo_tb_categoria int not null,
primary key(id_produto),
constraint fk_tb_categoria_tb_produto
	foreign key (tipo_tb_categoria)
	references db_cidade_das_carnes.tb_categoria(id_categoria))
engine=innodb;

#Popule esta tabela Categoria com até 5 dados.
insert into tb_categoria values
(default,"ave","N"),
(default,"churrasco","S"),
(default,"bovina","N"),
(default,"suino","S"),
(default,"peixaria","S");

#Popule esta tabela Produto com até 8 dados.
insert into tb_produto values
(default,"bacalhau","20",40.54,5),
(default,"picanha","100",65.70,2),
(default,"galeto","20",13.77,1),
(default,"picanha","50",50.45,3),
(default,"lombo","20",22.63,4),
(default,"linguiça de pernil","10",15.63,4),
(default,"contra-filé","50",31.43,3),
(default,"patinho moido","20",26.40,3),
(default,"costela","20",19.96,2);

select * from tb_categoria;
select * from tb_produto;

#Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco > 50;

#Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preco > 3 and preco < 60;

#Faça um select  utilizando LIKE buscando os Produtos com as letras CO.
select * from tb_produto where nome_carne like 'co%';

#Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_produto
inner join tb_categoria
on tb_produto.id_produto = tb_categoria.id_categoria;

#Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
select tb_produto.id_produto, tb_produto.nome_carne, tb_produto.preco, tb_categoria.tipo from tb_produto
inner join tb_categoria
on tb_categoria.id_categoria = tb_produto.tipo_tb_categoria
where tb_categoria.tipo like "%bovina%";



