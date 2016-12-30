connect 'D:/DB/SERVICE.FDB' user 'SYSDBA' password 'masterkey';
commit;

alter table CARS drop VIN;
alter table DETAILS_CATALOG drop ID_DETAIL_NAME;
alter table DETAILS_CATALOG drop VIN;
drop table DETAILS;

create table DETAILS(
	ID_NAME int PRIMARY KEY,
	DETAIL_NAME varchar(20)
);

alter table DETAILS_CATALOG add ID_DETAIL_NAME int;

alter table DETAILS_CATALOG add VIN varchar(17);

alter table DETAILS_CATALOG add constraint FK_CONTRACTS_FK1 foreign key (ID_DETAIL_NAME) references DETAILS(ID_NAME);

alter table CARS add VIN varchar(17);

insert into DETAILS values ('1', 'window right');
insert into DETAILS values ('2', 'window left');
insert into DETAILS values ('3', 'front spring');
insert into DETAILS values ('4', 'rear spring');
insert into DETAILS values ('5', 'bak');
insert into DETAILS values ('6', 'front damper');
insert into DETAILS values ('7', 'rear damoer');
insert into DETAILS values ('8', 'front left fara');
insert into DETAILS values ('9', 'left mirrow');
insert into DETAILS values ('10', 'oil filter');

update DETAILS_CATALOG set ID_DETAIL_NAME='3',VIN='YRIWBFJDISOWTHDIN' where ID_DETAIL='456';
update DETAILS_CATALOG set ID_DETAIL_NAME='5',VIN='QEICJFNYGCNUASDCM' where ID_DETAIL='231';
update DETAILS_CATALOG set ID_DETAIL_NAME='8',VIN='YRIWBFJDISOWTHDIN' where ID_DETAIL='228';
update DETAILS_CATALOG set ID_DETAIL_NAME='1',VIN='EGGNEAVIUERHVNJLI' where ID_DETAIL='322';
update DETAILS_CATALOG set ID_DETAIL_NAME='9',VIN='WRIJVGHUEVCBUECVM' where ID_DETAIL='567';

update CARS set VIN='YRIWBFJDISOWTHDIN' where ID_CLIENT='1';
update CARS set VIN='JFCUIEBVCJASKCNDI' where ID_CLIENT='2';
update CARS set VIN='FQIERFHUIADSCFBRF' where ID_CLIENT='3';
update CARS set VIN='QEICJFNYGCNUASDCM' where ID_CLIENT='4';
update CARS set VIN='QEIFUHUWYFGNCUASK' where ID_CLIENT='5';
update CARS set VIN='UXISCNFEYGFCMCOIS' where ID_CLIENT='6';
update CARS set VIN='QWEOFDIHIOOIRGMFC' where ID_CLIENT='7';
update CARS set VIN='PQWJDFUNGCYBDUSCM' where ID_CLIENT='8';
update CARS set VIN='PACEYBXWYCMEWIUFF' where ID_CLIENT='9';
update CARS set VIN='QEFUMQEG3HFYUOQWS' where ID_CLIENT='10';

commit;
show tables;
select * from DETAILS;
select * from DETAILS_CATALOG;
select * from CARS;