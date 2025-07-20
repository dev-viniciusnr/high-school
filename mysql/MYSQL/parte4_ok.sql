SELECT *FROM cadfun WHERE DEPTO = '3';

####################################################

SELECT NOME, SALARIO FROM cadfun ORDER BY DEPTO,NOME;

SELECT * FROM cadfun where depto='5' ORDER BY NOME;

#CONSULTAR NOME E DEPTO AO MESMO TEMPO

SELECT *FROM CADFUN WHERE CODFUN= 7;
UPDATE cadfun SET SALARIO = 2300.56 WHERE CODFUN = 7;

UPDATE cadfun SET DEPTO = '3' WHERE NOME = 'ANA BASTOS';

update cadfun set salario = salario *1.10;

select salario from cadfun;

desc cadfun;

select distinct depto from cadfun;

select nome from cadfun where nome like '%SILVA';

 


