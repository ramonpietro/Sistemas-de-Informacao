CREATE TABLE tbClienteEndereco (
	id INT PRIMARY KEY,
	logradouro VARCHAR NOT NULL,
	numero INT NOT NULL,
	bairro VARCHAR NOT NULL,
	cep VARCHAR NOT NULL,
	complemento VARCHAR
);

CREATE TABLE tbCliente (
	cpf VARCHAR PRIMARY KEY,
	nome_completo VARCHAR NOT NULL,
	data_nascimento DATE,
	telefone VARCHAR NOT NULL,
	email VARCHAR NOT NULL,
	id_endereco INT,
	id_funcionario INT,
	FOREIGN KEY (id_endereco) REFERENCES tbClienteEndereco,
	FOREIGN KEY (id_funcionario) REFERENCES tbFuncionario
);

CREATE TABLE tbAnimal (
	id INT PRIMARY KEY,
	nome VARCHAR NOT NULL,
	especie VARCHAR NOT NULL,
	raca VARCHAR NOT NULL,
	idade INT,
	peso FLOAT,
	observacao VARCHAR,
	cpf_cliente VARCHAR,
	FOREIGN KEY (cpf_cliente) REFERENCES tbCliente
);

CREATE TABLE tbFuncionario (
	id INT PRIMARY KEY,
	nome_completo VARCHAR NOT NULL,
	cpf VARCHAR NOT NULL,
	telefone VARCHAR NOT NULL,
	email VARCHAR NOT NULL,
	data_nascimento DATE NOT NULL,
	data_contrato DATE,
	salario MONEY NOT NULL
);

CREATE TABLE tbServico (
	id INT PRIMARY KEY,
	tipo VARCHAR NOT NULL,
	nome_animal VARCHAR NOT NULL,
	descricao VARCHAR
);

CREATE TABLE tbAgenda (
	id INT PRIMARY KEY,
	data DATE NOT NULL,
	hora TIME NOT NULL,
	id_servico INT,
	id_funcionario INT,
	FOREIGN KEY (id_servico) REFERENCES tbServico,
	FOREIGN KEY (id_funcionario) REFERENCES tbFuncionario
);

CREATE TABLE tbProduto (
	id INT PRIMARY KEY,
	item VARCHAR NOT NULL,
	preco MONEY NOT NULL,
	qtd_estoque INT NOT NULL,
	categoria VARCHAR
);

CREATE TABLE tbVenda (
	id INT PRIMARY KEY,
	qtd_itens INT NOT NULL,
	data DATE,
	hora TIME,
	valor_total MONEY NOT NULL,
	id_funcionario INT,
	id_produto INT,
	FOREIGN KEY (id_funcionario) REFERENCES tbFuncionario,
	FOREIGN KEY (id_produto) REFERENCES tbProduto
);

CREATE TABLE tbExame (
	id INT PRIMARY KEY,
	tipo VARCHAR NOT NULL,
	data DATE NOT NULL,
	resultado VARCHAR
);

CREATE TABLE tbEnderecoVeterinario (
	id INT PRIMARY KEY,
	logradouro VARCHAR NOT NULL,
	numero INT NOT NULL,
	bairro VARCHAR NOT NULL,
	cep VARCHAR NOT NULL,
	complemento VARCHAR
);

CREATE TABLE tbVeterinario (
	crmv VARCHAR PRIMARY KEY,
	nome_completo VARCHAR NOT NULL,
	cpf VARCHAR NOT NULL,
	telefone VARCHAR NOT NULL,
	email VARCHAR NOT NULL,
	id_endereco INT,
	FOREIGN KEY (id_endereco) REFERENCES tbEnderecoVeterinario
);

CREATE TABLE tbConsulta (
	id INT PRIMARY KEY,
	data DATE NOT NULL,
	hora TIME NOT NULL, 
	crmv_veterinario VARCHAR,
	id_animal INT,
	id_exame INT,
	FOREIGN KEY (crmv_veterinario) REFERENCES tbVeterinario,
	FOREIGN KEY (id_animal) REFERENCES tbAnimal,
	FOREIGN KEY (id_exame) REFERENCES tbExame
);

CREATE TABLE tbLeito (
	id INT PRIMARY KEY,
	data_entrada DATE NOT NULL,
	hora_entrada TIME NOT NULL,
	num_leito INT NOT NULL,
	data_saida DATE,
	hora_saida TIME
);

