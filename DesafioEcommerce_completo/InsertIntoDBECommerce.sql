use ecommerce;

insert into participante (PF_PJ, paisParticipante, cidadeParticipante, cepParticipante, logradouroParticipante, numeroEnderecoParticipante, complementoEnderecoParticipante, telefone1Participante, emailParticipante, compra, vende, fornece, estoca, entrega)
values  ('PF' , 'Brasil'        , 'São Paulo'       , '05563001'     , 'Rua Amelia'          , 444                       , 'bloco2'                       , '11987424848'        , 'bonitona@zmail.com', 1     , 1    , 0      ,  0    , 0),
	('PJ', 'Brasil', 'São Paulo', '05634334', 'Avenina Marapuã', 455, 'apto12', 11888888888, 'presidencia@barilla.net.br', 1, 1, 1, 0, 0),
('PF', 'Brasil', 'Rio de Janeiro', '043225002', 'Encruzilhada', 245, 'Baladinha', 21987374545, 'mariaameliaeamae@cocobambu.com', 1, 1, 0, 0, 0),
('PF', 'Brasil', 'Rio de Janeiro', '043225001', 'Linha Amarela', 222, 'Beco do Zuê', 21987774545, 'sementeira@cocobambu.com', 1, 1, 0, 0, 0),
('PJ', 'Brasil', 'Rio de Janeiro', '043225001', 'Linha Amarela', 222, 'Beco do Zuê', 21997774545, 'goodyar@cocobambu.com', 1, 1, 0, 0, 0),
('PJ', 'Brasil', 'Rio de Janeiro', '043225001', 'Centro Empresarial', 222, 'Aeroporto', 2193333333, 'logystrend@logistchs.com', 1, 1, 0, 1, 1),
('PF', 'Brasil', 'Bahia', '0222222', 'Pelourinho', 333, 'casa 2', 4978885454, 'bahiacultural@cocobambu.com', 1, 1, 0, 0, 0);

insert into pf (idParticipante, firstName, lastName, cpf)
values (1 , 'Jose', 'Silva', '28455772866'),
(3, 'Maria', 'Amelia', '32477769855'),
(4, 'Xico', 'Floresta', '27745897633'),
(7, 'Xico', 'Cience', '78564598733');

insert into pj (idParticipante, razaoSocial, cnpj, nomeContato)
values (2, 'Barilla Comercio de Alimentos SA', '45888796000122', 'Raimundo Borges'),
(5, 'Reference Comercio de Pneus Ltda', '45875569000211', 'Lavínia Vlask'),
(6, 'Logystrend Frotas Especiais SA', '24666888000177', 'Francisco Chateubriand');

insert into produto (nomeProduto, descricaoProduto, categoriaProduto, valorProduto)
values ('Pneu de Caminhão', 'Pneu 300 para caminhões', 'Automotivos', 600.00),
('Macarrão Barilla 500g', 'Macarrão grano duro', 'Alimentos', 14.00),
('Pneu Automotivo Simples', 'Pneu 400 para veículos leves', 'Automotivos', 450.00),
('Vestido Primavera Infantil', 'Vestido de viscose com estampa floral tam 4', 'Vestuario Infantil', 70.00);

