-- parte 1: consultas com join e group by

-- desempenho de vendas por vendedor (so vendas fechadas, do maior pro menor)
SELECT
    v.nome AS vendedor,
    SUM(vd.valor_liquido) AS total_vendido
FROM tb_vendedor v
JOIN tb_venda vd ON vd.id_vendedor = v.id_vendedor
WHERE vd.status = 'FECHADA'
GROUP BY v.nome
ORDER BY total_vendido DESC;


-- historico de compras do cliente (todas as vendas, incluindo canceladas)
SELECT
    c.nome AS cliente,
    vd.dt_venda,
    vd.valor_liquido
FROM tb_cliente c
JOIN tb_venda vd ON vd.id_cliente = c.id_cliente
ORDER BY c.nome, vd.dt_venda;


-- o melhor cliente (maior valor acumulado em vendas fechadas)
SELECT
    c.nome AS cliente,
    SUM(vd.valor_liquido) AS total_comprado
FROM tb_cliente c
JOIN tb_venda vd ON vd.id_cliente = c.id_cliente
WHERE vd.status = 'FECHADA'
GROUP BY c.nome
ORDER BY total_comprado DESC
FETCH FIRST 1 ROW ONLY;
