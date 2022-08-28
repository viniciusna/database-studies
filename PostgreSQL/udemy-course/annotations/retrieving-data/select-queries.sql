-- Para pegar dados da tabela usamos o "select"

-- SELECT [coluna1], [coluna2], ... FROM [tabela];

-- Para selecionar todas as colunas usa '*' no lugar dos nomes das colunas

--################################################################################################################################################

-- O "WHERE" é usado para definir condições no geral
-- Ex:

-- SELECT [coluna1], [coluna2], ... FROM [tabela] WHERE name = "batata";

--################################################################################################################################################

-- "IN". Se quisermos selecionar dados de uma tabela cuja uma coluna tome um valor igual a um certo conjunto de valores, poderiamos usar a condicional
-- "or", por exemplo, name = 'batata' OR name = 'potato', mas tem uma clásula que já faz isso, a clásula "IN", esse exemplo fica
-- name IN ('batata', 'potato')
-- Assim, de froma geral

-- SELECT [coluna1], [coluna2], ... FROM [tabela] WHERE [nome da coluna] IN (valor1, valor2, ...);

-- Essa query vai selecionar os dados cujo o valor da coluna [nome da coluna] será valor1 ou valor2 e etc
-- Para negar essa condição basta usar "NOT IN" que será selecionado os dados em que a coluna não toma estes valores.

--################################################################################################################################################

-- a clásula "LIKE" serve para definir um padrão para um valor de uma coluna. Suponha que uma coluna seja do tipo string, usamos "%" para
-- significar quaisquer caracteres em qualquer quantidade e "_" significa qualquer caractere e apenas um, dessa forma podemos selecionar dados
-- em que uma coluna tenha algum padrão.

-- SELECT [coluna1], [coluna2], ... FROM [tabela] WHERE [nome da coluna] LIKE '[padrão]';

-- Exemplos de padrão:
-- '%abc%' -> pega todos os dados em que o valor da coluna inclua 'abc'
-- "_abc" -> o valor termine com 'abc' e tenha apenas um caractere no início

--################################################################################################################################################

-- O "BETWEEN" serve para selecionar valores dentro de uma intervalo

-- SELECT [coluna1], [coluna2], ... FROM [tabela] WHERE [nome da coluna] BETWEEN [valor inferior] AND [valor superior];

-- Serve para datas, números e alfabeto. Essa clásula inclui os valores limites, ou seja, irá incluir os dados cuja a coluna tenha o valor igual a
-- [valor inferior] e o valor [valor superior]

--################################################################################################################################################

-- "ORDER BY" é para ordenar a listagem dos dados seguindo a ordem crescente dos valores de uma coluna (seja ordem alfabética, numérica ou datas)

-- SELECT [coluna1], [coluna2], ... FROM [tabela] ORDER BY [coluna que estará em ordem];

-- Para a ordem ser decrescente basta colocar "DESC" no final dessa clásula, "ORDER BY [coluna que estará em ordem] DESC"
-- As colunas com valor "NULL" são considerados os últimos na ordenação ascendente e portanto os primeiros na descedente.
-- A ordenação deve ser feita ao final da query, depois das condições passadas no "WHERE"

--################################################################################################################################################

-- As clásulas "LIMIT" e "OFFSET" servem para limitar a quantidade linhas retornadas por uma query

-- SELECT [coluna1], [coluna2], ... FROM [tabela] LIMIT [qtde de linhas] OFFSET [qtde de pulos];

-- Onde [qtde de linhas] determina quantas linhas serão retornadas e [qtde de pulos] determina quantas linhas serão "puladas" para então pegar
-- as próximas [qtde de linhas] linhas da tabela. Isso seguindo a ordenação da tabela, que pode ser controlada por "ORDER BY"

--################################################################################################################################################

-- A clásula "FETCH" faz o mesmo que "LIMIT", porém tem uma diferença na síntaxe

-- SELECT [coluna1], [coluna2], ... FROM [tabela] OFFSET [qtde de pulos] ROWS FETCH FIRST [qtde de linhas] ROW ONLY;

--################################################################################################################################################

-- Usando "DISTINCT" selecionamos apenas linhas com valores distintos entre si

-- SELECT DISTINCT [coluna1], [coluna2], ... FROM [tabela];

-- Assim a query só retorna linhas em que a combinação dos valores das colunas [coluna1], [coluna2], ... seja distintas das outras linhas

--################################################################################################################################################

-- A clásula "IS NULL" e "IS NOT NULL" servem para filtrar os dados cuja a coluna tenha valor "NULL" ou não tenha valor "NULL" respectivamente.

-- SELECT [coluna1], [coluna2], ... FROM [tabela] WHERE [coluna que deve ser "NULL"] IS NULL;

-- É análogo para "IS NOT NULL"

--################################################################################################################################################

-- Para dar um apelido para um coluna basta usar "AS" ao chamar a coluna

-- SELECT [coluna1] AS [apelido da coluna1], [coluna2], ... FROM [tabela];
 
-- O nome da coluna é trocado apenas depois de rodar a clásula "WHERE", portanto, na clásula "WHERE", deve-se usar os nomes originais das colunas,
-- após a clásula "WHERE", pode-se usar o apelido ou o nome original da coluna

--################################################################################################################################################

-- Para concatenar strings faz

-- [string1] || [string2]

-- E para concatenar colunas usa-se a função "CONCAT"

-- SELECT CONCAT([coluna1], [coluna2], ...) AS [nome da coluna] FROM [tabela];

-- Para usar um separador entre os valores de todas as colunas, usa-se a função "CONCAT_WS", seu primeiro argumento é o separador e o resto são as
-- colunas que serão concatenadas, "CONCAT_WS([separador], [coluna1], [coluna2], ...)"
