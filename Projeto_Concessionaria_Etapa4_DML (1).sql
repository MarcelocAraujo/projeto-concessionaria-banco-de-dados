USE concessionaria;

INSERT INTO veiculo (placa, chassi, marca, modelo, ano_fabricacao, cor, km_rodados, preco, status_veiculo) 
VALUES 	
	('ABC1D23', '9BWZZZ377VT004251', 'Volkswagen', 'Gol', 2018, 'Branco', 45000, 32000.00, 'disponivel'),
	('BCD2E34', '9BWZZZ377VT004252', 'Chevrolet', 'Onix', 2020, 'Prata', 30000, 52000.00, 'vendido'),
	('CDE3F45', '9BWZZZ377VT004253', 'Fiat', 'Strada', 2021, 'Vermelho', 15000, 85000.00, 'disponivel'),
	('DEF4G56', '9BWZZZ377VT004254', 'Toyota', 'Corolla', 2019, 'Preto', 60000, 95000.00, 'reservado'),
	('EFG5H67', '9BWZZZ377VT004255', 'Honda', 'Civic', 2022, 'Azul', 5000, 130000.00, 'disponivel'),
	('FGH6I78', '9BWZZZ377VT004256', 'Hyundai', 'HB20', 2017, 'Cinza', 80000, 38000.00, 'em revisao'),
	('GHI7J89', '9BWZZZ377VT004257', 'Renault', 'Kwid', 2023, 'Laranja', 8000, 72000.00, 'disponivel'),
	('HIJ8K90', '9BWZZZ377VT004258', 'Jeep', 'Compass', 2021, 'Branco', 25000, 175000.00, 'reservado'),
	('IJK9L01', '9BWZZZ377VT004259', 'Ford', 'Ranger', 2020, 'Prata', 50000, 220000.00, 'vendido'),
	('JKL0M12', '9BWZZZ377VT004260', 'BMW', 'Serie 3', 2022, 'Preto', 12000, 380000.00, 'em revisao'),
	('KLM1N23', '9BWZZZ377VT004261', 'Fiat', 'Pulse', 2023, 'Vermelho', 3000, 98000.00, 'disponivel'),
	('LMN2O34', '9BWZZZ377VT004262', 'Volkswagen', 'Polo', 2022, 'Branco', 18000, 88000.00, 'disponivel'),
	('MNO3P45', '9BWZZZ377VT004263', 'Chevrolet', 'Tracker', 2021, 'Azul', 22000, 115000.00, 'reservado'),
	('NOP4Q56', '9BWZZZ377VT004264', 'Toyota', 'Hilux', 2020, 'Prata', 55000, 250000.00, 'vendido'),
	('OPQ5R67', '9BWZZZ377VT004265', 'Honda', 'HR-V', 2021, 'Cinza', 28000, 145000.00, 'disponivel'),
	('PQR6S78', '9BWZZZ377VT004266', 'Hyundai', 'Creta', 2022, 'Preto', 10000, 135000.00, 'em revisao'),
	('QRS7T89', '9BWZZZ377VT004267', 'Volkswagen', 'T-Cross', 2023, 'Branco', 5000, 120000.00, 'disponivel'),
	('RST8U90', '9BWZZZ377VT004268', 'Fiat', 'Cronos', 2020, 'Prata', 40000, 75000.00, 'vendido'),
	('STU9V01', '9BWZZZ377VT004269', 'Renault', 'Sandero', 2019, 'Vermelho', 62000, 55000.00, 'em revisao'),
	('TUV0W12', '9BWZZZ377VT004270', 'Jeep', 'Renegade', 2022, 'Laranja', 15000, 160000.00, 'reservado');
    
