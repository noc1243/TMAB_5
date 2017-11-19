CREATE TABLE `Pessoa` (
	`Cd_Pessoa` INT NOT NULL AUTO_INCREMENT,
	`Nm_Pessoa` char(100) NOT NULL,
    `Nm_Sexo` char(100) NOT NULL,
    `Nu_Idade` INT NOT NULL,
	PRIMARY KEY (`Cd_Pessoa`)
);

CREATE TABLE `Aluno` (
	`Cd_Aluno` INT NOT NULL AUTO_INCREMENT,
	`Cd_Pessoa` INT NOT NULL,
	`Cd_Orientador` INT NOT NULL,
	`Cd_Curso` INT NOT NULL,
	PRIMARY KEY (`Cd_Aluno`)
);

CREATE TABLE `Professor` (
	`Cd_Professor` INT NOT NULL AUTO_INCREMENT,
	`Cd_Pessoa` INT NOT NULL,
	`Cd_Local` INT NOT NULL,
	`Nm_Site` char(100) NOT NULL,
	`Nm_Email` char(100) NOT NULL,
	`Nu_SIAPE` INT NOT NULL,
	`Nm_Titulo` char(100) NOT NULL,
	`Nm_Classe` char(100) NOT NULL,
	PRIMARY KEY (`Cd_Professor`)
);

CREATE TABLE `Extensao` (
	`Cd_Extensao` INT NOT NULL AUTO_INCREMENT,
	`Cd_Aluno` INT NOT NULL,
	`Cd_Orientador` INT NOT NULL,
	`Nm_Extensao` char(100) NOT NULL,
	PRIMARY KEY (`Cd_Extensao`)
);

CREATE TABLE `Trabalho` (
	`Cd_Trabalho` INT NOT NULL AUTO_INCREMENT,
	`Cd_Extensao` INT NOT NULL,
	`Nu_Nota` INT NOT NULL,
	`Nm_Trabalho` char(100) NOT NULL,
	PRIMARY KEY (`Cd_Trabalho`)
);

CREATE TABLE `Area_de_Conhecimento` (
	`Cd_Area` INT NOT NULL AUTO_INCREMENT,
	`Nm_Area` char(100) NOT NULL,
	PRIMARY KEY (`Cd_Area`)
);

CREATE TABLE `Curso` (
	`Cd_Curso` INT NOT NULL AUTO_INCREMENT,
	`Cd_Area` INT NOT NULL,
	`Cd_Coordenador` INT NOT NULL,
	`Nm_Curso` char(100) NOT NULL,
	PRIMARY KEY (`Cd_Curso`)
);

CREATE TABLE `Disciplina` (
	`Cd_Disciplina` INT NOT NULL AUTO_INCREMENT,
	`Cd_Codigo` char(100) NOT NULL,
	`Hh_Carga_Horaria` TIME NOT NULL,
	`Nm_Ementa` char(100) NOT NULL,
	`Nm_Bibliografia` char(100) NOT NULL,
	`Nm_Disciplina` char(100) NOT NULL,
    `Nu_Creditos` INT NOT NULL,
	PRIMARY KEY (`Cd_Disciplina`)
);

CREATE TABLE `Turma` (
	`Cd_Turma` INT NOT NULL AUTO_INCREMENT,
	`Cd_Disciplina` INT NOT NULL,
	`Cd_Local` INT NOT NULL,
	`Cd_Professor` INT NOT NULL,
	`Hh_Horario` TIME NOT NULL,
	`Nu_Vagas` INT NOT NULL,
	`Nu_Turma` INT NOT NULL,
    `Nu_Semestre` INT NOT NULL,
    `Nu_Ano` INT NOT NULL,
	PRIMARY KEY (`Cd_Turma`)
);

CREATE TABLE `Local` (
	`Cd_Local` INT NOT NULL AUTO_INCREMENT,
	`Nu_Telefone` INT NOT NULL,
	`Nm_Local` char(100) NOT NULL,
	PRIMARY KEY (`Cd_Local`)
);

CREATE TABLE `Rel_Curso_Disciplina` (
	`Cd_Curso` INT NOT NULL,
	`Cd_Disciplina` INT NOT NULL,
	`Nm_Obrigatoriedade` char(100) NOT NULL,
    `Nu_Periodo` INT NOT NULL
);

