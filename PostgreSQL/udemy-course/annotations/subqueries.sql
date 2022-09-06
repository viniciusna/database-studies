-- Subqueries são queries dentro de outra query e o resultado dessa query "interna" será usado na query externa.
-- As subqueries devem estar envolvidas em parênteses.
-- Exemplo

-- SELECT * FROM table1 WHERE coluna1 > (SELECT MAX(colunax) FROM table2);

-- ############################################################################################################################

-- Subqueries descorrelacionadas são subqueries que não dependem da query exterior para rodarem, enquanto que
-- queries relacionadas dependem da query exterior, como por exemplo de algum apelido de alguma tabela na query exterior.
-- A query do exemplo acima é um exemplo de subquerie descorrelacionadas, um exemplo de query correlacionada é

-- SELECT t1.coluna1, t1.coluna2 FROM table1 t1 WHERE t1.coluna3 > (SELECT MAX(colunax) FROM table2 WHERE t2.colunax = t1.coluna4);

