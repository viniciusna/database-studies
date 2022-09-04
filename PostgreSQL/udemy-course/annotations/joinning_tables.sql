-- INNER JOIN junta os dados de duas tabelas tal que o dado da primeira tabela tenha um correspondente na segunda.

-- SELECT tabela1.coluna1, tabela1.coluna2, ..., tabela2.coluna1, tabela2.coluna2, ... FROM tabela1 INNER JOIN tabela2 ON 
-- [condições para juntar os dados e formar um linha];

-- A condição para juntar os dados pode ser por exemplo tabela1.coluna3 = tabela2.coluna3

-- Tem como encurtar a query usando "JOIN" ao invés de "INNER JOIN", por que o postgres toma o "INNER JOIN" como o padrão, além disso dá para dar
-- apelido para as tabelas e assim usá-las na query, é só colocar o apelido depois do nome da tabela no trecho que contenha o "JOIN"

-- SELECT t1.coluna1, t1.coluna2, ..., t2.coluna1, t2.coluna2, ... FROM tabela1 t1 JOIN tabela2 t2 ON 
-- [condições para juntar os dados e formar um linha];

-- ################################################################################################################################################

-- Se duas tabelas tem alguma coluna com mesmo nome, podemos usar a clásula "USING ([nome da coluna])"

-- SELECT tabela1.coluna1, tabela1.coluna2, ..., tabela2.coluna1, tabela2.coluna2, ... FROM tabela1 INNER JOIN tabela2 USING (coluna);

-- ################################################################################################################################################

-- Os outros "JOIN" seguem a mesma síntaxe e lógica do "INNER JOIN", a diferença é quais os matches que serão inclusos na tabela.
-- De modo geral, quando se tem "tabela1 [algum JOIN] tabela2", dizemos que a tabela1 é a "primeira tabela" e a tabela2 é a "segunda tabela"
-- Os outros "JOIN" são

-- LEFT JOIN -> pega todos os dados da primeira tabela e junta com os dados da segunda que tenham algum dado correspondente na primeira
-- RIGHT JOIN -> pega todos os dados da segunda tabela e junta com os dados da primeira que tenha algum dado correspondente na segunda
-- FULL JOIN -> pega todos os dados das tabelas e junta, é como se fosse a união do LEFT JOIN e RIGHT JOIN

-- ################################################################################################################################################

-- Ao adicionar mais clásulas a query com algum JOIN, deve-se escrever os nomes das colunas com a sua respectiva tabela na query, usando o formato
-- "nome_tabela.nome_coluna"

-- ################################################################################################################################################

-- Podemos "unir" queries e mesclar dados de tabelas diferentes em uma única tabela

-- "UNION" faz a união dos dados resultantes de duas queries, basta colocar a clásula "UNION" entre as duas queries, por exemplo

-- SELECT [coluna1], [coluna2], ... FROM [tabela1]
-- UNION
-- SELECT [coluna1], [coluna2], ... FROM [tabela2]

-- Ambas as queries devem estar selecionando a mesma quantidade de colunas, o "merge" será feito usando a ordem da disposição das colunas nas
-- queries e portanto devem ter o mesmo tipo de dado. A clásula "UNION" também irá remover as linhas duplicadas, se não quiser removê-las
-- é só usar "UNION ALL"

-- Seguindo a síntaxe de "UNION", temos outras clásulas que fazem essa união de dados mas com funcionalidades diferentes, ssão eles

-- INTERSECT -> Vai pegar as linhas que estejam em ambas as tabelas
-- EXCEPT -> Vai pegar as linhas que estão na primeira tabela e que não tenha uma igual na segunda tabela
