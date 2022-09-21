/*persistindo dados no database oficina. Input of data in database oficina*/
use oficina;

insert into clients (firstName, lastName, CPF, phone, street, num, complement, CEP, city, state, country, pronoum)
values 
('Alessandra', 'Bogota', 44444444444, 1187328547, 'Rua do Rócio', 78, 'ap45', '02667', 'São Paulo', 'SP', 'BRA', 'she'),
('Marina', 'Silva', 44444444445, 2187328548, 'Avenida Ipanema', 100, 'ap110a', '02668', 'Rio de Janeiro', 'RJ', 'BRA', 	'she'),
('Rafael', 'Dapeste', 44444444446, 2187328549, 'Avenida Oceânica', 110, 'casa2', '02669', 'Rio de Janeiro', 'RJ', 'BRA', 'he'),
('Pedro', 'Santos', 44444444447, 1387328550, 'Avenida Ana Costa', 50, 'ap321', '02670', 'Santos', 'SP', 'BRA', 'he'),
('Alex', 'Fradinho', 44444444448, 1387328551, 'Ponta da Praia', 30, 'ap141', '02671', 'Santos', 'SP', 'BRA', 'he'),
('Jandira', 'Bergamota', 44444444449, 5187328552, 'Pelourinho', 22, 'c', '02672', 'Salvador', 'BA', 'BRA', 'she'),
('Rodrigo', 'Naval', 44444444450, 5187328553, 'Rua do Mercado Modelo', 12, 'B', '02673', 'Salvador', 'BA', 'BRA', 'he'),
('Vitória', 'Régia', 44444444451, 1187328554, 'Rua Roberto Valentino', 58, 'sobreloja', '02674', 'São Paulo', 'SP', 'BRA', 'she'),
('Flávio', 'Belém', 44444444452, 1187328555, 'Rua Aires da Cunha', 12, 'ap6', '02675', 'São Paulo', 'SP', 'BRA', 'he'),
('Honório', 'Souza', 44444444453, 1187328556, 'Rua David Ben Gurion', 7, 'ap475', '87502', 'São Paulo', 'SP', 'BRA', 'he'),
('Heitor', 'Maranhão', 44444444454, 1187328557, 'Av. Nove de Julho', 9, 'ap45', '87677', 'São Paulo', 'SP', 'BRA', 'he');

insert into mechanic (mFirstName, mLastName, CPF, mPhone, mStreet, mNum, mComplement, mCEP, mCity, mState, mCountry, mPronoum, mSpecialty)
values
('José', 'Bragança', 5555555555, 1198754231, 'Rua Casal', 5, 'casa2', '33333', 'São Paulo', 'SP', 'BRA', 'he', 'Geral'), 
('João', 'Bernardo', 6555555555, 1199999999, 'Rua Pardal', 4, 'ap2', '33333', 'São Paulo', 'SP', 'BRA', 'he', 'Assistente'),
('Manuel', 'Silva', 7555555555, 1188754231, 'Rua da Graça', 6, 'sem', '33333', 'São Paulo', 'SP', 'BRA', 'he', 'Eletric'),
('Miguel', 'Souza', 8555555555, 119876666, 'Rua Flor', 51, 'ap90', '33333', 'São Paulo', 'SP', 'BRA', 'he', 'Geral'),
('Mario', 'Mirtillo', 9555555555, 1198777777, 'Rua Merengue', 89, 'ap10b', '33333', 'São Paulo', 'SP', 'BRA', 'he', 'Assistente'),
('Jurandir', 'Martelo', 5655555555, 11989999, 'Rua Fátima', 27, 'ap78', '33333', 'São Paulo', 'SP', 'BRA', 'he', 'Eletric'),
('Nigelson', 'Açai', 5755555555, 1198788888, 'Rua Passarinho', 15, 'casa3', '33333', 'São Paulo', 'SP', 'BRA', 'he', 'Geral'),
('Vandercleiton', 'Madeira', 5855555555, 119856565, 'Rua Mesa', 23, 'casa1', '33333', 'São Paulo', 'SP', 'BRA', 'he', 'Geral'),
('Junior', 'Peregrino', 5955555555, 1199747474, 'Rua Bela', 7, 'encruzilhada', '33333', 'São Paulo', 'SP', 'BRA', 'he', 'Assistente'),
('Paulo', 'Bolotas', 5565555555, 1199875785, 'Rua Poeta', 14, 'frente trem', '33333', 'São Paulo', 'SP', 'BRA', 'he', 'Eletric'),
('Patricio', 'Fazgraça', 5575555555, 1199333333, 'Rua Maranhão', 9, 'casa2', '33333', 'São Paulo', 'SP', 'BRA', 'he', 'Geral');

