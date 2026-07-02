SELECT 
    avg(QtdePontos),
    min(QtdePontos) AS minCarteira,
    max(QtdePontos) AS maxCarteira,
    sum(FlTwitch),
    sum(FlEmail)

FROM clientes