CREATE TABLE `Rel_Turma_Aluno` (
	`Cd_Turma` INT NOT NULL,
	`Cd_Aluno` INT NOT NULL,
	`Nu_Nota` INT NOT NULL
);

CREATE TABLE `Rel_Pre_Requisito` (
	`Cd_Disciplina` INT NOT NULL,
	`Cd_Pre_Requisito` INT NOT NULL
);

ALTER TABLE `Aluno` ADD CONSTRAINT `Aluno_fk0` FOREIGN KEY (`Cd_Pessoa`) REFERENCES `Pessoa`(`Cd_Pessoa`);

ALTER TABLE `Aluno` ADD CONSTRAINT `Aluno_fk1` FOREIGN KEY (`Cd_Orientador`) REFERENCES `Professor`(`Cd_Professor`);

ALTER TABLE `Aluno` ADD CONSTRAINT `Aluno_fk2` FOREIGN KEY (`Cd_Curso`) REFERENCES `Curso`(`Cd_Curso`);

ALTER TABLE `Professor` ADD CONSTRAINT `Professor_fk0` FOREIGN KEY (`Cd_Pessoa`) REFERENCES `Pessoa`(`Cd_Pessoa`);

ALTER TABLE `Professor` ADD CONSTRAINT `Professor_fk1` FOREIGN KEY (`Cd_Local`) REFERENCES `Local`(`Cd_Local`);

ALTER TABLE `Extensao` ADD CONSTRAINT `Extensao_fk0` FOREIGN KEY (`Cd_Aluno`) REFERENCES `Aluno`(`Cd_Aluno`);

ALTER TABLE `Extensao` ADD CONSTRAINT `Extensao_fk1` FOREIGN KEY (`Cd_Orientador`) REFERENCES `Professor`(`Cd_Professor`);

ALTER TABLE `Trabalho` ADD CONSTRAINT `Trabalho_fk0` FOREIGN KEY (`Cd_Extensao`) REFERENCES `Extensao`(`Cd_Extensao`);

ALTER TABLE `Curso` ADD CONSTRAINT `Curso_fk0` FOREIGN KEY (`Cd_Area`) REFERENCES `Area_de_Conhecimento`(`Cd_Area`);

ALTER TABLE `Curso` ADD CONSTRAINT `Curso_fk1` FOREIGN KEY (`Cd_Coordenador`) REFERENCES `Professor`(`Cd_Professor`);

ALTER TABLE `Turma` ADD CONSTRAINT `Turma_fk0` FOREIGN KEY (`Cd_Disciplina`) REFERENCES `Disciplina`(`Cd_Disciplina`);

ALTER TABLE `Turma` ADD CONSTRAINT `Turma_fk1` FOREIGN KEY (`Cd_Local`) REFERENCES `Local`(`Cd_Local`);

ALTER TABLE `Turma` ADD CONSTRAINT `Turma_fk2` FOREIGN KEY (`Cd_Professor`) REFERENCES `Professor`(`Cd_Professor`);

ALTER TABLE `Rel_Curso_Disciplina` ADD CONSTRAINT `Rel_Curso_Disciplina_fk0` FOREIGN KEY (`Cd_Curso`) REFERENCES `Curso`(`Cd_Curso`);

ALTER TABLE `Rel_Curso_Disciplina` ADD CONSTRAINT `Rel_Curso_Disciplina_fk1` FOREIGN KEY (`Cd_Disciplina`) REFERENCES `Disciplina`(`Cd_Disciplina`);

ALTER TABLE `Rel_Turma_Aluno` ADD CONSTRAINT `Rel_Turma_Aluno_fk0` FOREIGN KEY (`Cd_Turma`) REFERENCES `Turma`(`Cd_Turma`);

ALTER TABLE `Rel_Turma_Aluno` ADD CONSTRAINT `Rel_Turma_Aluno_fk1` FOREIGN KEY (`Cd_Aluno`) REFERENCES `Aluno`(`Cd_Aluno`);

ALTER TABLE `Rel_Pre_Requisito` ADD CONSTRAINT `Rel_Pre_Requisito_fk0` FOREIGN KEY (`Cd_Disciplina`) REFERENCES `Disciplina`(`Cd_Disciplina`);

ALTER TABLE `Rel_Pre_Requisito` ADD CONSTRAINT `Rel_Pre_Requisito_fk1` FOREIGN KEY (`Cd_Pre_Requisito`) REFERENCES `Disciplina`(`Cd_Disciplina`);

