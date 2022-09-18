CREATE database QA

--------------------------------------------------------

Create table cidade

(
    id_cidade int primary key,
    cidade varchar(30),
   estado varchar(30)
)

Create unique index ix_cidade on cidade (cidade)

--------------------------------------------------------

Create table estado

(
    id_estado int primary key,
    estado varchar(2)
)

Create unique index ix_estado on estado (estado)

---------------------------------------------------------

Create table produto

(
    id_produto int primary key,
    nome_produto varchar(40),
    valor_produto numeric (16,2),
    data_compra datetime
)


Alter table produto add nome_fabricante int

Create unique index ix_nome_produto on produto(nome_produto)

----------------------------------------------------------

Create table fabricante

(
    id_fabricante int primary key,
    nome_fabricante varchar(40)
)

Create unique index ix_nome_fabricante on fabricante (nome_fabricante)