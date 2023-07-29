-- pergunta sobre oficina
show tables;
select*from cliente;
select*from serviço;

-- Quantos clientes eles tem e seus gastos

SELECT idCliente, COUNT(DISTINCT idServiço) AS total_services, SUM(preço_serviço) AS total_expenses
FROM serviço
GROUP BY idCliente;

--  Quais os modelos de carros eles tem

SELECT c.nome AS cliente_nome, c.sobrenome AS cliente_sobrenome, v.modelo AS modelo_carro
FROM cliente c
INNER JOIN veiculo v ON c.idCliente = v.idCliente;

-- quais funcionarios estao em que carro

SELECT f.nome AS funcionario_nome, f.sobrenome AS funcionario_sobrenome, v.marca AS marca_carro, v.modelo AS modelo_carro
FROM funcionario f
INNER JOIN funcionario_serviço fs ON f.idFuncionario = fs.idFuncionario
INNER JOIN serviço s ON fs.idServiço = s.idServiço
INNER JOIN veiculo v ON s.idVeiculo = v.idVeiculo;

