create database 'D:/DB/SERVICE.FDB' user 'SYSDBA' password 'masterkey';

create table CLIENTS(
	ID_CLIENT  int primary key,
	FULL_NAME varchar(50) not null,
	PHONE varchar(10) not null
);

create table CARS(
	ID_CAR varchar(9) primary key,
	ID_CLIENT  int not null references CLIENTS(ID_CLIENT),
	MARK varchar(30) not null,
	MODEL varchar(30) not null,
	COLOR varchar(20) not null,
	YEAR_OF_ISSUE varchar(4) not null
);

create table ORDERS(
	ID_ORDER int primary key,
	ID_CAR varchar(9) not null references CARS(ID_CAR),
	BEGIN_AT date,
	END_AT date
);

create table TYPES_OF_REPAIR(
	ID_TYPE int primary key,
	NAME varchar(70) not null,
	PRICE decimal(8) not null
);

create table MANUFACTURERS(
	ID_MANUFACTURER int primary key,
	NAME varchar(20) not null,
	SITE varchar(30) not null,
	PHONE varchar(10) not null
);

create table DETAILS_CATALOG(
	ID_DETAIL int primary key,
	NAME varchar(20) not null,
	COST decimal(8) not null,
	EXISTENCE_Y_or_N char(1) not null,
	AMOUNT int not null,
	ID_MANUFACTURER int not null references MANUFACTURERS(ID_MANUFACTURER)
);

create table ORDERS_SOA(
	ID_ORDER_SOA int primary key,
	ID_DETAIL int not null references DETAILS_CATALOG(ID_DETAIL),
	AMOUNT int not null
);

create table REPAIR(
	ID_REPAIR int primary key,
	ID_TYPE int not null references TYPES_OF_REPAIR(ID_TYPE),
	NAME varchar(50) not null,
	ID_ORDER_SOA int not null references ORDERS_SOA(ID_ORDER_SOA)
);

create table WORKERS(
	ID_WORKER int primary key,
	FULL_NAME varchar(50) not null,
	SPECIALTY varchar(20) not null,
	PHONE varchar(10) not null,
	PASSPORT varchar(11) not null
);

create table REPAIR_ORDERS(
	ID_REPAIR_ORDER int primary key,
	ID_REPAIR int not null references REPAIR(ID_REPAIR),
	ID_ORDER int not null references ORDERS(ID_ORDER),
	ID_WORKER int not null references WORKERS(ID_WORKER)
);

--alter table CARS add constraint FK_CARS_FK0 foreign key (ID_CLIENT) references CLIENTS(ID_CLIENT);

--alter table ORDERS add constraint FK_ORDERS_FK0 foreign key (ID_CAR) references CARS(ID_CAR);

--alter table REPAIR_ORDERS add constraint FK_REPAIR_ORDERS_FK0 foreign key (ID_REPAIR) references REPAIR(ID_REPAIR);

--alter table REPAIR_ORDERS add constraint FK_REPAIR_ORDERS_FK1 foreign key (ID_ORDER) references ORDERS(ID_ORDER);

--alter table REPAIR_ORDERS add constraint FK_REPAIR_ORDERS_FK2 foreign key (ID_WORKER) references WORKERS(ID_WORKER);

--alter table REPAIR add constraint FK_REPAIR_FK0 foreign key (ID_TYPE) references TYPES_OF_REPAIR(ID_TYPE);

--alter table REPAIR add constraint FK_REPAIR_FK1 foreign key (ID_ORDER_SOA) references ORDERS_SOA(ID_ORDER_SOA);

--alter table ORDERS_SOA add constraint FK_ORDERS_SOA_FK0 foreign key (ID_DETAIL) references DETAILS_CATALOG(ID_DETAIL);

--alter table DETAILS_CATALOG add constraint FK_DETAILS_CATALOG_FK0 foreign key (ID_MANUFACTURER) references MANUFACTURERS(ID_MANUFACTURER);

show tables;