# 📚 Curso de PostgreSQL — Consultas Complexas

## ✨ Sobre o Curso

Este curso é focado no desenvolvimento de habilidades avançadas em **consultas SQL** usando o **PostgreSQL**.  
Exploramos conceitos fundamentais e avançados para trabalhar com bancos de dados relacionais, focando principalmente em:

- Joins (INNER, LEFT, RIGHT, FULL)
- Subqueries (correlacionadas e não correlacionadas)
- CTEs (Common Table Expressions)
- Agrupamentos e Funções de Agregação
- Filtragem Avançada
- Ordenações e Paginação de Resultados
- Manipulação e Otimização de Consultas Complexas

O objetivo é capacitar a construção de consultas robustas e performáticas para aplicações reais.

---

## 🧩 Conteúdo Abordado

### 📌 1. Revisão de Fundamentos SQL
- Estrutura de um banco de dados relacional
- Comandos básicos: `SELECT`, `INSERT`, `UPDATE`, `DELETE`
- Tipos de dados no PostgreSQL

### 📌 2. Trabalhando com JOINs
- **INNER JOIN**: Retorna apenas registros com correspondência em ambas as tabelas.
- **LEFT JOIN**: Retorna todos os registros da tabela da esquerda, e correspondentes da tabela da direita (ou NULL).
- **RIGHT JOIN**: Retorna todos os registros da tabela da direita.
- **FULL JOIN**: Retorna registros combinados de ambas as tabelas.

#### Exemplos:
```sql
-- INNER JOIN
SELECT a.nome, b.endereco
FROM clientes a
INNER JOIN pedidos b ON a.id_cliente = b.id_cliente;

-- LEFT JOIN
SELECT a.nome, b.endereco
FROM clientes a
LEFT JOIN pedidos b ON a.id_cliente = b.id_cliente;


-- Subquery simples
SELECT nome
FROM produtos
WHERE id_categoria = (SELECT id FROM categorias WHERE nome = 'Eletrônicos');


-- Subquery correlacionada
SELECT nome
FROM produtos p
WHERE preco > (SELECT AVG(preco) FROM produtos WHERE id_categoria = p.id_categoria);


WITH vendas_totais AS (
  SELECT id_cliente, SUM(valor) AS total
  FROM vendas
  GROUP BY id_cliente
)
SELECT c.nome, v.total
FROM clientes c
JOIN vendas_totais v ON c.id_cliente = v.id_cliente;


SELECT id_categoria, COUNT(*) AS total_produtos
FROM produtos
GROUP BY id_categoria
HAVING COUNT(*) > 10;

SELECT nome, preco,
CASE
  WHEN preco < 50 THEN 'Barato'
  WHEN preco BETWEEN 50 AND 150 THEN 'Médio'
  ELSE 'Caro'
END AS categoria_preco
FROM produtos
ORDER BY preco ASC
LIMIT 10 OFFSET 20;
```

 
🛠️ Tecnologias e Ferramentas Utilizadas
PostgreSQL 15+

pgAdmin 4

DBeaver (opcional)

VSCode com extensão SQL Tools (opcional)

📈 Principais Aprendizados
Modelar e consultar bancos relacionais de forma eficiente

Construir consultas aninhadas para resolver problemas complexos

Otimizar JOINs para grandes volumes de dados

Utilizar CTEs para melhorar a clareza das consultas

Dominar filtros e agregações para relatórios e análises de dados

🚀 Próximos Passos

Praticar consultas em bases de dados reais (ex: Northwind, AdventureWorks)

Avançar para temas como Índices, Views, Stored Procedures e Tuning de Consultas

Estudar conceitos de bancos de dados NoSQL para comparação


