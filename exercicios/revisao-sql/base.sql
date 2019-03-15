CREATE TABLE Unidade (
codunidade int,
nomunidade varchar(100),
PRIMARY KEY(codunidade));
CREATE TABLE Area (
codarea int,
nomarea varchar(50),
PRIMARY KEY (codarea));
CREATE TABLE Curso (
codcurso int,
nomcurso varchar(100),
codunidade int,
codarea int,
PRIMARY KEY (codcurso),
FOREIGN KEY(codarea) REFERENCES Area(codarea),
FOREIGN KEY(codunidade) REFERENCES Unidade
(codunidade));
CREATE TABLE Aluno (
codaluno int,
nomaluno varchar(100),
codcurso int,
PRIMARY KEY (codaluno),
FOREIGN KEY(codcurso) REFERENCES Curso (codcurso));
CREATE TABLE Disciplina (
coddisci int,
nomdisci varchar(50),
PRIMARY KEY (coddisci));
CREATE TABLE histórico (
codaluno int,
coddisci int,
semestre int,
nota numeric(5,2),
PRIMARY KEY (codaluno,coddisci,semestre),
FOREIGN KEY(codaluno) REFERENCES Aluno (codaluno),
FOREIGN KEY(coddisci) REFERENCES Disciplina (coddisci));
