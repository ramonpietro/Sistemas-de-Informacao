-- Tabela de Estado
CREATE TABLE estado (
    idEstado INT PRIMARY KEY,
    siglaEstado VARCHAR(4)
);

CREATE TABLE cidade (
    idCidade INT PRIMARY KEY,
    nomeCidade VARCHAR(255),
    idEstado INT,
    FOREIGN KEY (idEstado) REFERENCES Estado(idEstado)
);

CREATE TABLE bairro (
    idBairro INT PRIMARY KEY,
    nomeBairro VARCHAR(255),
    idCidade INT,
    FOREIGN KEY (idCidade) REFERENCES Cidade(idCidade)
);

CREATE TABLE rua (
    idRua INT PRIMARY KEY,
    nomeRua VARCHAR(255),
    numero INT NOT NULL,
    complemento VARCHAR(50),
    idBairro INT,
    FOREIGN KEY (idBairro) REFERENCES Bairro(idBairro)
);

CREATE TABLE endereco (
    idEndereco INT PRIMARY KEY,
    idRua INT,
    FOREIGN KEY (idRua) REFERENCES Rua(idRua)
);

CREATE TABLE telefone (
    idTelefone INT PRIMARY KEY,
    numeroTelefone VARCHAR(20)
);

CREATE TABLE diretor (
    idDiretor INT PRIMARY KEY,
    nomeDiretor VARCHAR(255) NOT NULL,
    dataNascimento DATE NOT NULL,
    idEndereco INT,
    idTelefone INT,
    FOREIGN KEY (idEndereco) REFERENCES Endereco(idEndereco),
    FOREIGN KEY (idTelefone) REFERENCES Telefone(idTelefone)
);

CREATE TABLE produtora (
    idProdutora INT PRIMARY KEY,
    nomeProdutora VARCHAR(255) NOT NULL,
    emailProdutora VARCHAR(255),
    urlSite VARCHAR(255),
    idEndereco INT,
    idTelefone INT,
    FOREIGN KEY (idEndereco) REFERENCES Endereco(idEndereco),
    FOREIGN KEY (idTelefone) REFERENCES Telefone(idTelefone)
);

CREATE TABLE cliente (
    cpfCliente VARCHAR(11) PRIMARY KEY,
    nomeCliente VARCHAR(255) NOT NULL,
    dataNascimento DATE,
    idEndereco INT,
    idTelefone INT,
    FOREIGN KEY (idEndereco) REFERENCES Endereco(idEndereco),
    FOREIGN KEY (idTelefone) REFERENCES Telefone(idTelefone)
);

CREATE TABLE filme (
    idFilme INT PRIMARY KEY,
    tituloFilme VARCHAR(255) NOT NULL,
    anoLancamento INT NOT NULL,
    duracaoMin INT NOT NULL,
    idDiretor INT,
    FOREIGN KEY (idDiretor) REFERENCES Diretor(idDiretor)
);

CREATE TABLE ator (
    idAtor INT PRIMARY KEY,
    nomeAtor VARCHAR(255) NOT NULL,
    dataNascimento DATE NOT NULL,
    apelido VARCHAR(100)
);

CREATE TABLE filmeAtor (
    idFilme INT,
    idAtor INT,
    PRIMARY KEY (idFilme, idAtor),
    FOREIGN KEY (idFilme) REFERENCES Filme(idFilme),
    FOREIGN KEY (idAtor) REFERENCES Ator(idAtor)
);

CREATE TABLE producao (
    idFilme INT,
    idProdutora INT,
    PRIMARY KEY (idFilme, idProdutora),
    FOREIGN KEY (idFilme) REFERENCES Filme(idFilme),
    FOREIGN KEY (idProdutora) REFERENCES Produtora(idProdutora)
);

CREATE TABLE fita (
    idFita INT PRIMARY KEY,
    formatoFita VARCHAR(50),
    validade DATE,
    prateleira VARCHAR(50),
    idFilme INT,
    FOREIGN KEY (idFilme) REFERENCES Filme(idFilme)
);

CREATE TABLE aluguel (
    idFita INT,
    cpfCliente VARCHAR(11),
    dataAluguel DATE,
    PRIMARY KEY (idFita, cpfCliente),
    FOREIGN KEY (idFita) REFERENCES Fita(idFita),
    FOREIGN KEY (cpfCliente) REFERENCES Cliente(cpfCliente)
);

