/*-- Script SQL para modelo E-commerce*/

/*-- 1. Cria database*/
create database IF NOT EXISTS ECommerce;
	use ECommerce;
    
/*-- 2. Cria as tabelas
-- 2. a) Tabela Participante*/
create table IF NOT EXISTS Participante (
	idParticipante int auto_increment primary key not null,
    PF_PJ enum ('PF', 'PJ') not null,
    paisParticipante varchar (45), 
    cidadeParticipante varchar (45),
    cepParticipante char(20),
    logradouroParticipante varchar(100),
    numeroEnderecoParticipante int,
    complementoEnderecoParticipante varchar(45),
    telefone1Participante bigint not null,
    telefone2Participante bigint, 
    emailParticipante varchar(45),
    /*definindo os papéis do participante*/
    compra binary default(1),
    vende binary default(0),
    fornece binary default(0),
    estoca binary default(0),
    entrega binary default(0)
    );
    
    alter table Participante auto_increment = 1;
    
/*-- 2. b) Tabela PF (complementa a tabela Participante quando é PF)*/
 create table IF NOT EXISTS PF (
	idParticipante int primary key not null,
    firstName varchar (30) not null,
    lastName varchar(70) not null,
    cpf varchar(45) not null,
    constraint unique (cpf)
    );
        
/*-- 2. c) Tabela PJ (complementa a tabela Participante quando é PJ)*/
create table IF NOT EXISTS PJ (
	idParticipante int primary key not null,
	razaoSocial varchar (100) not null,
	cnpj varchar(45) not null,
	nomeContato varchar(45),
	constraint unique (cnpj)
    );
	
/*-- 2. d) Tabela Produto (cadastra todos os produtos disponíveis para a venda)*/
create table IF NOT EXISTS Produto (
	idProduto int auto_increment primary key not null,
	nomeProduto varchar(45) not null,
	descricaoProduto varchar(200),
	categoriaProduto varchar(45),
	valorProduto decimal(18,2) not null
    );
	
        alter table Produto auto_increment = 1;
/*-- 2. e) Tabela Meios de Pagamento*/
create table IF NOT EXISTS MeiosPagamento (
	idMeiosPagamento int auto_increment primary key not null,
	idParticipante int not null,
	tipoPagamento varchar (10) not null, 
	numeroCartao int unique,
	validadeCartao date
	);
       
	alter table MeiosPagamento auto_increment = 1;
    
/*-- 2. f) Tabela Meios de Recebimento*/
create table IF NOT EXISTS MeiosRecebimento (
	idMeiosRecebimento int auto_increment primary key not null,
	idParticipante int not null,
	tipoRecebimento varchar (15) not null,
	enderecoPix varchar (45),
	banco int,
	agencia int,
	conta int
    );
    
	alter table MeiosRecebimento auto_increment = 1;
	
/*-- 2. g) Tabela Vende Produto - relaciona os produtos aos seus vendedores diretos*/
create table IF NOT EXISTS VendeProduto (
	idProduto int not null,
	idVendedor int not null, /*id do participante Vendedor = idParticipante em Participante*/
	quantidadeProduto int not null /*quant disponível do produto por esse vendedor*/
   );
			
/*-- 2. h) Tabela  Fornece Produto - relaciona produtos aos fornecedores B2B (estoque)*/
create table IF NOT EXISTS ForneceProduto (
	idFornecedor int not null,/* id do participante Fornecedor = idParticipante em Participante*/
	idProduto int not null,
	quantidadeProduto int not null /*quant comprada do produto desse fornecedor*/
    );
        
/*-- 2. i)Tabela Estoque - lista quantidade de cada produto em estoque em cada Central Logística*/
create table IF NOT EXISTS Estoque(
	idProduto int not null,
	idCentralLogistica int not null, /*=id Participante Estoque*/
	quantidadeEstoque int not null
	);
	
/*-- 2. j) Tabela Locais de Entrega*/
create table IF NOT EXISTS LocalEntrega (
	idLocalEntrega int auto_increment not null primary key,
	idCliente int not null, 
	apelidoLocal varchar (45),
	logradouroEntrega varchar (45),
	numeroEntrega varchar (6),
	complementoEntrega varchar (45), 
	cepEntrega char (8) not null,
	cidadeEntrega varchar (45),
	UF_Entrega char (2),
	paisEntrega varchar (45),
	contatoLocal varchar (30),
	telefoneLocal bigint
);

alter table LocalEntrega auto_increment = 1;
    
/*-- 2. k) Tabela Faz Pedido*/
create table IF NOT EXISTS FazPedido (
	idPedido int not null auto_increment primary key,
	idCliente int not null /*=id Participante Comprador*/,
	dataPedido date,
	statusPedido enum ('Processando', 'Separacao','Entrega', 'Finalizado'),
	descricaoPedido varchar (200) /*composto dos produtos pedidos*/,
	idLocalEntrega int not null,
	valorFrete decimal (6,2),
	idMeioPagamento int
	);
    
	alter table FazPedido auto_increment = 1;
        
/*-- 2. l) Tabela CompoePedido*/
create table IF NOT EXISTS CompoePedido (
	idPedido int not null,
	idProduto int not null, 
	quantidade int not null,
	idVendedor int not null
	); 
 
/*-- 2. m) Tabela Entrega*/
create table IF NOT EXISTS Entrega (
	idEntrega int primary key auto_increment not null,
    idPedido int not null,
	statusEntrega varchar (15),
	dataEntrega date,
	codigoRastreioEntrega varchar (20),
	idEntregador int
    );
    
	alter table Entrega auto_increment = 1;