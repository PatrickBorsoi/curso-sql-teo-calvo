--COUNT(*) ou COUNT(1) → Contam todas as linhas (não importa NULLs)
--COUNT(coluna) → Conta apenas linhas com valor não-nulo

SELECT COUNT(*),
        COUNT(1)

FROM clientes