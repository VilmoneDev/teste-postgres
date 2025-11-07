-- Teste da trigger (gera log e muda status)

INSERT INTO pagamentos (solicitacao_id, data_pagamento, valor_pago)
VALUES (1, CURRENT_DATE, 220.00);

