-- .tables
-- Lista de transsações com o produto "Restagar Ponei"
SELECT *

FROM transacao_produto AS t1

Where t1.IdProduto IN(
    SELECT IdProduto
    FROM produtos
    WHERE DescProduto = 'Resgatar Ponei'
)