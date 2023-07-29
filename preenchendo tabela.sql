-- inserindo tabela cliente
INSERT INTO cliente (nome, sobrenome, cpf, data_nascimento, telefone)
VALUES
  ('John', 'Doe', '11111111111', '1990-01-01', '555-123456'),
  ('Jane', 'Smith', '22222222222', '1985-05-15', '555-987654'),
  ('Bob', 'Johnson', '33333333333', '1988-09-30', '555-789012'),
  ('Alice', 'Williams', '44444444444', '1992-12-20', '555-456789'),
  ('David', 'Brown', '55555555555', '1995-04-05', '555-345678'),
  ('Emma', 'Davis', '66666666666', '1983-07-10', '555-234567'),
  ('Michael', 'Martinez', '77777777777', '1991-06-25', '555-901234'),
  ('Sophia', 'Jones', '88888888888', '1987-11-12', '555-678901'),
  ('William', 'Wilson', '99999999999', '1994-03-15', '555-567890'),
  ('Olivia', 'Anderson', '10101010101', '1998-08-08', '555-456789');

-- inserindo tabela endereço
INSERT INTO endereço (idCliente, cep, rua, bairro, cidade)
VALUES
  (1, '12345-678', 'Main Street', 'Downtown', 'Cityville'),
  (2, '98765-432', 'Broadway', 'Uptown', 'Townsburg'),
  (3, '45678-901', 'Park Avenue', 'Midtown', 'Villagetown'),
  (4, '54321-098', 'Ocean Drive', 'Seaside', 'Beachville'),
  (5, '56789-012', 'Hillside Road', 'Mountain View', 'Hilltown'),
  (6, '23456-789', 'Lakeview Street', 'Lakeside', 'Laketown'),
  (7, '78901-234', 'Sunset Boulevard', 'West End', 'Sunset City'),
  (8, '01234-567', 'Forest Avenue', 'Greenwood', 'Greentown'),
  (9, '34567-890', 'River Road', 'Riverside', 'Rivertown'),
  (10, '90123-456', 'Garden Street', 'Gardentown', 'Flower City');

-- inserindo tabela veiculo
INSERT INTO veiculo (idCliente, marca, modelo, ano, placa)
VALUES
  (1, 'Toyota', 'Corolla', '2020-01-01', 'ABC123'),
  (2, 'Honda', 'Civic', '2018-06-15', 'XYZ789'),
  (3, 'Ford', 'Focus', '2019-03-20', 'DEF456'),
  (4, 'Chevrolet', 'Cruze', '2022-05-10', 'GHI789'),
  (5, 'Volkswagen', 'Golf', '2021-11-30', 'JKL123'),
  (6, 'Hyundai', 'Elantra', '2017-09-25', 'MNO456'),
  (7, 'Nissan', 'Altima', '2016-07-12', 'PQR789'),
  (8, 'Kia', 'Optima', '2019-12-05', 'STU123'),
  (9, 'Subaru', 'Impreza', '2020-10-08', 'VWX456'),
  (10, 'Mazda', '3', '2018-04-02', 'YZA789');
  
-- inserindo tabela serviço
INSERT INTO serviço (idVeiculo, idCliente, mao_de_obra, autorizaçao, status_serviço)
VALUES
  (1, 1, 'Engine Repair', 'aprovado', 'autorização'),
  (2, 2, 'Brake Inspection', 'reprovado', 'avaliação'),
  (3, 3, 'Oil Change', 'aprovado', 'autorização'),
  (4, 4, 'Tire Replacement', 'aprovado', 'autorização'),
  (5, 5, 'Electrical Diagnostics', 'reprovado', 'avaliação'),
  (6, 6, 'Air Conditioning Repair', 'aprovado', 'autorização'),
  (7, 7, 'Transmission Service', 'aprovado', 'autorização'),
  (8, 8, 'Alignment Check', 'reprovado', 'avaliação'),
  (9, 9, 'Battery Replacement', 'aprovado', 'autorização'),
  (10, 10, 'Suspension Repair', 'aprovado', 'autorização');
  
-- inserindo tabela funcionario
INSERT INTO funcionario (matricula, nome, sobrenome)
VALUES
  ('1001', 'Michael', 'Johnson'),
  ('1002', 'Emily', 'Brown'),
  ('1003', 'Daniel', 'Lee'),
  ('1004', 'Olivia', 'Miller'),
  ('1005', 'James', 'Garcia'),
  ('1006', 'Sophia', 'Lopez'),
  ('1007', 'Benjamin', 'Martinez'),
  ('1008', 'Ava', 'Gonzalez'),
  ('1009', 'William', 'Perez'),
  ('1010', 'Isabella', 'Rodriguez');
  
-- inserindo tabela relação funcionario serviço
INSERT INTO funcionario_serviço (idFuncionario, idServiço)
VALUES
  (1, 1),
  (2, 1),
  (3, 1),
  (4, 2),
  (5, 2),
  (6, 3),
  (7, 4),
  (8, 5),
  (9, 6),
  (10, 7);
  
  -- inserindo tabela peça
  INSERT INTO peça (codigo_peça, nome_peça, quantidade, preço)
VALUES
  ('P1001', 'Oil Filter', '100', '5.99'),
  ('P1002', 'Air Filter', '80', '9.99'),
  ('P1003', 'Brake Pads', '50', '29.99'),
  ('P1004', 'Spark Plugs', '200', '3.49'),
  ('P1005', 'Battery', '30', '4.65');

-- preenchendo os dados de preço em serviço
UPDATE serviço
SET preço_serviço = 100.00
WHERE idServiço = 1;

UPDATE serviço
SET preço_serviço = 140.00
WHERE idServiço = 2;

UPDATE serviço
SET preço_serviço = 105.00
WHERE idServiço = 3;

UPDATE serviço
SET preço_serviço = 200.00
WHERE idServiço = 4;

UPDATE serviço
SET preço_serviço = 250.00
WHERE idServiço = 5;

UPDATE serviço
SET preço_serviço = 300.00
WHERE idServiço = 6;

UPDATE serviço
SET preço_serviço = 162.00
WHERE idServiço = 7;

UPDATE serviço
SET preço_serviço = 645.00
WHERE idServiço = 8;

UPDATE serviço
SET preço_serviço = 100.00
WHERE idServiço = 9;

UPDATE serviço
SET preço_serviço = 50.05
WHERE idServiço = 10;

    
