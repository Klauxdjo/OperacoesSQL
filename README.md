# OperacoesSQL
Operações entre conjuntos (tabelas)

Aqui são demonstradas 4 operações entre tabelas:
- UNION ALL
- UNION
- EXCEPT
- INTERSECT

Sejam as tabelas @tbA e @tbB, contendo apenas o campo NUM, os conjuntos _A_ e _B_:

<pre>
A: 1, 2 e 3
B: 1, 3, 4 e 5</pre>

Vejamos os resultados:

 SQL |Operação        | Retorno
-----|----------------|----------------------
 SELECT num FROM @tbA UNION ALL SELECT num FROM @tbB  |*A* UNION ALL *B*   | 1 2 3 1 3 4 5
 SELECT num FROM @tbA UNION SELECT num FROM @tbB  | *A* UNION *B*       | 1 2 3 4 5
 SELECT num FROM @tbA EXCEPT SELECT num FROM @tbB  | *A* EXCEPT *B*      | 2
 SELECT num FROM @tbA INTERSECT SELECT num FROM @tbB  | *A* INTERSECT *B*   | 1 3
