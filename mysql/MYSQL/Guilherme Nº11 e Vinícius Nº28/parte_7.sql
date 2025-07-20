CREATE TABLE morto (
CODFUN INT PRIMARY KEY,
NOME VARCHAR(40),
DEPTO CHAR( 2),
FUNCAO CHAR(20),
SALARIO DECIMAL(10, 2),
ADMISSAO DATE
);

##igual##
desc morto;
show columns from morto;
##igual##


##--------------
INSERT INTO morto 
(select *from cadfun where codfun=12);
##arquivo morto

select *from morto;

#
delete from cadfun where codfun=12;
#

#é pra deletar tudo
truncate table morto;
##

#comparando uma tabela com a outra
select salario from cadfun where salario = (select salario from morto);
###########