CREATE TABLE tbInternacao (
	id INT PRIMARY KEY,
	motivo VARCHAR NOT NULL,
	id_leito INT,
	id_animal INT,
	crmv_veterinario VARCHAR,
	FOREIGN KEY (id_leito) REFERENCES tbLeito,
	FOREIGN KEY (id_animal) REFERENCES tbAnimal,
	FOREIGN KEY (crmv_veterinario) REFERENCES tbVeterinario
);

-- POVOAMENTO DAS TABELAS
INSERT INTO tbFuncionario (id, nome_completo, cpf, telefone, email, data_nascimento, data_contrato, salario)
VALUES
	(1, 'Ana Beatriz', '111.222.333-44', '(11) 91111-1111', 'ana.beatriz@email.com', '1990-02-15', '2021-05-01', 3500.00),
	(2, 'Carlos Eduardo', '222.333.444-55', '(11) 92222-2222', 'carlos.eduardo@email.com', '1985-08-25', '2020-03-10', 4000.00),
	(3, 'Fernanda Souza', '333.444.555-66', '(11) 93333-3333', 'fernanda.souza@email.com', '1992-12-30', '2022-01-15', 3000.00),
	(4, 'Roberto Almeida', '444.555.666-77', '(11) 94444-4444', 'roberto.almeida@email.com', '1988-07-18', '2019-11-20', 4500.00);

INSERT INTO tbClienteEndereco (id, logradouro, numero, bairro, cep, complemento)
VALUES
	(1, 'Avenida Rui Barbosa', 123, 'Aldeia', '99999-333', ''),
	(2, 'Rua Amélia', 2353, 'Jardins', '02421-432', ''),
	(3, 'Marechal Rondon', 1329, 'Fátima', '93023-520', 'Entre 2 de Junho e Prof. Antonio Carvalho'),
	(4, 'Avenida Mendonca Furtado', 000, 'Centro', '24040-321', 'Moraes Sarmento e Silvino Pinto'),
	(5, 'Avenida Barao do Rio Branco', 1492, 'Prainha', '39204-533', ''),
	(6, 'Avenida Rosa Passos', 530, 'Salé', '59000-421', 'Entre Presidente Vargas e Mendonça Furtado');

INSERT INTO tbCliente (cpf, nome_completo, data_nascimento, telefone, email, id_endereco, id_funcionario)
VALUES
	('111.222.333-44', 'Lucas Mendes', '1990-01-01', '(11) 99111-1111', 'lucas@email.com', 1, 2),
	('222.333.444-55', 'Fernanda Lima', '1985-05-12', '(11) 99222-2222', 'fernanda@email.com', 2, 4),
	('333.444.555-66', 'Carlos Alberto', '1992-03-20', '(11) 99333-3333', 'carlos@email.com', 3, 1),
	('444.555.666-77', 'Juliana Silva', '1988-07-30', '(11) 99444-4444', 'juliana@email.com', 4, 2),
	('555.666.777-88', 'Roberto Santos', '1980-11-15', '(11) 99555-5555', 'roberto@email.com', 5, 3),
	('666.777.888-99', 'Mariana Costa', '1995-09-22', '(11) 99666-6666', 'mariana@email.com', 6, 2);

INSERT INTO tbAnimal (id, nome, especie, raca, idade, peso, observacao, cpf_cliente)
VALUES
	(1, 'Rex', 'Cachorro', 'Labrador', 5, 30.5, 'Sem a pata dianteira esquerda', '111.222.333-44'),
	(2, 'Bobby', 'Cachorro', 'Poodle', 2, 8.0, 'Sem observações', '333.444.555-66'),
	(3, 'Luna', 'Gato', 'Siamês', 4, 3.0, 'Nada', '444.555.666-77'),
	(4, 'Toby', 'Cachorro', 'Bulldog', 6, 25.0, 'Cuidado com a comida', '555.666.777-88'),
	(5, 'Nina', 'Gato', 'Sphynx', 1, 3.0, 'Sensível ao frio', '666.777.888-99'),
	(6, 'Lia', 'Gato', 'Bengal', 8, 4.0, 'Arisco', '222.333.444-55'),
	(7, 'Zara', 'Gato', 'Maine Coon', 3, 6.5, 'Muito carinhosa', '222.333.444-55');

INSERT INTO tbServico (id, tipo, nome_animal, descricao)
VALUES
	(1, 'Banho', 'Rex', 'Banho completo com tosa'),
	(2, 'Spa', 'Mia', 'Dia de spa completo'),
	(3, 'Banho', 'Bobby', 'Banho e tosa simples'),
	(4, 'Adestramento', 'Lia', 'Treinamento'),
	(5, 'Creche', 'Zara', 'Serviço de creche durante o dia')
	(6, 'Adestramento', 'Bobby', 'Aulas de adestramento.');

