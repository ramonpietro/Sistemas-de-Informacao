/*
 Script criado para a criação do banco de dados da Empresa Hipotética de Projetos de  Construção
 Data Criação: 03/05/2024
 Disciplina: Banco de Dados    ano: 2024 
*/

DROP TABLE IF EXISTS tbcargo;
DROP TABLE IF EXISTS tbdepartamento;
DROP TABLE IF EXISTS tbempregado;
DROP TABLE IF EXISTS tbobra;
DROP TABLE IF EXISTS tbempregado_obra;

CREATE TABLE tbcargo (
  codigo int,
  nome varchar(50) NOT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE tbdepartamento (
   codigo integer PRIMARY KEY,
   nome varchar(50) NOT NULL,
   andar smallint
);


CREATE TABLE tbempregado (
  codigo integer NOT NULL,
  primeiro_nome varchar(30),
  sobrenome varchar(50), 
  sexo char(1) DEFAULT 'M', 
  cpf char(12),
  codCargo integer NOT NULL,
  dataNascimento date,
  dataAdmissao date,  
  salario real CHECK(salario >= 1412.00), 
  ativo boolean DEFAULT true,	
  codDepartamento integer NOT NULL,
  PRIMARY KEY (codigo),
  FOREIGN KEY (codCargo) REFERENCES tbcargo(codigo) ON DELETE CASCADE,
  FOREIGN KEY (codDepartamento) REFERENCES tbdepartamento (codigo) ON DELETE CASCADE
);

CREATE TABLE tbobra (
  codigo integer NOT NULL,
  descricao varchar(50),
  cidade varchar(50) NOT NULL DEFAULT 'Santarém',
  uf char(2),
  dataInicio date,
  dataPrevistaTermino date,
  situacao varchar(20) NOT NULL,
  ativo boolean,
  orcamento money,	
  PRIMARY KEY (codigo)
);

CREATE TABLE tbempregado_obra (
   codObra integer NOT NULL,
   codEmpregado integer NOT NULL,
   dataAlocacaoEmpregado date,
   PRIMARY KEY (codObra, codEmpregado),
   FOREIGN KEY (codObra) REFERENCES tbobra(codigo) ON DELETE CASCADE,
   FOREIGN KEY (codEmpregado) REFERENCES tbempregado(codigo) ON DELETE CASCADE
);