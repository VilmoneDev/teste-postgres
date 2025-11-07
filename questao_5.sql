-- Questão 5
-- Descrição: SUBCONSULTA e WINDOW FUNCTION.

WITH gastos AS (
  SELECT
    f.id,
    f.nome,
    f.departamento,
    SUM(p.valor_pago)                     AS total_gasto,
    COUNT(DISTINCT s.id)                  AS qtd_solicitacoes
  FROM funcionarios f
  JOIN solicitacoes_auxilio s ON s.funcionario_id = f.id
  JOIN pagamentos p ON p.solicitacao_id = s.id
  WHERE s.status = 'APROVADO'             
  GROUP BY f.id, f.nome, f.departamento
),
ranked AS (
  SELECT
    id,
    nome,
    departamento,
    total_gasto,
    qtd_solicitacoes,
    RANK() OVER (PARTITION BY departamento ORDER BY total_gasto DESC) AS ranking_departamento,
    ROUND(
      100.0 * total_gasto / NULLIF(SUM(total_gasto) OVER (PARTITION BY departamento), 0),
      2
    ) AS percentual_departamento
  FROM gastos
)
SELECT
  nome,
  departamento,
  total_gasto,
  qtd_solicitacoes,
  ranking_departamento,
  percentual_departamento
FROM ranked
WHERE ranking_departamento <= 3
ORDER BY departamento, ranking_departamento;
