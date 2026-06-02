SELECT idCliente,
        -- qtdePontos,
        -- qtdePontos + 10 AS QtdePontosPlus10,
        -- qtdePontos * 2 AS QtdePontosDouble
        DtCriacao,
        date(substr(DtCriacao, 1, 19)) AS Date
FROM clientes