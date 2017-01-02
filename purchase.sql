connect 'D:/DB/SERVICE.FDB' user 'SYSDBA' password 'masterkey';
commit;

create table PURCHASE(
	ID_PURCHASE int PRIMARY KEY,
	ID_DETAIL int not null references DETAILS_CATALOG(ID_DETAIL),
	PURCHASE_PRICE decimal(8) not null
);

insert into PURCHASE values ('1','456','1300');
insert into PURCHASE values ('2','231','1000');
insert into PURCHASE values ('3','228','34000');
insert into PURCHASE values ('4','322','32000');
insert into PURCHASE values ('5','567','100');
insert into PURCHASE values ('6','232','400');

commit; 
select * from PURCHASE; 