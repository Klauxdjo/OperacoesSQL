# OperacoesSQL
Operações entre conjuntos (tabelas)

Aqui são demonstradas 4 operações entre tabelas:
- UNION ALL
- UNION
- EXCEPT
- INTERSECT

Sejam as tabelas @tbA e @tbB respectivamente os conjuntos _A_ e _B_:

<pre>
A: 1, 2 e 3
B: 1, 3, 4 e 5
</pre>

Vejamos os resultados:
Operação            | Retorno
--------------------+----------------
*A* UNION ALL *B*   | 1 2 3 1 3 4 5
*A* UNION *B*       | 1 2 3 4 5
*A* EXCEPT *B*      | 2
*A* INTERSECT *B*   | 1 3

