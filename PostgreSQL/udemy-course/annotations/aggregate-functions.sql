-- Aggregate function são funções que agrupam dados de uma coluna e retorna uma linha ou valor, como por exemplo, "COUNT", que conta
-- quantos rows tem a tabela, "MAX", "MIN", "SUM" e "AVG" que o nome já indica o que fazem. Elas recebem o nome de uma coluna como argumento
-- e não contam valores NULL

-- ###############################################################################################################################################

-- "GROUP BY" agrupa o resultado de uma aggregate function para os vários valores de um coluna

-- SELECT [coluna1], [coluna2], ..., [aggregate function]([parâmetros]) FROM [tabela] GROUP BY [coluna1], [coluna2], ...

-- Assim, o resultado será uma tabela que exibirá os distintos valores daquela(s) coluna(s) e o resultado da [aggregate function] para cada um desses
-- valores

-- ###############################################################################################################################################

-- "HAVING" serve para filtrar o resultado de uma query com "GROUP BY", com condoções que envolvam aggregrate function também, por exemplo

-- SELECT [coluna1], [coluna2], ..., [aggregate function]([parâmetros]) FROM [tabela] GROUP BY [coluna1], [coluna2], ...
-- HAVING [aggregate function]([parâmetros]) = 'value';

-- ###############################################################################################################################################

-- Ao fazer alguma operação matemática com colunas em um "SELECT", deve-se colocar a operação entre parênteses e dar um apelido para a coluna
-- que terá os resultados da operação, por exemplo

-- SELECT col1, (col2 + col3) AS soma FROM table;