SELECT tp.IdProduto,
tp.idTransacaoProduto,
p.DescProduto,
p.DescCategoriaProduto

FROM transacao_produto AS tp
INNER JOIN produtos AS p
ON tp.IdProduto = p.IdProduto


