/* CRIANDO BANCO DE DADOS */
CREATE DATABASE LIVRARIA;

/* CONECTANDO-SE AO BANCO */
USE LIVRARIA;
 
/* CRIANDO A TABELA DE LIVROS */
 CREATE TABLE LIVROS(
    LIVRO VARCHAR(30),
    AUTOR VARCHAR(50),
    SEXO CHAR (1),
    PAGINAS INT(4),
    EDITORA VARCHAR(30),
    VALOR VARCHAR(8),
    UF CHAR(2),
    ANO INT(4)
     );

/* VERIFICANDO AS TABELAS DO BANCO */
SHOW TABLES;

/* DESCREVENDO A ESTRUTURA DA TABELA */
DESC LIVROS;

/* INSERÇÃO */
INSERT INTO LIVROS VALUES ('CAVALEIRO REAL', 'ANA CLAUDIA', 'F', '465', 'ATLAS','R$49,90', 'RJ', '2009');
INSERT INTO LIVROS VALUES ('SQL PARA LEIGOS', 'JOÃO NUNES', 'M', '450', 'ADDISON', 'R$98,00', 'SP', '2018');
INSERT INTO LIVROS VALUES ('RECEITAS CASEIRAS', 'CELIA TAVARES', 'F', '210', 'ATLAS', 'R$45,00', 'RJ', '2008');
INSERT INTO LIVROS VALUES ('PESSOAS EFETIVAS', 'EDUARDO SANTOS', 'M', '390', 'BETA', 'R$78,99', 'RJ', '2018');
INSERT INTO LIVROS VALUES ('HÁBITOS SAUDÁVEIS', 'EDUARDO SANTOS', 'M', '630', 'BETA', 'R$150,98', 'RJ', '2019');
INSERT INTO LIVROS VALUES ('A CASA MARROM', 'HERMES MACEDO', 'M', '250', 'BUBBA', 'R$60,00', 'MG', '2016');
INSERT INTO LIVROS VALUES ('ESTACIO QUERIDO', 'GERALDO FRANCISCO', 'M', '310', 'INSIGNIA', 'R$100,00', 'ES', '2015');
INSERT INTO LIVROS VALUES ('PRA SEMPRE AMIGAS', 'LEDA SILVA', 'F', '510', 'INSIGNIA', 'R$78,98', 'ES', '2011');
INSERT INTO LIVROS VALUES ('COPAS INESQUECÍVEIS', 'MARCO ALCANTARA', 'M', '200', 'LARSON', 'R$130,98', 'RS', '2018');
INSERT INTO LIVROS VALUES ('O PODER DA MENTE', 'CLARA MAFRA', 'F', '120', 'CONTINENTAL', 'R$56,58', 'RS', '2017');

/* TRAZER TODOS OS DADOS */
SELECT * FROM LIVROS;

/* TRAZER O NOME DO LIVRO E O NOME DA EDITORA */
SELECT LIVRO, EDITORA FROM LIVROS;

/* TRAZER O NOME DO LIVRO E A UF DOS LIVROS PUBLICADOS POR AUTORES DO SEXO MASCULINO */
SELECT LIVRO, UF FROM LIVROS WHERE SEXO = 'M';

/* TRAZER O NOME DO LIVRO E O NÚMERO DE PÁGINAS DOS LIVROS PÚBLICADOS POR AUTORES DO SEXO FEMININO */
SELECT LIVRO, PAGINAS FROM LIVROS WHERE SEXO = 'F';

/* TRAZER OS VALORES DOS LIVROS DAS EDITORAS DE SÃO PAULO */
SELECT VALOR FROM LIVROS WHERE UF = 'SP';

/* TRAZER OS DADOS DOS AUTORES DO SEXO MACULINO QUE TIVERAM LIVROS PUBLICADOS POR SÃO PAULO OU RIO DE JANEIRO */
SELECT AUTOR, SEXO FROM LIVROS WHERE SEXO = 'M' AND (UF = 'SP' OR UF ='RJ');
