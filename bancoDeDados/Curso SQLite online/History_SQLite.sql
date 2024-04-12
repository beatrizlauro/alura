--- 01-04-2024 14:41:23
--- SQLite
DROP TABLE demo;

--- 01-04-2024 14:41:28
--- SQLite
CREATE TABLE alunos(
  ID_aluno INT PRIMARY KEY,
  nome_aluno VARCHAR (250),
  data_nascimento DATE,
  genero CHAR,
  endereco VARCHAR (250),
  telefone INT,
  email VARCHAR (40)
);

CREATE TABLE professores(
  ID_professor INT PRIMARY KEY,
  nome_professor VARCHAR (250),
  data_nascimento DATE,
  genero CHAR,
  telefone INT,
  email VARCHAR (40)
);

CREATE TABLE disciplinas(
  ID_disciplina INT PRIMARY KEY,
  nome_disciplina VARCHAR (50),
  descricao VARCHAR (200),
  carga_horaria TIME,
  ID_professor INT,
  FOREIGN KEY (ID_professor) REFERENCES professores (ID_professor)
);

create table turmas(
  ID_turma INT PRIMARY KEY,
  nome_turma VARCHAR (50),
  ano_letivo INT,
  orientador VARCHAR (250),
  foreign key (orientador) references professores (id_professor)
);
  
create table turmas_disciplinas(
  ID_turma INT,
  ID_disciplina INT,
  PRIMARY KEY (ID_turma, ID_disciplina),
  FOREIGN KEY (ID_turma) REFERENCES turmas (ID_turma),
  FOREIGN KEY (ID_disciplina) references disciplinas (ID_disciplina)
);

create table turma_alunos(
  ID_turma INT,
  ID_aluno INT,
  PRIMARY KEY (ID_turma, ID_aluno),
  FOREIGN KEY (ID_turma) references turmas (ID_turma),
  foreign key (ID_aluno) REFERENCES alunos (ID_aluno)
);

CREATE table notas(
  ID_nota INT PRIMARY KEY,
  ID_aluno INT,
  ID_disciplina INT, 
  nota INT,
  data_avaliacao DATE,
  FOREIGN KEY (ID_aluno) references alunos (id_aluno),
  foreign KEY (id_disciplina) REFERENCES disciplinas (id_disciplina)
);

--- 01-04-2024 14:41:30
--- SQLite.2
INSERT INTO alunos (ID_aluno, nome_aluno, data_nascimento, genero, endereco, telefone, email) 
VALUES (1,'João Silva','2005-03-15','M','Rua das Flores, 123',98765432,'joao@email.com'), 
 (2,'Maria Santos','2006-06-20','F','Avenida Principal, 456',87654321,'maria@email.com'), 
 (3,'Pedro Soares','2004-01-10','M','Rua Central, 789',76543210,'pedro@email.com'), 
 (4,'Ana Lima','2005-04-02','F','Rua da Escola, 56',87654321,'ana@email.com'), 
 (5,'Mariana Fernandes','2005-08-12','F','Avenida da Paz, 789',56781234,'mariana@email.com'), 
 (6,'Lucas Costa','2003-11-25','M','Rua Principal, 456',12345678,'lucas@email.com'), 
 (7,'Isabela Santos','2006-09-10','F','Rua da Amizade, 789',98765432,'isabela@email.com'), 
 (8,'Gustavo Pereira','2004-05-15','M','Avenida dos Sonhos, 123',76543210,'gustavo@email.com'), 
 (9,'Carolina Oliveira','2005-02-20','F','Rua da Alegria, 456',87654321,'carolina@email.com'), 
 (10,'Daniel Silva','2003-10-05','M','Avenida Central, 789',12345678,'daniel@email.com'), 
 (11,'Larissa Souza','2004-12-08','F','Rua da Felicidade, 123',98765432,'larissa@email.com'), 
 (12,'Bruno Costa','2005-07-30','M','Avenida Principal, 456',76543210,'bruno@email.com'), 
 (13,'Camila Rodrigues','2006-03-22','F','Rua das Estrelas, 789',87654321,'camila@email.com'), 
 (14,'Rafael Fernandes','2004-11-18','M','Avenida dos Sonhos, 123',12345678,'rafael@email.com'), 
 (15,'Letícia Oliveira','2005-01-05','F','Rua da Alegria, 456',98765432,'leticia@email.com'), 
 (16,'Fernanda Lima','2004-02-12','F','Rua da Esperança, 789',45678901,'fernanda@email.com'), 
 (17,'Vinícius Santos','2003-07-28','M','Avenida da Amizade, 123',89012345,'vinicius@email.com'), 
 (18,'Juliana Pereira','2006-09-01','F','Rua das Rosas, 789',34567890,'juliana@email.com');
 
 select * from alunos;