INSERT INTO cliente (nome, cpf, data_nascimento, email, telefone, endereco) 
VALUES
	('Ana Paula Ferreira', '12345678901', '1990-03-15', 'ana.paula@gmail.com', '81999990001', 'Rua das Flores, 123, Recife-PE'),
	('Carlos Eduardo Silva', '23456789012', '1985-07-22', 'carlos.silva@gmail.com', '81999990002', 'Av. Boa Viagem, 456, Recife-PE'),
	('Fernanda Lima', '34567890123', '1992-11-08', 'fernanda.lima@gmail.com', '81999990003', 'Rua do Hospicio, 789, Recife-PE'),
	('João Pedro Santos', '45678901234', '1988-04-30', 'joao.santos@gmail.com', '81999990004', 'Av. Agamenon Magalhaes, 321, Recife-PE'),
	('Mariana Costa', '56789012345', '1995-09-12', 'mariana.costa@gmail.com', '81999990005', 'Rua Imperial, 654, Recife-PE'),
	('Rafael Alves', '67890123456', '1983-01-25', 'rafael.alves@gmail.com', '81999990006', 'Av. Caxanga, 987, Recife-PE'),
	('Juliana Mendes', '78901234567', '1997-06-18', 'juliana.mendes@gmail.com', '81999990007', 'Rua da Aurora, 147, Recife-PE'),
	('Bruno Carvalho', '89012345678', '1991-12-03', 'bruno.carvalho@gmail.com', '81999990008', 'Av. Norte, 258, Recife-PE'),
	('Patricia Rodrigues', '90123456789', '1986-08-14', 'patricia.rodrigues@gmail.com', '81999990009', 'Rua Benfica, 369, Recife-PE'),
	('Lucas Oliveira', '01234567890', '1993-02-27', 'lucas.oliveira@gmail.com', '81999990010', 'Av. Dois Corregos, 741, Caruaru-PE'),
	('Camila Souza', '11223344556', '1998-05-09', 'camila.souza@gmail.com', '81999990011', 'Rua do Riachuelo, 852, Olinda-PE'),
	('Diego Nascimento', '22334455667', '1987-10-21', 'diego.nascimento@gmail.com', '81999990012', 'Av. Dantas Barreto, 963, Recife-PE'),
	('Larissa Barbosa', '33445566778', '1994-03-07', 'larissa.barbosa@gmail.com', '81999990013', 'Rua da Saudade, 159, Recife-PE'),
	('Thiago Pereira', '44556677889', '1989-07-16', 'thiago.pereira@gmail.com', '81999990014', 'Av. Mascarenhas de Moraes, 357, Recife-PE'),
	('Beatriz Gomes', '55667788990', '1996-11-29', 'beatriz.gomes@gmail.com', '81999990015', 'Rua Visconde de Suassuna, 246, Recife-PE');
    
INSERT INTO cargo (nome_cargo, descricao, salario_base) 
VALUES
	('Gerente', 'Responsavel pela gestao geral da concessionaria', 8500.00),
	('Vendedor', 'Responsavel pela venda de veiculos aos clientes', 3500.00),
	('Mecanico', 'Responsavel pela revisao e manutencao dos veiculos', 4000.00),
	('Financeiro', 'Responsavel pela analise e aprovacao de financiamentos', 5000.00),
	('Recepcionista', 'Responsavel pelo atendimento inicial dos clientes', 2500.00);
    
INSERT INTO contato (tipo, valor, id_cliente) 
VALUES
	('telefone', '81988880001', 1),
	('email', 'ana.paula.alternativo@gmail.com', 1),
	('telefone', '81988880002', 2),
	('email', 'carlos.silva2@gmail.com', 2),
	('telefone', '81988880003', 3),
	('email', 'fernanda.lima2@hotmail.com', 3),
	('telefone', '81988880004', 4),
	('email', 'joao.santos2@gmail.com', 4),
	('telefone', '81988880005', 5),
	('email', 'mariana.costa2@gmail.com', 5),
	('telefone', '81988880006', 6),
	('email', 'rafael.alves2@gmail.com', 6),
	('telefone', '81988880007', 7),
	('email', 'juliana.mendes2@gmail.com', 7),
	('telefone', '81988880008', 8),
	('email', 'bruno.carvalho2@gmail.com', 8),
	('telefone', '81988880009', 9),
	('email', 'patricia.rodrigues2@gmail.com', 9),
	('telefone', '81988880010', 10),
	('email', 'lucas.oliveira2@gmail.com', 10),
	('telefone', '81988880011', 11),
	('email', 'camila.souza2@gmail.com', 11),
	('telefone', '81988880012', 12),
	('email', 'diego.nascimento2@gmail.com', 12),
	('telefone', '81988880013', 13),
	('email', 'larissa.barbosa2@gmail.com', 13),
	('telefone', '81988880014', 14),
	('email', 'thiago.pereira2@gmail.com', 14),
	('telefone', '81988880015', 15),
	('email', 'beatriz.gomes2@gmail.com', 15);
    
