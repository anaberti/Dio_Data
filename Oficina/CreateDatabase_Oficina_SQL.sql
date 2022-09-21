/*Creating 'Oficina' Database*/
create database if not exists Oficina;

use oficina;

/*Creating tables*/
create table if not exists Clients (
idClient int primary key unique auto_increment,
firstName varchar(45),
lastName varchar(60),
CPF varchar(20),
phone bigint,
street varchar(100),
num int,
complement varchar(45),
CEP char(5),
city varchar(45),
state char(2),
country char(3),
pronoum enum('he','she','other')
);

create table if not exists Vehicle (
idVehicle int primary key unique auto_increment,
idClient int, 
brand varchar(45),
model varchar(45),
model_year char(4),
plate varchar(10),
chassi varchar(45),
lastKm bigint,
kmDate date,
Car_change ENUM('aut', 'man'),
fuelType ENUM('flex gas/et', 'diesel', 'elet', 'flex gas elet')
);

create table if not exists Mechanic (
idMechanic int primary key unique auto_increment,
mFirstName varchar(45),
mLastName varchar(60),CPF varchar(20),
mPhone bigint,
mStreet varchar(100),
mNum int,
mComplement varchar(45),
mCEP char(5),
mCity varchar(45),
mState char(2),
mCountry char(3),
mPronoum enum('he','she','other'),
mSpecialty varchar(45)
);

create table if not exists Service (
idService int primary key unique auto_increment,
serviceName varchar(30),
serviceDescription varchar(100),
serviceValue decimal(15,2),
specialty varchar(45)
);

create table if not exists Part (
idPart int primary key unique auto_increment,
partName varchar(45),
partDescription varchar(45),
partValue decimal(15,2)
);

create table if not exists Team (
idTeam int primary key unique auto_increment,
teamMembers varchar(300)
);

create table if not exists Team_has_Mechanic (
team_idTeam int,
mechanic_idMechanic int
);

create table if not exists Service_Order (
idServiceOrder int primary key unique auto_increment,
idVehicle int,
idTeam int,
SO_Status ENUM('Avaliacao', 'Orcamento', 'AprovValor', 'CompraPecas', 'Execucao', 'AprovServ', 'Pagamento', 'Entregue'),
SO_Description varchar(300),
SO_Value decimal(15,2),
order_date date,
approval_date date,
deliveryForecast date,
deliveryDate date,
SO_conclusion date
);

create table if not exists Order_has_Service (
idServiceOrder int,
idService int,
serviceQuantity int
);

create table if not exists Order_has_Part (
idServiceOrder int,
idPart int,
partQuantity int
);




