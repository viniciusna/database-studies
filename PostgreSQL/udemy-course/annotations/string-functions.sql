-- No postgres tem funções para string, basta chamar a função e passar a string como parâmetro, as principais funções são:

-- UPPER -> Deixa todos os caracteres em maiúsculo

-- LOWER -> Deixa todos os caracteres em minúsculo

-- INITCAP -> Faz a primeira letra de cada palavra ser maiúscula e o resto minúsculo,
-- Ex: INITCAP('eXamPLe STrinG') = 'Example String'

-- LEFT(<string>, <int>) -> Além de uma string, essa função recebe um inteiro como segundo parâmetro que define quantos caracteres serão
-- retornados da função contando do primeiro caractere da string, se esse número for negativo, ele começa a contar do final da string e então
-- retorna o restante, Ex: LEFT('123456', 3) = '123', LEFT('123456', -5) = '1'

-- RIGHT(<string>, <int>) -> Análogo ao LEFT mas o inteiro define a quantidade de caracteres retornados contando do final da string e um
-- inteiro negativo começa a contar do início da string

-- REVERSE -> Inverte a string

-- SUBSTRING(<string>, <from>, <count>) -> seleciona uma substring a partir do caractere na posição <from> e seleciona <count> caracteres
-- a partir daí. Ex: SUBSTRING('long string', 2, 6) = 'ong st'

-- REPLACE(<string>, <old string>, <new string>) -> Substitui todas as substrings <old string> contidas em <string> e substitui por <new string>.
-- Ex: REPLACE('cats and dogs', 'dogs', 'cats') = 'cats and cats'4

-- SPLIT_PART(<string>, <delimiter>, <part>) -> Divide a string <string> usando o delimitador <delimiter> que é um caractere ou substring que
-- vai determinar onde a string vai ser dividida, <part> é um inteiro que define qual parte dessa string dividida será retornada.
-- Ex: SELECT SPLIT_PART('abc,de,fg,h', ',', 2) = 'de', SELECT SPLIT_PART('abca,dea,fgah', 'a,', 3) = fgah

-- #########################################################################################################################
