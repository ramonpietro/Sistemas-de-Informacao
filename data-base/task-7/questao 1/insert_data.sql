INSERT INTO bairro (id_bairro, nome, cep) VALUES
(1, 'Centro', '12345-678'),
(2, 'Jardins', '23456-789');

INSERT INTO rua (id_rua, logradouro, numero_imovel, id_bairro) VALUES
(1, 'Rua A', 100, 1),
(2, 'Rua B', 200, 2);

INSERT INTO cliente (numero, nome, data_nascimento, id_rua) VALUES
(1, 'João Silva', '1990-05-20', 1),
(2, 'Maria Oliveira', '1985-10-15', 2);

INSERT INTO telefoneCliente (num_cliente, telefone_cliente) VALUES
(1, '11987654321'),
(2, '21987654322');

INSERT INTO apolice (numero, valor, data_assinatura, num_cliente_associado) VALUES
(1, 1500.00, '2023-07-01', 1),
(2, 2500.00, '2023-08-01', 2);

INSERT INTO carro (num_chassi, numero_placa, modelo, fabricante, ano, num_apolice) VALUES
(1001, 'ABC1234', 'Corolla', 'Toyota', '2018-01-01', 1),
(1002, 'XYZ5678', 'Civic', 'Honda', '2020-01-01', 2);

INSERT INTO acidente (numero, descricao, local_ocorrencia, hora, data_ocorrencia) VALUES
(1, 'Colisão frontal', 'Av. Paulista', '14:30', '2024-09-30'),
(2, 'Batida traseira', 'Rua Augusta', '09:00', '2024-09-15');

INSERT INTO acidenteCarro (num_acidente, num_chassi, data_registro) VALUES
(1, 1001, '2024-09-30'),
(2, 1002, '2024-09-15');
