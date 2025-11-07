-- Questão 4
-- Descrição: STORED PROCEDURE.

CREATE OR REPLACE PROCEDURE sp_cancelar_solicitacao(p_id INT, p_motivo TEXT)
LANGUAGE plpgsql
AS $$
DECLARE
    v_status_atual VARCHAR(20);
BEGIN
    SELECT status INTO v_status_atual
    FROM solicitacoes_auxilio
    WHERE id = p_id;

    IF v_status_atual IS NULL THEN
        RAISE EXCEPTION 'Solicitação não encontrada';
    ELSIF v_status_atual = 'PAGO' THEN
        RAISE EXCEPTION 'Não é possível cancelar uma solicitação já paga';
    ELSE
        UPDATE solicitacoes_auxilio
        SET status = 'CANCELADO'
        WHERE id = p_id;

        INSERT INTO log_auditoria (tabela_afetada, operacao, detalhes)
        VALUES ('solicitacoes_auxilio', 'UPDATE', CONCAT('Solicitação ', p_id, ' cancelada. Motivo: ', p_motivo));

        RAISE NOTICE 'Solicitação % cancelada com sucesso', p_id;
    END IF;
END;
$$;
