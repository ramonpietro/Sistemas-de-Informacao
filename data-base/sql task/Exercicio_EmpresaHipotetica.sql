INSERT INTO tbDepartamento
VALUES (8, 'almoxarifado', 1),
	(9, 'compras', 2),
	(10, 'vendas de imóveis', 3);

SELECT * FROM tbEmpregado
WHERE dataadmissao BETWEEN '2022-01-01' AND '2022-12-31';

SELECT primeiro_nome, sobrenome, sexo
FROM tbEmpregado
WHERE sexo = 'F' AND ativo = 'true';

SELECT descricao, cidade, datainicio
FROM tbObra
WHERE uf IN ('PA', 'AL');

SELECT tbEmpregado.codigo, primeiro_nome, sobrenome, tbCargo.nome
FROM tbEmpregado
JOIN tbCargo ON tbEmpregado.codigo = tbCargo.codigo;

SELECT tbEmpregado.codigo, primeiro_nome, sobrenome, tbCargo.nome, tbDepartamento.nome
FROM tbEmpregado
JOIN tbCargo ON tbEmpregado.codigo = tbCargo.codigo
JOIN tbDepartamento ON tbEmpregado.coddepartamento = tbDepartamento.codigo
WHERE ativo = 'true';

SELECT FROM tbObra
WHERE datainicio > '2021-01-01' AND dataprevistatermino < '2022-01-01';

DELETE FROM tbEmpregado
WHERE coddepartamento = 5;

UPDATE tbEmpregado
SET salario = salario + (salario * 15 / 100);

SELECT tbObra.codigo, tbObra.descricao, tbEmpregado.primeiro_nome, tbEmpregado.sobrenome, tbEmpregado_obra.dataalocacaoempregado
FROM tbEmpregado_obra
JOIN tbEmpregado ON tbEmpregado_obra.codempregado = tbEmpregado.codigo
JOIN tbObra ON tbEmpregado_obra.codobra = tbObra.codigo;

SELECT DISTINCT cidade
FROM tbObra;

SELECT tbEmpregado.primeiro_nome, tbEmpregado.sobrenome, tbDepartamento.nome
FROM tbEmpregado
JOIN tbDepartamento ON tbEmpregado.coddepartamento = tbDepartamento.codigo
ORDER BY tbEmpregado.primeiro_nome ASC;

CREATE TABLE tbFornecedor (
	codigo INTEGER PRIMARY KEY,
	descricao VARCHAR(100) NOT NULL,
	fone_contato VARCHAR(15) NOT NULL CHECK (fone_contato ~ '^[0-9]{15}$'),
	cpf CHAR(11) NOT NULL CHECK (cpf ~ '^[0-9]{10,15}$')
);

ALTER TABLE tbFornecedor
ADD COLUMN cidade VARCHAR(50);

SELECT tbEmpregado.primeiro_nome, tbEmpregado.sobrenome, tbCargo.nome
FROM tbEmpregado
JOIN tbCargo ON tbEmpregado.codcargo = tbCargo.codigo
WHERE tbEmpregado.sobrenome LIKE 'Silva%';

SELECT * FROM tbEmpregado;