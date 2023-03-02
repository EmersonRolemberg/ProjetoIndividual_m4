create database projeto_individual4;
use  projeto_individual4;
#atualizacao 02 de marco 11:39
#atualizacao 02 de marco 18:51

CREATE TABLE Aluno (
  id_matricula int not null primary key auto_increment,
  nome VARCHAR(30) DEFAULT NULL,
  data_nascimento DATE DEFAULT NULL,
  telefone VARCHAR(11)  DEFAULT NULL,
  endereco VARCHAR(50)  DEFAULT NULL,
  genero VARCHAR(20) DEFAULT NULL,
  id_cnpj INT not null,
  id_curso INT not null
  );
  
CREATE TABLE Facilitador (
  id_facilitador INT  not null primary key auto_increment,
  nome varchar (30)  DEFAULT NULL,
  cpf varchar (14)  DEFAULT NULL,
  telefone varchar (11)  DEFAULT NULL ,
  endereco varchar (50)  DEFAULT NULL,
  salario float,
  id_cnpj int not null,
  id_turma int not null
  );  


CREATE TABLE Curso (
  id_curso INT not null primary key auto_increment NOT NULL,
  nome_curso VARCHAR(30)  DEFAULT NULL,
  carga_horaria INT NOT NULL,
  descricao VARCHAR(200)  DEFAULT NULL,
  disciplina varchar (100)  DEFAULT NULL
  );
  

CREATE TABLE turma (
  id_turma INT not null primary key auto_increment ,
  turno VARCHAR(10)  DEFAULT NULL,
  sala VARCHAR(3)  DEFAULT NULL,
  id_curso INT NOT NULL
  );
CREATE TABLE instituicao (
id_cnpj int not null primary key auto_increment,
nome varchar (30) not null,
telefone varchar (11) not null,
endereco varchar (50) not null
);
CREATE TABLE aluno_facilitador(
aluno_facilitador int not null primary key auto_increment,
id_matricula int,
id_facilitador int
);


#comandos FK
ALTER TABLE aluno
ADD CONSTRAINT estuda FOREIGN KEY (id_cnpj) REFERENCES instituicao (id_cnpj);
ALTER TABLE aluno 
ADD CONSTRAINT FOREIGN KEY (id_curso) REFERENCES curso (id_curso);
ALTER TABLE facilitador
ADD CONSTRAINT trabalha FOREIGN KEY (id_cnpj) REFERENCES instituicao (id_cnpj);
ALTER TABLE turma
ADD CONSTRAINT possui FOREIGN KEY (id_curso) REFERENCES curso (id_curso);
ALTER TABLE facilitador
ADD CONSTRAINT leciona FOREIGN KEY (id_turma) REFERENCES turma (id_turma);
ALTER TABLE aluno_facilitador
ADD CONSTRAINT tem FOREIGN KEY (id_matricula) REFERENCES aluno (id_matricula);
ALTER TABLE aluno_facilitador
ADD CONSTRAINT temvarios FOREIGN KEY (id_facilitador) REFERENCES facilitador(id_facilitador);

#comandos inserir 
use projeto_individual4;
insert into instituicao (id_cnpj, nome, telefone, endereco)
values (1, 'Senac Campo Grande', '21984726475', 'R. Barcelos Domingos, 58 - Campo Grande');
use projeto_individual4;
insert into instituicao (id_cnpj, nome, telefone, endereco)
values (2, 'Senac Riachuelo', '21945679081', 'Rua 24 de maio, 543 Riachuelo, Rio de Janeiro ');
insert into curso (id_curso,nome_curso,carga_horaria,descricao,disciplina)
values(1,'Programadores Cariocas','1200',' formação em desenvolvedor full-stack, frontend e backend','Softs Skilss e Hard skilss');
insert into curso (id_curso,nome_curso,carga_horaria,descricao,disciplina)
values(2,'Especialização em Big Data','360','O curso de Especialização em Big Data destina-se aos profissionais com atuação nas áreas de TI e Negócios','Conceitos de Big Data');
use projeto_individual4;
use projeto_individual4;
insert into turma (id_turma,turno,sala,id_curso)
values(1,'manha','106','1');
insert into turma (id_turma,turno,sala,id_curso)
values(2,'tarde','306','2');
use projeto_individual4;
insert into facilitador (id_facilitador,nome,cpf,telefone,endereco,salario,id_cnpj,id_turma)
values(1,'Nivaldo Mendoca Carvalho','123.456.789-10','21950757941','Avenida Muniz Barreto	Campo Grande','3500','1','1');
use projeto_individual4;
insert into facilitador (id_facilitador,nome,cpf,telefone,endereco,salario,id_cnpj,id_turma)
values(2,'Luana Silva Melo','113.786.789-11','21920567941','Avenida Antares	Santa Cruz','3550','2','2');
use projeto_individual4;
insert into aluno (id_matricula,nome,data_nascimento,telefone,endereco,genero,id_cnpj,id_curso)
values(1,'Lucas Carvalho Avelino','20021107','21980567801','Tv. Paris - Cosmos Rio de Janeiro - RJ','Cisgenero','1','1');
use projeto_individual4;
insert into aluno (id_matricula,nome,data_nascimento,telefone,endereco,genero,id_cnpj,id_curso)
values(2,'Daniela Silva Abravanel','20010503','21976438901','Tv. Riachuelo - Campo Alegre Nova Iguaçu - RJ','Cisgenero','2','2');
use projeto_individual4;
insert into aluno_facilitador (aluno_facilitador,id_matricula,id_facilitador)
values(1,'1','1');
use projeto_individual4;
insert into aluno_facilitador (aluno_facilitador,id_matricula,id_facilitador)
values(2,'2','2')
