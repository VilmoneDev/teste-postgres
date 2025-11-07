-- Questão 1
-- Descrição: JOIN e ORDER BY.

SELECT
    f.nome AS nome_funcionario,
    f.matricula,
    f.departamento,
    s.valor_solicitado,
    s.status,
    TO_CHAR(s.data_solicitacao, 'DD/MM/YYYY') AS data_solicitacao
FROM solicitacoes_auxilio s
JOIN funcionarios f ON f.id = s.funcionario_id
WHERE s.status = 'APROVADO'
  AND s.data_solicitacao >= CURRENT_DATE - INTERVAL '6 months'
ORDER BY f.departamento ASC, s.valor_solicitado DESC;
