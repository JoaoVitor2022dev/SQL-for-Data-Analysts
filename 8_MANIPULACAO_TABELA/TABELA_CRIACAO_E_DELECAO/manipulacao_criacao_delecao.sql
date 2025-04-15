-- Criação de tabela a partir de uma query
-- Criação de tabela a partir do zero
-- Deleção de tabelas

-- EXEMPLOS ########################################################################

-- (Exemplo 1) Criação de tabela a partir de uma query
-- Crie uma tabela chamada customers_age com o id e a idade dos clientes. 
-- Chame-a de temp_tables.customers_age

SELECT 
      customer_id,
	  datediff('years', birth_date, current_date) idade_cliente
	  INTO temp_tables.customers_age 
FROM sales.customers; 


SELECT * FROM temp_tables.customers_age; 

-- (Exemplo 2) Criação de tabela a partir do zero
-- Crie uma tabela com a tradução dos status profissionais dos clientes. 
-- Chame-a de temp_tables.profissoes


SELECT DISTINCT professional_status
FROM sales.customers; 


-- CRIANDO A TABELA DE DADOS 
CREATE TABLE temp_tables.profissoes (
    professional_status varchar,
	status_profissional varchar
)

INSERT INTO temp_tables.profissoes;  (
    professional_status, status_profissional )
	
VALUES 
('student', 'freelancer'), 
('retired', 'aposentado(a)'),
('clt', 'clt'),
('self_employed', 'autõnomo(a)'),
('other', 'outro'),
('businessman', 'Empresário'),
('civil_servant', 'funcioário publico(a)'), 
('student', 'estudente')


SELECT * FROM temp_tables.profissoes; 


-- (Exemplo 3) Deleção de tabelas
-- Delete a tabela temp_tables.profissoes

DROP TABLE temp_tables.profissoes; 















