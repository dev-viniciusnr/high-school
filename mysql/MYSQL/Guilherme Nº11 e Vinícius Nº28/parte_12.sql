use virtualdc
SELECT AVG(SALARIO) FROM cadfun;
SELECT AVG(DISTINCT SALARIO) FROM cadfun;
SELECT AVG(SALARIO) FROM cadfun WHERE DEPTO = '3';
SELECT AVG(DISTINCT SALARIO) FROM cadfun WHERE DEPTO = '3';
SELECT COUNT(*) FROM cadfun WHERE DEPTO = '3';
SELECT COUNT(FILHOS) FROM cadfun;
SELECT COUNT(*) FROM cadfun WHERE SALARIO > 2000;
SELECT COUNT(DISTINCT DEPTO) FROM cadfun;
SELECT MAX(SALARIO) FROM cadfun;
SELECT MIN(SALARIO) FROM cadfun;
SELECT STDEV(FILHOS) FROM cadfun;
SELECT STDEV(DISTINCT FILHOS) FROM cadfun;
SELECT SUM(SALARIO) FROM cadfun;
SELECT SUM(FILHOS) FROM cadfun;
SELECT SUM(SALARIO) FROM cadfun WHERE DEPTO = '2';
SELECT VAR(FILHOS) FROM cadfun;

SELECT DATEADD(Month, 1, '26-03-1965');
SELECT DATEADD(Day, 5, '10-02-2007');
SELECT NOME, DATEDIFF(Day, ADMISSAO, '15-09-2006') FROM cadfun;
SELECT NOME, DATEDIFF(Year, ADMISSAO, '15-09-2006') FROM cadfun;
SELECT NOME, DAY(ADMISSAO), MONTH(ADMISSAO), YEAR(ADMISSAO) FROM
cadfun;
SELECT NOME, ADMISSAO, DATENAME(Month, ADMISSAO) FROM cadfun;
SELECT NOME, ADMISSAO, DATEPART(Month, ADMISSAO) FROM cadfun;
SELECT GETDATE();

SELECT ABS(10);
SELECT ABS(-8.238765);
SELECT ABS(-9);
SELECT ACOS(0);
SELECT ACOS(-1);
SELECT ACOS(0.5);
SELECT ASIN(0);
SELECT ASIN(-1);
SELECT ASIN(0.5);
SELECT ATAN(-1);
SELECT ATAN(0.5);

SELECT ATAN(-145);
SELECT COS(-1);
SELECT COS(0.5);
SELECT COS(360);
SELECT COT(ASIN(1));
SELECT COT(ASIN(0.5));
SELECT COT(1);
SELECT COT(0.5);
SELECT DEGREES(ASIN(1));
SELECT DEGREES(ASIN(0.5));
SELECT DEGREES(1);
SELECT DEGREES(-1);
SELECT EXP(3.4);
SELECT EXP(1);
SELECT EXP(-1);
SELECT FLOOR(1.1);
SELECT FLOOR(1.4);
SELECT FLOOR(1.7);
SELECT FLOOR(1.9);
SELECT LOG(3);
SELECT LOG(EXP(10));
SELECT LOG(ASIN(ABS(-0.5)));
SELECT PI();
SELECT PI()/2;
SELECT POWER( 2.0, 3.0);
SELECT POWER( 2, 3);
SELECT POWER(25, 0.5);
SELECT POWER( 2, -3);
SELECT POWER( -2, 3);
SELECT RADIANS(1.0);
SELECT RADIANS(0.5);
SELECT RADIANS(5.0);
SELECT RADIANS(-0.5);
SELECT RAND();

