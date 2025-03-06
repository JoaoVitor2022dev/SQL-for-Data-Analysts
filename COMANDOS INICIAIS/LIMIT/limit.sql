-- DESCRIÇÃO
-- O comando LIMIT é utilizado para restringir o número de linhas retornadas em uma consulta.
-- É comumente utilizado durante a exploração de dados para visualizar uma amostra dos dados.

-- SINTAXE
-- A sintaxe básica do comando LIMIT é a seguinte:

SELECT coluna_1, coluna_2, coluna_3
FROM schema_1.tabela_1
WHERE condicao_x = true
ORDER BY coluna_1
LIMIT N;

-- EXEMPLOS

-- (Exemplo 1) Seleção das N primeiras linhas usando LIMIT
-- Liste as 10 primeiras linhas da tabela "funnel" da schema "sales"

SELECT *
FROM sales.funnel
LIMIT 10;

-- (Exemplo 2) Seleção das N primeiras linhas usando LIMIT e ORDER BY
-- Liste os 10 produtos mais caros da tabela "products" da schema "sales"

SELECT *
FROM sales.products
ORDER BY price DESC
LIMIT 10;

-- RESUMO
-- (1) O comando LIMIT é utilizado para limitar o número de linhas retornadas em uma consulta.
-- (2) Ele é especialmente útil em fases de exploração de dados, quando você deseja visualizar uma amostra.
-- (3) Frequentemente utilizado em conjunto com o comando ORDER BY para identificar os "Top N" resultados,
--     como "N pagamentos mais recentes", "N produtos mais caros", etc.
