-- Questão 3
-- Descrição: TRIGGER.

-- Criação da função que será chamada pelo trigger
CREATE OR REPLACE FUNCTION fn_atualiza_status_pagamento()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE solicitacoes_auxilio
    SET status = 'PAGO'
    WHERE id = NEW.solicitacao_id;

    INSERT INTO log_auditoria (tabela_afetada, operacao, detalhes)
    VALUES ('pagamentos', 'INSERT', CONCAT('Solicitação ', NEW.solicitacao_id, ' atualizada para PAGO.'));

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Criação do TRIGGER
CREATE TRIGGER trg_pagamento_insert
AFTER INSERT ON pagamentos
FOR EACH ROW
EXECUTE FUNCTION fn_atualiza_status_pagamento();