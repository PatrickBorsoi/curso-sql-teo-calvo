-- Intervalos
-- De 0 a 500 -> Bronze
-- De 501 a 1000 -> Prata
-- De 1001 a 5000 -> Ouro
-- De 5001 a 10000 -> Diamante
-- +10001 -> Platina

SELECT  IdCliente,
        qtdepontos,
        CASE 
            WHEN qtdepontos <= 500 THEN 'Bronze'
            WHEN qtdepontos > 500 AND qtdepontos <= 1000 THEN 'Prata'
            WHEN qtdepontos > 1000 AND qtdepontos <= 5000 THEN 'Ouro'
            WHEN qtdepontos > 5000 AND qtdepontos <= 10000 THEN 'Diamente'
            ELSE 'Platina'
        END AS NomeGrupo,
        
        CASE
            WHEN qtdepontos <= 1000 THEN 1
            ELSE 0
        END AS flBronze,

        CASE
             WHEN qtdepontos > 1000 THEN 1
             ELSE 0
        END AS flPrata


FROM clientes
ORDER BY QtdePontos DESC



