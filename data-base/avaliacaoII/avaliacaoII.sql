INSERT INTO fazenda
VALUES (5, 'LARANJEIRAS DO SERTÃO', 8000.00, 1, 50000.00, 4);

UPDATE funcionario
SET salario = 3500
WHERE salario < 1500;

DELETE FROM funcionario
WHERE salario = 3600 AND sexo = 'F';

SELECT * FROM funcionario
WHERE datanascimento BETWEEN '1970-01-01' AND '1980-01-01';

SELECT * FROM animal
WHERE datanascimento BETWEEN '2015-01-01' AND '2016-12-31';

SELECT * FROM funcionario
WHERE nome like '%Lopes';

SELECT * FROM animal
WHERE codPai = 0
ORDER BY nome;

SELECT codigo, nome, sexo
FROM funcionario
WHERE datanascimento IS NULL;

SELECT funcionario.codigo, nome, funcao.codigo, funcao.nome_funcao
FROM funcionario
JOIN funcao ON funcionario.codfuncao = funcao.codigo;

SELECT animal.codigo, nome, raca.nome_raca
FROM animal
JOIN raca ON animal.codraca = raca.codigo;

SELECT idlote, descricao, codfuncresp, nome
FROM lote
JOIN funcionario ON lote.idlote = funcionario.codigo;

SELECT idlote, descricao, funcionario.codigo, funcionario.nome, fazenda.nome
FROM lote
JOIN funcionario ON lote.codfuncresp = funcionario.codigo
JOIN fazenda ON fazenda.codigo = lote.codfazenda
ORDER BY funcionario.nome ASC;

SELECT funcionario.codigo, funcionario.nome, funcionario_fazenda.codfazenda, fazenda.nome, funcionario_fazenda.datainiciocontrato, funcionario_fazenda.datafimcontrato
FROM funcionario_fazenda
JOIN funcionario ON funcionario.codigo = funcionario_fazenda.codigofunc
JOIN fazenda ON fazenda.codigo = funcionario_fazenda.codfazenda;

SELECT a1.codigo, a1.nome AS animal, a2.nome AS pai
FROM animal a1
INNER JOIN animal a2 ON a1.codigo = a2.codpai;

SELECT * FROM animal;

SELECT fazenda.nome, localidade.nome_localidade, funcionario.nome
FROM fazenda
JOIN localidade ON fazenda.codlocalidade = localidade.codigo
JOIN funcionario ON fazenda.codfuncresp = funcionario.codigo;

SELECT animal.nome, animal_caracteristica.caracteristica
FROM animal_caracteristica
JOIN animal ON animal_caracteristica.codanimal = animal.codigo;

SELECT nome FROM animal
WHERE codpai = 2;

SELECT *
FROM funcionario_fazenda
JOIN funcao ON funcionario_fazenda.codigofunc = funcao.codigo
JOIN funcionario ON funcionario.codfuncao = funcao.codigo
WHERE funcao.nome_funcao = 'cozinheira';

SELECT DISTINCT funcionario.nome
FROM funcionario
JOIN funcionario_fazenda ON funcionario_fazenda.codigofunc = funcionario.codigo
JOIN fazenda ON fazenda.codigo = funcionario_fazenda.codfazenda;