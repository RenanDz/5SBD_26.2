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

## Como rodar

1. Entra no Workspace do APEX
2. SQL Workshop > SQL Commands
3. Cola o script inteiro e executa
4. Confere se apareceu "Table created" pra todas
5. Salva com o nome SISTEMA_VENDAS_DDL_V1.0

A parte dos `DROP TABLE` no começo é só pra quando precisar recriar tudo do zero, não precisa rodar toda vez.