insert into vehicle (idClient, brand, model, model_year, plate, chassi, lastKm, kmDate, Car_change, fuelType)
values 
(1, 'VW', 'Gol 1.0', 2016, 'EAD22222', 'Art4568cnjp7851t22', 115000, 20/09/2022, 'man', 'flex gas/et'),
(2, 'Hyundai', 'Tucson 2.0', 2020, 'ABC0321', 'sf45gsdrfe745e7r577', 50000, 20/09/2022, 'man', 'diesel'),
(3, 'VW', 'Polo 1.6', 2013, 'RTU9908', 'hrtty4275846ewef', 110000, 20/09/2022, 'man', 'elet'),
(4, 'VW', 'Gol 1.4', 2022, 'AAA9088', 'rthloisw547646sadasd', 30000, 20/09/2022, 'man', 'flex gas/et'),
(5, 'Fiat', 'Uno 1.0', 2020, 'BBB0976', '546dwqewq468wqd874', 25000, 20/09/2022, 'man', 'flex gas/et'),
(6, 'Fiat', 'Argo 2.1', 2015, 'DFG2547', 'jhrtasda2464wqew54', 98000, 20/09/2022, 'man', 'flex gas/et'),
(7, 'Honda', 'City 1.6', 2016, 'EEF2090', 'ljknf5416843211r6464d464', 120000, 20/09/2022, 'man', 'flex gas elet'),
(8, 'Honda', 'Accord 2.0', 2018, 'ASD6988', '464654162wsdwq544584s', 60000, 20/09/2022, 'man', 'diesel'),
(9, 'Renault', 'Logan 1.4', 2021, 'DDD7557', '54168wedqwd468484658w', 60000, 20/09/2022, 'man', 'flex gas/et'),
(10, 'Renault', 'Sandero 1.6', 2020, 'GGA4497', '38368wdqftrh46465wsd', 70000, 20/09/2022, 'man', 'flex gas/et'),
(11, 'Ford', 'Mustang 2.3', 2012, 'FGH5431', '186715wdwgre484wqdqwd468', 150000, 20/09/2022, 'man', 'elet'),
(11, 'Ford', 'k 1.0', 2008, 'DLM5321', '36945dwqwr4686fewf456', 180000, 20/09/2022, 'man', 'flex gas elet');

insert into part (partName, partDescription, partValue)
values
('Pneu', 'Pneu carro simples 500', 450.00),
('Roda', 'Roda cromada', 150.00),
('Kit Homocinética', 'ponteiras lado roda e câmbio', 1400.00),
('Kit Cambio', 'Inclui coifa + pistao cambio', 2000.00),
('Oleo Cambio', '1 litro', 80.00),
('Oleo Motor', '1 litro', 40.00), 
('Correia Dentada', 'Marca Nobre', 50.00),
('Kit Ar', 'Filtro de ar+cabine', 100.00),
('Lâmpada de placa', 'Varilux', 15.00), 
('Kit Eletrico', 'portas e janelas', 280.00),
('Calota', 'simples', 25.00), 
('Parafuso da rebimboca', 'mágico', 1000.00);

insert into service(serviceName, serviceDescription, serviceValue, specialty)
values
('Troca Pneu', 'troca pneu', 15.00, 'assistente'),
('Balanceamento Pneus', 'balanceia 4 pneus', 200.00, 'assistente'),
('Alinhamento Pneus', 'alinha 4 pneus', 50.00, 'mecanico'), 
('Troca de Óleo', 'troca total oleo', 45.00, 'assistente'), 
('Reparos Câmbio', 'troca e regula câmbio', 300.00, 'mecanico'),
('Revisão', 'checa itens, troca oleos', 180.00, 'mecanico'),
('Troca rebimboca', 'troca rebimboca', 1000.00, 'eletrico');

insert into team (teamMembers)
values
('Jose , Joao, Manuel, Miguel'),
('Mario, Jurandir, Nigelson'),
('Vandercleiton, Junior, Paulo'),
('Patricio');

insert into team_has_mechanic(team_idTeam, mechanic_idMechanic)
values
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 6),
(2, 7), 
(3, 8), 
(3, 9),
(3, 10),
(4, 11);


insert into service_order(idVehicle, idTeam, SO_Status, SO_Description, SO_Value, order_date, approval_date, deliveryForecast, deliveryDate, SO_conclusion)
values
(1, 1, 'Avaliacao', 'revisao geral com troca de oleo e kit eletrico', 580.00, '2022-04-15', '2022-04-16', '2022-04-17', '2022-04-18', '2022-04-19'),
(2, 2, 'Orcamento', 'alinhamento e balanceamento', 250.00, '2002-05-22', '2022-05-13', '2022-05-17', '2022-05-18', '2022-05-19'),
(3, 3, 'AprovValor', 'troca lampada placa e kit eletrico', 295.00, '2022-06-23', '2022-06-24', '2022-06-24', '2022-06-24', '2022-06-25'),
(4, 4, 'CompraPecas', 'troca 4 pneus + alinhamento e balanceamento', 2110.00, '2022-07-10', '2022-07-12', '2022-07-13', '2022-07-13', '2022-07-13'),
(5, 1, 'Execucao', 'troca oleo motor 4 litros', 165.00, '2022-08-11', '2022-08-15', '2022-08-15', '2022-08-17', '2022-08-17'),
(6, 2, 'Entregue', 'troca rebimboca', 2000.00, '2022-09-21', '2022-09-21', '2022-09-21', '2022-09-21', '2022-09-21');

insert into order_has_service(idServiceOrder, idService, serviceQuantity)
values
(1, 6, 1),
(1, 4, 1), 
(2, 3, 1), 
(2, 2, 1), 
(4,1,4),
(4, 2,1),
(4,3,1),
(5, 4,1),
(6, 7, 1);

 insert into order_has_part(idServiceOrder, idPart, partQuantity)
 values
 (1, 6,4), 
 (1, 10, 1),
 (3, 9,1),
 (3,10,1),
 (4, 1,4),
 (5, 6, 4),
 (6, 12, 1);
 