INSERT INTO funcionario (nome, cpf, salario, data_admissao, id_cargo) 
VALUES
	('Roberto Mendonca', '98765432100', 8500.00, '2015-03-10', 1),
	('Amanda Vieira', '87654321099', 3500.00, '2018-06-15', 2),
	('Paulo Henrique Lima', '76543210988', 3500.00, '2019-02-20', 2),
	('Marcos Aurelio', '65432109877', 4000.00, '2017-08-05', 3),
	('Tatiane Souza', '54321098766', 4000.00, '2020-01-12', 3),
	('Rodrigo Ferreira', '43210987655', 5000.00, '2016-11-30', 4),
	('Claudia Nunes', '32109876544', 2500.00, '2021-04-22', 5),
	('Felipe Cardoso', '21098765433', 3500.00, '2022-07-08', 2),
	('Simone Barros', '10987654322', 4000.00, '2018-09-14', 3),
	('Andre Moreira', '19876543211', 5000.00, '2020-03-25', 4);

INSERT INTO venda (data_venda, valor_total, forma_pagamento, id_veiculo, id_cliente, id_funcionario) 
VALUES
('2024-01-15', 52000.00, 'financiamento', 2, 1, 2),
('2024-02-20', 95000.00, 'financiamento', 4, 2, 3),
('2024-03-10', 220000.00, 'financiamento', 9, 3, 2),
('2024-04-05', 250000.00, 'financiamento', 14, 4, 8),
('2024-05-18', 75000.00, 'dinheiro', 18, 5, 3),
('2024-06-22', 55000.00, 'pix', 11, 6, 2),
('2024-07-30', 32000.00, 'cartao de debito', 1, 7, 8),
('2024-08-14', 85000.00, 'cartao de credito', 3, 8, 3),
('2024-09-09', 130000.00, 'financiamento', 5, 9, 2),
('2024-10-25', 88000.00, 'pix', 12, 10, 8),
('2024-11-11', 115000.00, 'financiamento', 13, 11, 3),
('2024-12-03', 160000.00, 'cartao de credito', 20, 12, 2),
('2025-01-17', 38000.00, 'dinheiro', 17, 13, 8),
('2025-02-28', 72000.00, 'pix', 7, 14, 3),
('2025-03-20', 52000.00, 'cartao de debito', 15, 15, 2);
    
INSERT INTO financiamento (banco, num_parcelas, taxa_juros, valor_entrada, id_venda) 
VALUES
('Banco do Brasil', 48, 1.29, 5000.00, 1),
('Bradesco', 36, 1.49, 10000.00, 2),
('Itau', 60, 1.19, 20000.00, 3),
('Santander', 48, 1.39, 25000.00, 4),
('Caixa Economica', 36, 1.09, 8000.00, 9),
('Banco do Brasil', 24, 1.29, 12000.00, 11),
('Bradesco', 48, 1.49, 15000.00, 12);

INSERT INTO revisao (data_revisao, descricao, custo, id_veiculo, id_funcionario) VALUES
('2024-01-10', 'Troca de oleo e filtros', 350.00, 6, 4),
('2024-02-15', 'Revisao de freios e pastilhas', 800.00, 10, 9),
('2024-03-22', 'Alinhamento e balanceamento', 250.00, 16, 4),
('2024-04-18', 'Troca de correia dentada', 1200.00, 6, 9),
('2024-05-30', 'Revisao geral 50000km', 2500.00, 19, 4),
('2024-06-12', 'Troca de velas e bobinas', 600.00, 10, 9),
('2024-07-25', 'Revisao de suspensao', 950.00, 16, 4),
('2024-08-08', 'Troca de oleo e filtro de ar', 380.00, 6, 9),
('2024-09-14', 'Revisao de arrefecimento', 700.00, 19, 4),
('2025-01-20', 'Troca de amortecedores', 1800.00, 10, 9);
