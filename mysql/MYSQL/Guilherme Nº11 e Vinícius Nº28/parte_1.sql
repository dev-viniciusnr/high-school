
create database virtualdc;
use virtualdc;


create table cadfun (
codfun int not null primary key,
nome varchar(40) not null,
depto char(2),
funcao char(20),
salario decimal(10,2)

);
/*alter table cadfun 
change column
cadfun codfun int not null;
*/
insert into cadfun (
codfun,
nome,
depto,
funcao,
salario)
values (
12,
'CARLOS ALBERTO',
'3',
'VENDEDOR',
1530.00 
);

/* A PARTIR DAQUI*/

insert into cadfun (
codfun,
nome,
depto,
funcao,
salario)
values (
15,
'MARCOS HENRIQUE',
'2',
'GERENTE',
1985.75
);

insert into cadfun (
codfun,
nome,
depto,
funcao,
salario)
values (
7,
'APARECIDA SILVA',
'3',
'SECRETARIA',
1200.50 
);

insert into cadfun (
codfun,
nome,
depto,
funcao,
salario)
values (
9,
'SOLANGE PACHECO',
'5',
'SUPERVISORA',
1599.51 

);
insert into cadfun (
codfun,
nome,
depto,
funcao,
salario)
values (
6,
'MARCELO SOUZA',
'3',
'ANALISTA',
2250.11 
);
#OK


select *from cadfun;




