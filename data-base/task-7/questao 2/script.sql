-- Criação das tabelas
CREATE TABLE estado (
	codigo INT PRIMARY KEY,
	sigla VARCHAR(4)
);

CREATE TABLE cidade (
	codigo INT PRIMARY KEY,
	nome VARCHAR(40),
	codigo_estado INT NOT NULL,
	FOREIGN KEY (codigo_estado) REFERENCES estado(codigo)
);

CREATE TABLE bairro (
	codigo INT PRIMARY KEY,
	nome VARCHAR(45) NOT NULL,
	codigo_cidade INT NOT NULL,
	FOREIGN KEY (codigo_cidade) REFERENCES cidade(codigo)
);

CREATE TABLE rua (
	codigo INT PRIMARY KEY,
	logradouro VARCHAR(45) NOT NULL,
	numero INT NOT NULL,
	complemento VARCHAR(50),
	codigo_bairro INT NOT NULL,
	FOREIGN KEY (codigo_bairro) REFERENCES bairro(codigo)
);

CREATE TABLE telefone (
	codigo INT PRIMARY KEY,
	telefone VARCHAR(15)
);

CREATE TABLE editora (
	codigo INT PRIMARY KEY,
	nome VARCHAR(45) NOT NULL,
	codigo_telefone INT NOT NULL,
	codigo_rua INT NOT NULL,
	FOREIGN KEY (codigo_telefone) REFERENCES telefone(codigo),
	FOREIGN KEY (codigo_rua) REFERENCES rua(codigo)
);

CREATE TABLE autor (
	codigo INT PRIMARY KEY,
	nome VARCHAR(45) NOT NULL,
	codigo_telefone INT NOT NULL,
	codigo_rua INT NOT NULL,
	FOREIGN KEY (codigo_telefone) REFERENCES telefone(codigo),
	FOREIGN KEY (codigo_rua) REFERENCES rua(codigo)
);

CREATE TABLE titulo (
	codigo INT PRIMARY KEY,
	nome VARCHAR(45) NOT NULL,
	isbn VARCHAR(15) NOT NULL,
	data_publicacao DATE NOT NULL,
	codigo_editora INT NOT NULL,
	FOREIGN KEY (codigo_editora) REFERENCES editora(codigo)
);

CREATE TABLE tituloAutor (
	codigo_titulo INT PRIMARY KEY,
	codigo_autor INT,
	FOREIGN KEY (codigo_titulo) REFERENCES titulo(codigo),
	FOREIGN KEY (codigo_autor) REFERENCES autor(codigo)
);

CREATE TABLE palavraChave (
	codigo INT PRIMARY KEY,
	descricao VARCHAR(45) NOT NULL
);

CREATE TABLE palavraChaveTitulo (
	codigo_palavra_chave INT PRIMARY KEY,
	codigo_titulo INT,
	FOREIGN KEY (codigo_palavra_chave) REFERENCES palavraChave(codigo),
	FOREIGN KEY (codigo_titulo) REFERENCES titulo(codigo)
);

CREATE TABLE exemplar (
	codigo INT PRIMARY KEY,
	data_registro DATE NOT NULL,
	codigo_titulo INT NOT NULL,
	FOREIGN KEY (codigo_titulo) REFERENCES titulo(codigo)
);

CREATE TABLE usuario (
	codigo INT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	codigo_telefone INT NOT NULL,
	codigo_rua INT NOT NULL,
	FOREIGN KEY (codigo_telefone) REFERENCES telefone(codigo),
	FOREIGN KEY (codigo_rua) REFERENCES rua(codigo)
);

CREATE TABLE exemplarUsuario (
	codigo_exemplar INT PRIMARY KEY,
	codigo_usuario INT NOT NULL,
	data_emprestimo DATE NOT NULL,
	FOREIGN KEY (codigo_exemplar) REFERENCES exemplar(codigo)
);

CREATE TABLE areaDoConhecimento (
	codigo INT PRIMARY KEY,
	descricao VARCHAR(50) NOT NULL,
	codigo_titulo INT NOT NULL,
	FOREIGN KEY (codigo_titulo) REFERENCES titulo(codigo)
);

-- Povoamento das tabelas

INSERT INTO estado (codigo, sigla)
VALUES 
(1, 'SP'),
(2, 'RJ'),
(3, 'MG');

INSERT INTO cidade (codigo, nome, codigo_estado)
VALUES 
(1, 'São Paulo', 1),
(2, 'Rio de Janeiro', 2),
(3, 'Belo Horizonte', 3);

INSERT INTO bairro (codigo, nome, codigo_cidade)
VALUES 
(1, 'Centro', 1),
(2, 'Botafogo', 2),
(3, 'Savassi', 3);

INSERT INTO rua (codigo, logradouro, numero, complemento, codigo_bairro)
VALUES 
(1, 'Rua Augusta', 1500, 'Apto 101', 1),
(2, 'Av. Atlântica', 2000, NULL, 2),
(3, 'Rua da Bahia', 300, 'Bloco B', 3);

INSERT INTO telefone (codigo, telefone)
VALUES 
(1, '(11) 99999-9999'),
(2, '(21) 98888-8888'),
(3, '(31) 97777-7777');

INSERT INTO editora (codigo, nome, codigo_telefone, codigo_rua)
VALUES 
(1, 'Editora Abril', 1, 1),
(2, 'Editora Globo', 2, 2),
(3, 'Companhia das Letras', 3, 3);

INSERT INTO autor (codigo, nome, codigo_telefone, codigo_rua)
VALUES 
(1, 'Machado de Assis', 1, 1),
(2, 'Clarice Lispector', 2, 2),
(3, 'Guimarães Rosa', 3, 3);

INSERT INTO titulo (codigo, nome, isbn, data_publicacao, codigo_editora)
VALUES 
(1, 'Dom Casmurro', '978-3-16-148410-0', '1899-10-01', 1),
(2, 'A Hora da Estrela', '978-85-359-0277-0', '1977-12-01', 2),
(3, 'Grande Sertão: Veredas', '978-85-359-0278-7', '1956-05-01', 3);

INSERT INTO tituloAutor (codigo_titulo, codigo_autor)
VALUES 
(1, 1),
(2, 2),
(3, 3);

INSERT INTO palavraChave (codigo, descricao)
VALUES 
(1, 'Romance'),
(2, 'Literatura Brasileira'),
(3, 'Ficção');

INSERT INTO palavraChaveTitulo (codigo_palavra_chave, codigo_titulo)
VALUES 
(1, 1),
(2, 1),
(2, 2),
(3, 3);

INSERT INTO exemplar (codigo, data_registro, codigo_titulo)
VALUES 
(1, '2024-01-01', 1),
(2, '2024-02-01', 2),
(3, '2024-03-01', 3);

INSERT INTO usuario (codigo, nome, codigo_telefone, codigo_rua)
VALUES 
(1, 'João Silva', 1, 1),
(2, 'Maria Souza', 2, 2),
(3, 'Carlos Pereira', 3, 3);

INSERT INTO exemplarUsuario (codigo_exemplar, codigo_usuario, data_emprestimo)
VALUES 
(1, 1, '2024-09-01'),
(2, 2, '2024-09-10'),
(3, 3, '2024-09-15');

INSERT INTO areaDoConhecimento (codigo, descricao, codigo_titulo)
VALUES 
(1, 'Literatura Brasileira', 1),
(2, 'Literatura Brasileira', 2),
(3, 'Literatura Brasileira', 3);