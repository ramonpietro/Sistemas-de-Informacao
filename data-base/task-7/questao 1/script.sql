CREATE TABLE cliente (
	numero INT PRIMARY KEY,
	nome VARCHAR (30) NOT NULL,
	data_nascimento DATE,
	id_rua INT,
	FOREIGN KEY (id_rua) references rua(id_rua)
);

CREATE TABLE rua (
	id_rua INT PRIMARY KEY,
	logradouro VARCHAR (45) NOT NULL,
	numero_imovel INT NOT NULL,
	id_bairro INT,
	FOREIGN KEY (id_bairro) REFERENCES bairro(id_bairro)
);

CREATE TABLE bairro (
	id_bairro INT PRIMARY KEY,
	nome VARCHAR (45) NOT NULL,
	cep VARCHAR (10) NOT NULL
);

CREATE TABLE telefoneCliente (
	num_cliente INT PRIMARY KEY,
	telefone_cliente VARCHAR (15) NOT NULL,
	FOREIGN KEY (num_cliente) REFERENCES cliente(numero)
);

CREATE TABLE apolice (
	numero INT PRIMARY KEY,
	valor FLOAT NOT NULL,
	data_assinatura DATE NOT NULL,
	num_cliente_associado INT NOT NULL,
	FOREIGN KEY (num_cliente_associado) REFERENCES cliente(numero)
);

CREATE TABLE carro (
	num_chassi INT PRIMARY KEY,
	numero_placa VARCHAR(7) NOT NULL,
	modelo VARCHAR(45) NOT NULL,
	fabricante VARCHAR(45) NOT NULL,
	ano DATE NOT NULL,
	num_apolice INT NOT NULL,
	FOREIGN KEY (num_apolice) REFERENCES apolice(numero)
)

CREATE TABLE acidente (
	numero INT PRIMARY KEY,
	descricao TEXT NOT NULL,
	local_ocorrencia VARCHAR(45) NOT NULL,
	hora TIME NOT NULL,
	data_ocorrencia DATE NOT NULL
)

CREATE TABLE acidenteCarro (
	num_acidente INT PRIMARY KEY,
	num_chassi INT NOT NULL,
	data_registro DATE NOT NULL,
	FOREIGN KEY (num_acidente) REFERENCES acidente(numero),
	FOREIGN KEY (num_chassi) REFERENCES carro(num_chassi)
)