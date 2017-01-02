connect 'D:/DB/SERVICE.FDB' user 'SYSDBA' password 'masterkey';
commit;

create table WARRANTYS(
	ID_WARRANTY int PRIMARY KEY,
	DATE_APP date,
	ID_ORDER int not null references ORDERS(ID_ORDER)
);

alter table ORDERS add ID_WARRANTY int;

alter table ORDERS add constraint FK_ORDERS_FK1 foreign key (ID_WARRANTY) references WARRANTYS(ID_WARRANTY);

alter table TYPES_OF_REPAIR add WARRANTY varchar(10);

insert into WARRANTYS values ('1','2013-03-25','9');
insert into WARRANTYS values ('2','2016-06-12','5');
insert into WARRANTYS values ('3','2016-06-30','10');

update ORDERS set ID_WARRANTY='1' where ID_ORDER='9';
update ORDERS set ID_WARRANTY='2' where ID_ORDER='5';
update ORDERS set ID_WARRANTY='3' where ID_ORDER='10';

update TYPES_OF_REPAIR set WARRANTY='2 weeks' where ID_TYPE='2';

commit; 
select * from ORDERS; 
select * from TYPES_OF_REPAIR; 
select * from WARRANTYS; 