insert into localentrega (idCliente, apelidoLocal, logradouroEntrega, numeroEntrega, complementoEntrega, cepEntrega, cidadeEntrega, UF_Entrega, paisEntrega, contatoLocal, telefoneLocal)
values
(1, 'casa', 		'Rua Amelia', 		444, 	'bloco2', 				'05563001', 'São Paulo', 		'SP', 'Brasil', 'Maria', 87424848),
(2, 'escritorio', 	'Rua do Rocio', 	45, 	'7o andar', 			'04321000', 'Sao Paulo', 		'SP', 'Brasil', 'Neide', 45236588),
(3,  'festa', 		'Rua Amendoeiras', 	27, 	'11o andar', 			'87521322', 'Rio de Janeiro', 	'RJ', 'Brasil', 'João', 22222222), 
(4, 'apartamento', 	'Av. Litoranea', 	780, 	'apto 27', 				'87562000', 'Rio de Janeiro', 	'RJ', 'Brasil', 'Xico', 75441232), 
(5, 'loja1', 		'Rua Central', 		2, 		'Esquina', 				'42222111', 'Rio de Janeiro', 	'RJ', 'Brasil', 'Lavinia', 44444444), 
(6, 'matriz', 		'Rua do voo', 		89, 	'frente Stos Dumont', 	'74852666', 'Rio de Janeiro', 	'RJ', 'Brasil', 'Francisco', 78965421), 
(7, 'bairrinho', 	'Rua da Vereda', 	24, 	'canto do bosque', 		'06000000', 'Salvador', 		'BA', 'Brasil', 'Xico', 78945684); 

insert into meiospagamento (idParticipante, tipoPagamento, numeroCartao, validadeCartao)
values 
(1, 'cartao', '123612362', 24/06/2026),
(2, 'cartao', '12455587', 12/07/2030), 
(3, 'cartao', '12555587', 12/07/2030), 
(4, 'cartao', '12655851', 12/07/2030), 
(5, 'cartao', '87588758', 30/08/2027), 
(6, 'cartao', '987545621', 30/08/2025),
(7, 'cartao', '127555851', 12/07/2030);

insert into fazpedido (idCliente, dataPedido, statusPedido, descricaoPedido, idLocalEntrega, valorFrete, idMeioPagamento)
values (1, 04/07/2022, 'Separacao', 'codprod1 quant8 vlr 600.00 tot 4800.00 codprod3 quant5 vlr 450.00 tot 2250.00 tottot 7500.00', 1, 40, 1),
(2, 05/07/2022, 'Processando', 'codprod2 quant4 vlr 14.00 tot 56.00 tottot 56.00', 2, 5.00, 2),
(3, 04/08/2022, 'Entrega', 'codprod3 quant5 vlr 450.00 tot 2250.00 tottot 2250.00', 3, 0, 3),
(4, 04/08/2022, 'Finalizado', 'codprod4 quanr3 vlr 70.00 tot 210.00 tottot 210.00', 4, 0, 4),
(5, 15/05/2021, 'Finalizado', 'codprod2 quant2 vlr 14.00 tot 28.00 codprod3 quant5 vlr 450.00 tot 2250.00 tottot 2278.00', 5, 0, 5),
(6, 15/05/2022, 'Finalizado', 'codprod2 quant20 vlr 14.00 tot 280.00 tottot 280.00', 6, 15.00, 6),
(7,  07/09/2022, 'Finalizado', 'codprod1 quant12 vlr 600.00 tot 7200.00 tottot 7200.00', 7, 0, 7);

insert into compoepedido (idPedido, idProduto, quantidade, idVendedor)
values (1, 1, 8, 5),
(1, 3, 5, 5), 
(2, 2, 4, 2), 
(3, 3, 5, 5), 
(4, 4, 3, 6), 
(5, 2, 2, 2), 
(5, 3, 5, 5), 
(6, 2, 20, 2),
(7, 1, 12, 5);

insert into entrega (idPedido, statusEntrega, dataEntrega, codigoRastreioEntrega, idEntregador)
values (1, 'Processando', 07/07/22, 'efg3344', 6),
(2, 'Finalizada', 06/08/22, 'efg3345', 6), 
(3, 'Finalizada', 06/08/22, 'efg3346', 6), 
(4, 'Finalizada', 06/08/22, 'efg3347', 6), 
(5, 'Finalizada', 17/05/21, 'efg3348', 6), 
(6, 'Finalizada', 17/05/22, 'efg3349', 2), 
(7, 'Cancelada', 09/09/22, 'efg3350', 6);