--- 01-04-2024 14:41:41
--- SQLite.3
/***** ERROR ******
near ";": syntax error
 ----- 
alter table disciplinas;
 drop column carga_horaria;
*****/

--- 01-04-2024 14:41:49
--- SQLite.3
alter table disciplinas
 drop column carga_horaria;

--- 01-04-2024 14:42:32
--- SQLite.3
alter table disciplinas
 add column carga_horaria INT;

--- 01-04-2024 14:42:42
--- SQLite.3
INSERT INTO disciplinas (ID_Disciplina, Nome_Disciplina, Descricao, Carga_Horaria, ID_Professor) 
VALUES (1,'Matemática','Estudo de conceitos matemáticos avançados', 60, 1), 
 (2,'História','História mundial e local', 45, 2), 
 (3,'Física','Princípios fundamentais da física', 60, 1), 
 (4,'Química','Estudo da química e suas aplicações', 45, 3), 
 (5,'Inglês','Aulas de inglês para iniciantes', 45, 4), 
 (6,'Artes','Exploração da criatividade artística', 30, 5);

--- 01-04-2024 14:42:58
--- SQLite.3
/***** ERROR ******
table 'professores' already exists
 ----- 
CREATE TABLE 'professores' ('ID_Professor' INTEGER,'Nome_Professor' TEXT,'Data_Nascimento' TEXT,'Genero' TEXT,'Telefone_Contato' TEXT,'Email' TEXT);
INSERT INTO 'professores' ('ID_Professor','Nome_Professor','Data_Nascimento','Genero','Telefone_Contato','Email') VALUES 
 ('1','Ana Oliveira','1980-05-25','Feminino','(11) 1234-5678','ana@email.com'), 
 ('2','Carlos Ferreira','1975-09-12','Masculino','(11) 2345-6789','carlos@email.com'), 
 ('3','Mariana Santos','1982-03-15','Feminino','(11) 3456-7890','mariana@email.com'), 
 ('4','Ricardo Silva','1978-08-20','Masculino','(11) 7890-1234','ricardo@email.com'), 
 ('5','Fernanda Lima','1985-01-30','Feminino','(11) 4567-8901','fernanda@email.com');
*****/

--- 01-04-2024 14:45:40
--- SQLite.3
INSERT INTO professores (ID_professor, nome_professor, data_nascimento, genero, telefone, email) 
VALUES (1,'Ana Oliveira','1980-05-25','F',12345678,'ana@email.com'), 
 (2,'Carlos Ferreira','1975-09-12','M',23456789,'carlos@email.com'), 
 (3,'Mariana Santos','1982-03-15','F',34567890,'mariana@email.com'), 
 (4,'Ricardo Silva','1978-08-20','M',78901234,'ricardo@email.com'), 
 (5,'Fernanda Lima','1985-01-30','Fe',45678901,'fernanda@email.com');

--- 01-04-2024 14:46:00
--- SQLite.3
select * from professores;

--- 01-04-2024 14:46:11
--- SQLite.3
select * from disciplinas;

