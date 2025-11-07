-- Criação das tabelas
-- Descrição: Criação tabela de funcionários, solicitações de auxilio, pagamentos e log auditoria.


CREATE TABLE funcionarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(20) UNIQUE NOT NULL,
    departamento VARCHAR(50) NOT NULL
);

CREATE TABLE solicitacoes_auxilio (
    id SERIAL PRIMARY KEY,
    funcionario_id INT REFERENCES funcionarios(id),
    valor_solicitado NUMERIC(10,2) NOT NULL,
    status VARCHAR(20) CHECK (status IN ('PENDENTE', 'APROVADO', 'CANCELADO', 'PAGO')) DEFAULT 'PENDENTE',
    data_solicitacao DATE NOT NULL
);

CREATE TABLE pagamentos (
    id SERIAL PRIMARY KEY,
    solicitacao_id INT REFERENCES solicitacoes_auxilio(id),
    data_pagamento DATE NOT NULL,
    valor_pago NUMERIC(10,2) NOT NULL
);


CREATE TABLE log_auditoria (
    id SERIAL PRIMARY KEY,
    tabela_afetada VARCHAR(50),
    operacao VARCHAR(50),
    data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    detalhes TEXT
);