SELECT FLOOR(RAND() * 4 + 1);
SELECT RAND(5);
SELECT RAND();
SELECT RAND();
SELECT SIN(1.0);
SELECT SIN(0.5);
SELECT SQRT(9);
SELECT SQRT(2);
SELECT SQRT(2.5);
SELECT SQRT(25);
SELECT POWER(25.0, 1.0/2.0);
SELECT POWER(25.0, 1.0/3.0);
SELECT POWER(25.0, 1.0/4.0);
SELECT TAN(1);
SELECT TAN(0.5);
====================
FUNÇÕES STRING
====================
SELECT ASCII('A');
SELECT ASCII('B');
SELECT ASCII('ABACATE');
SELECT CHAR(65);
SELECT CHAR(66);
SELECT CHAR(67);
SELECT LEFT('Augusto Manzano', 5);
SELECT LEFT(NOME, 9) FROM cadfun WHERE DEPTO = '2';
SELECT LEN('Augusto Manzano');
SELECT NOME, LEN(NOME) FROM cadfun WHERE DEPTO = '2';
SELECT LOWER('Augusto Manzano');
SELECT LOWER('AUGUSTO Manzano');
SELECT LOWER('Augusto MANZANO');
SELECT NOME, LOWER(NOME) FROM cadfun WHERE DEPTO = '2';
SELECT LTRIM(' SQL Server 2008');
SELECT LTRIM(' Augusto Manzano');
SELECT REPLACE('ABACATE', 'CATE', 'ETE');
SELECT RIGHT('Augusto Manzano', 5);
SELECT RIGHT(NOME, 9) FROM cadfun WHERE DEPTO = '2';
SELECT RTRIM('SQL Server 2008 ');
SELECT RTRIM('Augusto Manzano ');
SELECT SUBSTRING('COMPUTADOR', 4, 4);
SELECT UPPER('Augusto Manzano');
SELECT UPPER('AUGUSTO Manzano');
SELECT UPPER('Augusto MANZANO');
SELECT NOME, UPPER(NOME) FROM cadfun WHERE DEPTO = '2';
==========================
AGRUPAR E UNIR DADOS
==========================
USE virtualdc;
INSERT INTO cadfun VALUES (
1,
'SILVIO DE MENESES',
'2',
'ANALISTA',
2000.00,
'2006-08-10',
1
);
INSERT INTO cadfun VALUES (
6,
'SILVIA DA SILVA',
'5',
'ANALISTA',
2000.00,
'2006-08-10',
3
);
INSERT INTO cadfun VALUES (
8,
'ANTONIO DA SILVA',
'5',
'GERENTE',
2184.33,
'2006-09-05',
2
);
INSERT INTO cadfun VALUES (
10,
'ANTONIA DE CARVALHO',
'5',
'SECRETARIA',
2530.62,
'2006-09-07',
4
);
INSERT INTO cadfun VALUES (
11,
'SILVANA DOS SANTOS',
'4',
'VENDEDOR',
1683.00,
'2006-09-07',
0
);
INSERT INTO cadfun VALUES (
12,
'ANTONIO DOS SANTOS',
'4',
'PROGRAMADOR',
1155.00,
'2006-10-10',
1
);
INSERT INTO cadfun VALUES (
21,
'EPAMINONDAS DA SILVA',
'4',
'PROGRAMADOR',
1155.00,
'2006-10-10',
2
);
UPDATE cadfun SET FILHOS = 0 WHERE CODFUN = 4;
UPDATE cadfun SET FILHOS = 0 WHERE CODFUN = 7;
UPDATE cadfun SET FILHOS = 0 WHERE CODFUN = 15;
UPDATE cadfun SET FILHOS = 0 WHERE CODFUN = 22;
UPDATE cadfun SET FILHOS = 0 WHERE CODFUN = 24;
SELECT NOME, FUNCAO, FILHOS FROM cadfun;
UPDATE cadfun SET FUNCAO = 'SUPERVISOR' WHERE FUNCAO = 'SUPERVISORA';
UPDATE cadfun SET FUNCAO = 'VENDEDOR' WHERE FUNCAO = 'VENDEDORA';
SELECT NOME, FUNCAO, FILHOS FROM cadfun;