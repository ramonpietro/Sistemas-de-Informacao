/*
 Script criado para a criação do banco de dados da Empresa Hipotética de Projetos de  Construção
 Data Criação: 09/10/2024
 Disciplina: Banco de Dados    ano: 2024 
*/


INSERT INTO tbcargo (codigo, nome) VALUES 
	(1, 'secretaria'),
	(2, 'gerente de projeto'),
	(3, 'arquiteto'),
	(4, 'administrador'),
	(5, 'gerente de qualidade')
;

INSERT INTO tbdepartamento (codigo, nome, andar) VALUES
	(1,'desenho',3),
	(2,'vendas',1),
	(3,'finanças',3),
	(4,'qualidade',2),
	(5,'engenharia',1),
	(6,'homologação',2),
	(7,'construção de obras',1)
;

SET datestyle = 'ISO, DMY';

INSERT INTO tbempregado (codigo, primeiro_nome, sobrenome, sexo, cpf, codCargo, dataNascimento, dataAdmissao, salario, ativo, codDepartamento) VALUES
	(1,'Vera','Maia','F', '690123345-21', 1, '10/01/1998', '10/01/2020', 1567.90, true, 3),
	(2,'Ana','Silva','F', '690783345-11', 2, '11/01/1996', '19/06/2022', 2340.90, true, 5),
	(3,'Pedro','Silva Pontes','M', '890283345-10', 3, '21/03/2001', '09/04/2022', 2340.90, true, 4),
	(4,'Carlos','Silva Moura','M', '845683345-91', 5, '11/01/1996', '19/06/2022', 2340.90, true, 5),
	(5,'Ramon','Barbosa','M', '656778334-91', 3, '22/02/2020', '29/07/2021', 1440.90, false, 6)
;

INSERT INTO tbobra (codigo, descricao, cidade, uf, dataInicio, dataPrevistaTermino, situacao, ativo, orcamento) VALUES
	(1,'viaduto navegantes', 'Itaituba', 'PA', '01/01/2023', '23/03/2026', 'aguardando ferros', true, 33989.90),
	(2,'ponte são braz', 'Santarém', 'PA', '01/05/2020', '06/05/2022', 'obra parada', true, 12989.90),		
	(3,'quadra esportista', 'Recife', 'PE', '22/03/2021', '22/03/2022', 'empresa sem nota', true, 623989.90),
	(4,'troca de teto', 'Recife', 'PE', '22/03/2021', '22/03/2022', 'obra sem cimento', false, 0),
	(5,'pavimentação de via', 'Maceio', 'AL', '05/01/2021', '22/10/2021', 'aguardando quadro', true, 49123.90),
	(6,'elevação de piso', 'Maceio', 'AL', '05/09/2023', '11/12/2023', 'piso retirado', true, 6123.00)
;

INSERT INTO tbempregado_obra (codObra, codEmpregado, dataAlocacaoEmpregado) VALUES
	(1,'2','11/07/2023'),
	(1,'3','10/07/2023'),
	(2,'1','14/05/2021'),
	(3,'4','10/01/2022'),
	(4,'5','10/02/2023'),
	(4,'3','10/02/2023')
;