-- Inserção de dados
-- Descrição: Inserção de dados testes nas tabelas.

-- Funcionários
INSERT INTO funcionarios (nome, matricula, departamento)
VALUES
('João Pereira', 'MAT003', 'TI'),
('Ana Oliveira', 'MAT004', 'Financeiro'),
('Carlos Mendes', 'MAT005', 'Comercial'),
('Beatriz Lima', 'MAT006', 'Marketing'),
('Lucas Almeida', 'MAT007', 'Produção'),
('Fernanda Rocha', 'MAT008', 'Jurídico'),
('Marcos Santos', 'MAT009', 'RH'),
('Patrícia Costa', 'MAT010', 'Compras'),
('Ricardo Gomes', 'MAT011', 'Logística'),
('Juliana Ferreira', 'MAT012', 'Financeiro'),
('André Nunes', 'MAT013', 'TI'),
('Camila Barbosa', 'MAT014', 'Comercial'),
('Tiago Carvalho', 'MAT015', 'Produção'),
('Larissa Ribeiro', 'MAT016', 'RH'),
('Diego Martins', 'MAT017', 'Marketing'),
('Natália Azevedo', 'MAT018', 'Jurídico'),
('Eduardo Silva', 'MAT019', 'Compras'),
('Paula Teixeira', 'MAT020', 'Logística'),
('Gabriel Castro', 'MAT021', 'TI'),
('Sabrina Melo', 'MAT022', 'Financeiro');

--Solicitações
INSERT INTO solicitacoes_auxilio (funcionario_id, valor_solicitado, status, data_solicitacao)
VALUES
(1, 180.00, 'PENDENTE', '2025-01-10'),
(2, 200.00, 'APROVADO', '2025-01-15'),
(3, 150.00, 'PAGO', '2025-02-05'),
(4, 220.00, 'APROVADO', '2025-02-12'),
(5, 250.00, 'CANCELADO', '2025-03-01'),
(6, 190.00, 'PAGO', '2025-03-10'),
(7, 210.00, 'APROVADO', '2025-03-25'),
(8, 230.00, 'PENDENTE', '2025-04-02'),
(9, 170.00, 'PAGO', '2025-04-20'),
(10, 260.00, 'APROVADO', '2025-05-05'),
(11, 240.00, 'CANCELADO', '2025-05-12'),
(12, 180.00, 'PENDENTE', '2025-05-25'),
(13, 200.00, 'APROVADO', '2025-06-03'),
(14, 220.00, 'PAGO', '2025-06-15'),
(15, 250.00, 'PENDENTE', '2025-06-28'),
(16, 230.00, 'APROVADO', '2025-07-08'),
(17, 210.00, 'CANCELADO', '2025-07-20'),
(18, 190.00, 'PENDENTE', '2025-08-01'),
(19, 170.00, 'PAGO', '2025-08-10'),
(20, 260.00, 'APROVADO', '2025-09-02'),
(2, 240.00, 'PENDENTE', '2025-09-15'),
(4, 200.00, 'PAGO', '2025-09-25'),
(5, 220.00, 'APROVADO', '2025-10-05'),
(7, 250.00, 'CANCELADO', '2025-10-18'),
(10, 230.00, 'APROVADO', '2025-10-30');

--pagamentos
INSERT INTO pagamentos (solicitacao_id, data_pagamento, valor_pago)
VALUES
(3, '2025-02-12', 150.00),
(4, '2025-02-20', 220.00),
(6, '2025-03-17', 190.00),
(7, '2025-04-02', 210.00),
(9, '2025-04-27', 170.00),
(10, '2025-05-13', 260.00),
(13, '2025-06-10', 200.00),
(14, '2025-06-22', 220.00),
(16, '2025-07-15', 230.00),
(19, '2025-08-17', 170.00),
(20, '2025-09-10', 260.00),
(22, '2025-10-02', 200.00),
(23, '2025-10-12', 220.00),
(25, '2025-11-06', 230.00),
(2, '2025-01-22', 200.00),
(12, '2025-06-02', 180.00),
(15, '2025-07-05', 250.00),
(18, '2025-08-09', 190.00),
(21, '2025-09-22', 240.00),
(24, '2025-10-25', 250.00);