INSERT INTO tbProduto (id, item, preco, qtd_estoque, categoria)
VALUES
	(1, 'Ração para Cachorro', 50.00, 20, 'Alimentação'),
	(2, 'Areia para Gato', 30.00, 15, 'Higiene'),
	(3, 'Vacina para Gato', 100.00, 10, 'Vacinação'),
	(4, 'Ração Premium para Gato', 70.00, 25, 'Alimentação');


INSERT INTO tbExame (id, tipo, data, resultado)
VALUES
	(1, 'Exame de Sangue', '2024-10-05', 'Normal'),
	(2, 'Exame de Urina', '2024-10-06', 'Leve infecção'),
	(3, 'Exame de Fezes', '2024-10-07', 'Sem anormalidades');

INSERT INTO tbEnderecoVeterinario (id, logradouro, numero, bairro, cep, complemento)
VALUES
	(1, 'Rua da Saúde', 100, 'Vila Verde', '45678-901', 'Consultório 1'),
	(2, 'Av. dos Animais', 200, 'Zona Rural', '56789-012', 'Consultório 2');

INSERT INTO tbVeterinario (crmv, nome_completo, cpf, telefone, email, id_endereco)
VALUES
	('1234', 'Dr. Pedro Martins', '333.444.555-66', '(11) 95555-6666', 'pedro@email.com', 1),
	('5678', 'Dra. Ana Costa', '444.555.666-77', '(11) 94444-7777', 'ana@email.com', 2);

INSERT INTO tbConsulta (id, data, hora, crmv_veterinario, id_animal, id_exame)
VALUES
	(1, '2024-10-10', '09:00:00', '1234', 1, 1),
	(2, '2024-10-11', '11:00:00', '5678', 2, 2),
	(3, '2024-10-12', '15:00:00', '1234', 3, NULL),
	(4, '2024-10-13', '10:00:00', '5678', 4, 3),
	(5, '2024-10-14', '14:00:00', '1234', 5, NULL),
	(6, '2024-10-15', '09:30:00', '5678', 6, NULL);

INSERT INTO tbLeito (id, data_entrada, hora_entrada, num_leito, data_saida, hora_saida)
VALUES
	(1, '2024-10-12', '08:00:00', 1, NULL, NULL),
	(2, '2024-10-13', '10:00:00', 2, NULL, NULL);

INSERT INTO tbInternacao (id, motivo, id_leito, id_animal, crmv_veterinario)
VALUES
	(1, 'Tratamento', 1, 1, '1234'),
	(2, 'Operação', 2, 2, '5678'),
	(3, 'Observação', 1, 3, '1234'),
	(4, 'Tratamento', 2, 4, '5678');

-- CONSULTAS

SELECT tbAnimal.nome, resultado
FROM tbExame
JOIN tbConsulta ON tbConsulta.id_exame = tbExame.id
JOIN tbAnimal ON tbAnimal.id = tbConsulta.id_animal
WHERE tbAnimal.nome = 'Bobby';

SELECT tbAnimal.nome, tbAnimal.especie, tbAnimal.raca, tbCliente.nome_completo
FROM tbAnimal
JOIN tbCliente ON tbAnimal.cpf_cliente = tbCliente.cpf
WHERE tbCliente.nome_completo = 'Fernanda Lima';

SELECT tbCliente.nome_completo, tbClienteEndereco.logradouro, tbClienteEndereco.numero
FROM tbCliente
JOIN tbClienteEndereco ON tbCliente.id_endereco = tbClienteEndereco.id
WHERE tbCliente.nome_completo = 'Lucas Mendes';

SELECT tbAnimal.nome, tbAnimal.especie, tbAnimal.raca, tbAnimal.idade, tbAnimal.peso, tbAnimal.observacao, tbServico.descricao
FROM tbAnimal
JOIN tbServico ON tbAnimal.nome = tbServico.nome_animal
WHERE tbServico.tipo = 'Banho';

SELECT tbAnimal.nome
FROM tbAnimal
JOIN tbInternacao ON tbAnimal.id = tbInternacao.id_animal
WHERE tbInternacao.motivo = 'Operação';

SELECT *
FROM tbAnimal
WHERE idade BETWEEN 5 AND 10;

SELECT * 
FROM tbAnimal
WHERE especie = 'Gato';

SELECT data, hora, tbAnimal.nome
FROM tbConsulta
JOIN tbVeterinario ON tbConsulta.crmv_veterinario = tbVeterinario.crmv
JOIN tbAnimal ON tbConsulta.id_animal = tbAnimal.id
WHERE tbVeterinario.nome_completo = 'Dr. Pedro Martins';