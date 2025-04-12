create database loja;
use loja;

create table clientes
(
codigoCliente int primary key,
nome varchar(50),
logradouro varchar(50),
numero varchar(8),
bairro varchar (50),
cep char(8),
cidade varchar(20),
UF char(2),
CNPJ char(14),
IE varchar(20)
);

create table produtos
(
codigoProduto int primary key,
nome varchar(50),
precoUnitario decimal(10,4),
quantidadeEstoque int
);

create table vendedores
(
codigoVendedor int primary key,
nome varchar(50),
salarioFixo decimal(10,4)
);

create table pedidos
(
codigoPedido int primary key,
dataPedido timestamp,
dataEntrega datetime,
codigoVendedor int,
codigoCliente int,
constraint fk1 foreign key(codigoVendedor) references vendedores (codigoVendedor),
constraint fk2 foreign key (codigoCliente) references clientes(codigoCliente)
);