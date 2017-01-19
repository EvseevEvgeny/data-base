connect 'D:/DB/SERVICE.FDB' user 'SYSDBA' password 'masterkey';
commit;

create table PURCHASE(
	ID_PURCHASE int PRIMARY KEY,
	ID_DETAIL int not null references DETAILS_CATALOG(ID_DETAIL),
	PURCHASE_PRICE decimal(6,0) not null,
	AMOUNT int,
	P_DATE date
);
