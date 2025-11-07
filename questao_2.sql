-- Questão 2
-- Descrição: GROUP BY e HAVING.
-- Observação: Para testar essa consulta inseri mais dados, para que existam 10 solicitações em algum mês.

SELECT
    TO_CHAR(s.data_solicitacao, 'YYYY-MM') AS ano_mes,
    COUNT(*) AS total_solicitacoes,
    SUM(s.valor_solicitado) AS valor_total,
    AVG(s.valor_solicitado) AS valor_medio,
    COUNT(*) FILTER (WHERE s.status = 'APROVADO') AS total_aprovadas
FROM solicitacoes_auxilio s
GROUP BY TO_CHAR(s.data_solicitacao, 'YYYY-MM')
HAVING COUNT(*) > 10
ORDER BY ano_mes DESC;