--- 01-04-2024 14:46:53
--- SQLite.4
/***** ERROR ******
table 'notas' already exists
 ----- 
CREATE TABLE 'notas' ('ID_Nota' INTEGER,'ID_Disciplina' INTEGER,'ID_Aluno' INTEGER,'Nota' REAL,'Data' TEXT);
INSERT INTO 'notas' ('ID_Nota','ID_Disciplina','ID_Aluno','Nota','Data') VALUES 
 ('2','1','1','6.19','7/7/2023'), 
 ('3','1','2','7.18','7/7/2023'), 
 ('4','1','3','7.47','7/7/2023'), 
 ('5','1','4','7.46','7/7/2023'), 
 ('6','1','5','4.35','7/7/2023'), 
 ('7','1','6','4.43','7/7/2023'), 
 ('8','1','7','0.76','7/7/2023'), 
 ('9','1','8','9.22','7/7/2023'), 
 ('10','1','9','9.4','7/7/2023'), 
 ('11','1','10','3.28','7/7/2023'), 
 ('12','2','1','1.34','9/7/2023'), 
 ('13','2','2','03.01','9/7/2023'), 
 ('14','2','3','1.66','9/7/2023'), 
 ('15','2','4','0.03','9/7/2023'), 
 ('16','2','5','4.34','9/7/2023'), 
 ('17','2','6','04.02','9/7/2023'), 
 ('18','2','7','8.79','9/7/2023'), 
 ('19','2','8','1.17','9/7/2023'), 
 ('20','2','9','8.26','9/7/2023'), 
 ('21','2','10','3.41','9/7/2023'), 
 ('22','3','1','6.82','27/7/2023'), 
 ('23','3','2','8.21','27/7/2023'), 
 ('24','3','3','01.03','27/7/2023'), 
 ('25','3','4','4.1','27/7/2023'), 
 ('26','3','5','0.25','27/7/2023'), 
 ('27','3','6','6.63','27/7/2023'), 
 ('28','3','7','9.74','27/7/2023'), 
 ('29','3','8','3.77','27/7/2023'), 
 ('30','3','9','0.58','27/7/2023'), 
 ('31','3','10','8.52','27/7/2023'), 
 ('32','4','1','8.37','8/8/2023'), 
 ('33','4','2','0.26','8/8/2023'), 
 ('34','4','3','5.95','8/8/2023'), 
 ('35','4','4','6.98','8/8/2023'), 
 ('36','4','5','6.18','8/8/2023'), 
 ('37','4','6','4.79','8/8/2023'), 
 ('38','4','7','7.96','8/8/2023'), 
 ('39','4','8','0.62','8/8/2023'), 
 ('40','4','9','7.77','8/8/2023'), 
 ('41','4','10','5.81','8/8/2023'), 
 ('42','5','1','2.25','15/8/2023'), 
 ('43','5','2','5.82','15/8/2023'), 
 ('44','5','3','4.11','15/8/2023'), 
 ('45','5','4','7.99','15/8/2023'), 
 ('46','5','5','3.23','15/8/2023'), 
 ('47','5','6','08.09','15/8/2023'), 
 ('48','5','7','8.24','15/8/2023'), 
 ('49','5','8','3.33','15/8/2023'), 
 ('50','5','9','4.24','15/8/2023'), 
 ('51','5','10','0.11','15/8/2023');
*****/

--- 01-04-2024 14:55:29
--- SQLite.4
alter table notas
 drop column nota;

--- 01-04-2024 14:55:52
--- SQLite.4
alter table notas
 add column nota FLOAT;

--- 01-04-2024 14:55:58
--- SQLite.4
INSERT INTO notas (ID_nota, ID_disciplina, ID_aluno, nota, data_avaliacao) 
VALUES (2,1,1,6.19,'7/7/2023'), 
 (3,1,2,7.18,'7/7/2023'), 
 (4,1,3,7.47,'7/7/2023'), 
 (5,1,4,7.46,'7/7/2023'), 
 (6,1,5,4.35,'7/7/2023'), 
 (7,1,6,4.43,'7/7/2023'), 
 (8,1,7,0.76,'7/7/2023'), 
 (9,1,8,9.22,'7/7/2023'), 
 (10,1,9,9.4,'7/7/2023'), 
 (11,1,10,3.28,'7/7/2023'), 
 (12,2,1,1.34,'9/7/2023'), 
 (13,2,2,03.01,'9/7/2023'), 
 (14,2,3,1.66,'9/7/2023'), 
 (15,2,4,0.03,'9/7/2023'), 
 (16,2,5,4.34,'9/7/2023'), 
 (17,2,6,04.02,'9/7/2023'), 
 (18,2,7,8.79,'9/7/2023'), 
 (19,2,8,1.17,'9/7/2023'), 
 (20,2,9,8.26,'9/7/2023'), 
 (21,2,10,3.41,'9/7/2023'), 
 (22,3,1,6.82,'27/7/2023'), 
 (23,3,2,8.21,'27/7/2023'), 
 (24,3,3,01.03,'27/7/2023'), 
 (25,3,4,4.1,'27/7/2023'), 
 (26,3,5,0.25,'27/7/2023'), 
 (27,3,6,6.63,'27/7/2023'), 
 (28,3,7,9.74,'27/7/2023'), 
 (29,3,8,3.77,'27/7/2023'), 
 (30,3,9,0.58,'27/7/2023'), 
 (31,3,10,8.52,'27/7/2023'), 
 (32,4,1,8.37,'8/8/2023'), 
 (33,4,2,0.26,'8/8/2023'), 
 (34,4,3,5.95,'8/8/2023'), 
 (35,4,4,6.98,'8/8/2023'), 
 (36,4,5,6.18,'8/8/2023'), 
 (37,4,6,4.79,'8/8/2023'), 
 (38,4,7,7.96,'8/8/2023'), 
 (39,4,8,0.62,'8/8/2023'), 
 (40,4,9,7.77,'8/8/2023'), 
 (41,4,10,5.81,'8/8/2023'), 
 (42,5,1,2.25,'15/8/2023'), 
 (43,5,2,5.82,'15/8/2023'), 
 (44,5,3,4.11,'15/8/2023'), 
 (45,5,4,7.99,'15/8/2023'), 
 (46,5,5,3.23,'15/8/2023'), 
 (47,5,6,08.09,'15/8/2023'), 
 (48,5,7,8.24,'15/8/2023'), 
 (49,5,8,3.33,'15/8/2023'), 
 (50,5,9,4.24,'15/8/2023'), 
 (51,5,10,0.11,'15/8/2023');

