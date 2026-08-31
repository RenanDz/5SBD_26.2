# Sistema de Vendas - DDL (Oracle APEX)

Atividade da disciplina de Banco de Dados: implantação do modelo físico do Sistema de Vendas e Análise Comercial no Oracle APEX.

O script `ddl_sistema_vendas.sql` cria as tabelas na ordem certa (primeiro quem não tem FK) e já vem com PK, FK, UNIQUE e CHECK nos campos que o enunciado pedia.

Tabelas:
- tb_cliente
- tb_vendedor
- tb_categoria
- tb_produto
- tb_venda
- tb_venda_item
- tb_auditoria_venda (extra)
- tb_calendario (extra)

O script `seed_sistema_vendas.sql` popula tudo com dados fictícios (25 clientes, 6 vendedores, 20 produtos, 150 vendas com 375 itens e o calendário de 2026 inteiro), pra dar pra montar gráfico e dashboard depois.

## Como rodar

1. Entra no Workspace do APEX
2. SQL Workshop > SQL Commands
3. Cola o `ddl_sistema_vendas.sql` inteiro e clica em **Run Script** (não o "Run" normal, senão dá erro porque tem várias instruções)
4. Confere se apareceu "Table created" pra todas (os erros nos DROP TABLE no início são normais na primeira vez, é só porque as tabelas ainda não existem)
5. Salva com o nome SISTEMA_VENDAS_DDL_V1.0
6. Depois roda o `seed_sistema_vendas.sql` do mesmo jeito (Run Script) pra popular as tabelas