-- Povoamento das tabelas
INSERT INTO estado (idEstado, siglaEstado) VALUES 
(1, 'SP'), 
(2, 'RJ'), 
(3, 'MG');

INSERT INTO cidade (idCidade, nomeCidade, idEstado) VALUES 
(1, 'São Paulo', 1), 
(2, 'Rio de Janeiro', 2), 
(3, 'Belo Horizonte', 3);

INSERT INTO bairro (idBairro, nomeBairro, idCidade) VALUES 
(1, 'Centro', 1), 
(2, 'Botafogo', 2), 
(3, 'Savassi', 3);

INSERT INTO rua (idRua, nomeRua, numero, complemento, idBairro) VALUES 
(1, 'Av. Paulista', 1000, 'Apto 101', 1), 
(2, 'Rua da Praia', 200, NULL, 2), 
(3, 'Rua Sergipe', 300, 'Loja 2', 3);

INSERT INTO endereco (idEndereco, idRua) VALUES 
(1, 1), 
(2, 2), 
(3, 3);

INSERT INTO telefone (idTelefone, numeroTelefone) VALUES 
(1, '11999999999'), 
(2, '21988888888'), 
(3, '31977777777');

INSERT INTO diretor (idDiretor, nomeDiretor, dataNascimento, idEndereco, idTelefone) VALUES 
(1, 'Quentin Tarantino', '1963-03-27', 1, 1), 
(2, 'Christopher Nolan', '1970-07-30', 2, 2), 
(3, 'Martin Scorsese', '1942-11-17', 3, 3);

INSERT INTO produtora (idProdutora, nomeProdutora, emailProdutora, urlSite, idEndereco, idTelefone) VALUES 
(1, 'Warner Bros', 'contato@warnerbros.com', 'www.warnerbros.com', 1, 1), 
(2, 'Paramount Pictures', 'info@paramount.com', 'www.paramount.com', 2, 2), 
(3, 'Universal Studios', 'contact@universal.com', 'www.universalstudios.com', 3, 3);

INSERT INTO cliente (cpfCliente, nomeCliente, dataNascimento, idEndereco, idTelefone) VALUES 
('11111111111', 'João Silva', '1990-01-15', 1, 1), 
('22222222222', 'Maria Oliveira', '1985-05-23', 2, 2), 
('33333333333', 'Pedro Souza', '1995-07-10', 3, 3);

INSERT INTO filme (idFilme, tituloFilme, anoLancamento, duracaoMin, idDiretor) VALUES 
(1, 'Pulp Fiction', 1994, 154, 1), 
(2, 'Inception', 2010, 148, 2), 
(3, 'Taxi Driver', 1976, 113, 3);

INSERT INTO ator (idAtor, nomeAtor, dataNascimento, apelido) VALUES 
(1, 'Leonardo DiCaprio', '1974-11-11', 'Leo'), 
(2, 'John Travolta', '1954-02-18', 'Johnny'), 
(3, 'Robert De Niro', '1943-08-17', 'Bobby');

INSERT INTO filmeAtor (idFilme, idAtor) VALUES 
(1, 2),  -- John Travolta em Pulp Fiction
(2, 1),  -- Leonardo DiCaprio em Inception
(3, 3);  -- Robert De Niro em Taxi Driver

INSERT INTO producao (idFilme, idProdutora) VALUES 
(1, 1),  -- Pulp Fiction pela Warner Bros
(2, 2),  -- Inception pela Paramount Pictures
(3, 3);  -- Taxi Driver pela Universal Studios

INSERT INTO fita (idFita, formatoFita, validade, prateleira, idFilme) VALUES 
(1, 'DVD', '2025-12-31', 'A1', 1), 
(2, 'Blu-ray', '2025-12-31', 'B2', 2), 
(3, 'VHS', '2023-12-31', 'C3', 3);

INSERT INTO aluguel (idFita, cpfCliente, dataAluguel) VALUES 
(1, '11111111111', '2024-09-01'), 
(2, '22222222222', '2024-09-02'), 
(3, '33333333333', '2024-09-03');