--- 01-04-2024 14:56:16
--- SQLite.4
SELECT * FROM notas;

--- 01-04-2024 14:56:53
--- SQLite.4
/***** ERROR ******
table 'turmas' already exists
 ----- 
CREATE TABLE 'turmas' ('ID_Turma' INTEGER,'Nome_Turma' TEXT,'Ano_Letivo' INTEGER,'ID_Professor_Orientador' INTEGER);
INSERT INTO 'turmas' ('ID_Turma','Nome_Turma','Ano_Letivo','ID_Professor_Orientador') VALUES 
 ('1','Turma A','2023','1'), 
 ('2','Turma B','2023','2'), 
 ('3','Turma C','2023','3'), 
 ('4','Turma D','2023','4'), 
 ('5','Turma E','2023','5');
*****/

--- 01-04-2024 14:58:13
--- SQLite.4
/***** ERROR ******
error in table turmas after drop column: unknown column "orientador" in foreign key definition
 ----- 
alter table turmas
 drop column orientador;
*****/

--- 01-04-2024 14:58:27
--- SQLite.4
/***** ERROR ******
no such column: "orientador"
 ----- 
alter table professores
 drop column orientador;
*****/

--- 01-04-2024 14:58:47
--- SQLite.4
/***** ERROR ******
error in table turmas after drop column: unknown column "orientador" in foreign key definition
 ----- 
alter table turmas
 drop column orientador;
*****/

--- 01-04-2024 14:59:49
--- SQLite.4
INSERT INTO turmas (ID_turma, nome_turma, ano_letivo, orientador) 
VALUES (1,'Turma A',2023,1), 
 (2,'Turma B',2023,2), 
 (3,'Turma C',2023,3), 
 (4,'Turma D',2023,4), 
 (5,'Turma E',2023,5);

--- 01-04-2024 14:59:51
--- SQLite.4
SELECT * FROM notas;

--- 01-04-2024 15:00:05
--- SQLite.4
SELECT * FROM turmas;

--- 01-04-2024 15:00:17
--- SQLite.4
CREATE TABLE 'turma_disciplinas' ('ID_Turma' INTEGER,'ID_Disciplina' INTEGER);
INSERT INTO 'turma_disciplinas' ('ID_Turma','ID_Disciplina') VALUES 
 ('1','1'), 
 ('2','2'), 
 ('3','3'), 
 ('4','4'), 
 ('5','5'), 
 ('1','3'), 
 ('2','1'), 
 ('3','2');

--- 01-04-2024 15:00:27
--- SQLite.4
DROP TABLE turmas_disciplinas;

--- 01-04-2024 15:01:22
--- SQLite.4
INSERT INTO turma_disciplinas (ID_turma,ID_disciplina) 
VALUES (1,1), 
 (2,2), 
 (3,3), 
 (4,4), 
 (5,5), 
 (1,3), 
 (2,1), 
 (3,2);

--- 01-04-2024 15:01:35
--- SQLite.4
select * from turma_disciplinas;

--- 01-04-2024 15:01:56
--- SQLite.4
/***** ERROR ******
table 'turma_alunos' already exists
 ----- 
CREATE TABLE 'turma_alunos' ('ID_Turma' INTEGER,'ID_Aluno' INTEGER);
INSERT INTO 'turma_alunos' ('ID_Turma','ID_Aluno') VALUES 
 ('1','1'), 
 ('2','2'), 
 ('3','3'), 
 ('4','4'), 
 ('5','5'), 
 ('1','6'), 
 ('2','7'), 
 ('3','8'), 
 ('4','9'), 
 ('5','10');
*****/

--- 01-04-2024 15:03:10
--- SQLite.4
INSERT INTO turma_alunos (ID_turma,ID_aluno) 
VALUES (1,1), 
 (2,2), 
 (3,3), 
 (4,4), 
 (5,5), 
 (1,6), 
 (2,7), 
 (3,8), 
 (4,9), 
 (5,10);

--- 01-04-2024 15:03:20
--- SQLite.4
select * from turma_alunos;

--- 01-04-2024 15:03:52
--- SQLite.2
select * from alunos order by nome_aluno;

--- 01-04-2024 15:04:12
--- SQLite.3
select * from disciplinas where carga_horaria > 40;

--- 01-04-2024 15:04:56
--- SQLite.4
SELECT * FROM notas where nota BETWEEN 6 and 8;

