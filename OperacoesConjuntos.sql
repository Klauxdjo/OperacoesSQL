print 'Operações com conjuntos'
print '	- conjunto A: 1, 2, 3'
print '	- conjunto B: 1, 3, 4, 5'
print ''
set nocount on

DECLARE @tbA TABLE (num TINYINT)
DECLARE @tbB TABLE (num TINYINT)

INSERT INTO @tbA (num)
VALUES (1), (2), (3)

INSERT INTO @tbB (num)
VALUES (1), (3), (4), (5)


print '"A" UNION ALL "B" (retorna todas as linhas dos dois conjuntos, com repetições)'
SELECT num FROM @tbA AS A 
UNION ALL
SELECT num FROM @tbB AS B 

print '"A" UNION "B" (retorna todas as linhas dos dois conjuntos, sem repetições)'
SELECT num FROM @tbA AS A 
UNION 
SELECT num FROM @tbB AS B 

print '"A" EXCEPT "B" (retorna todas as linhas que existem exclusivamente em "A")'
SELECT num FROM @tbA AS A 
EXCEPT
SELECT num FROM @tbB AS B 

print '"A" INTERSECT "B" (retorna apenas as linhas que existem simultaneamente em "A" e "B")'
SELECT num FROM @tbA AS A 
INTERSECT
SELECT num FROM @tbB AS B 

set nocount off
