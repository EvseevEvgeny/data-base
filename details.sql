connect 'D:/DB/SERVICE.FDB' user 'SYSDBA' password 'masterkey';
commit;

create table DETAILS(
	ID_NAME int PRIMARY KEY,
	DETAIL_NAME varchar(20)
);

alter table DETAILS_CATALOG add ID_DETAIL_NAME int;

alter table DETAILS_CATALOG add ORIGINAL_ID_DETAIL int;

alter table DETAILS_CATALOG add constraint FK_CONTRACTS_FK1 foreign key (ID_DETAIL_NAME) references DETAILS(ID_NAME);

insert into DETAILS values ('1', '���� ������);
insert into DETAILS values ('2', '���� ������');
insert into DETAILS values ('3', '�����');
insert into DETAILS values ('4', '�����������');
insert into DETAILS values ('5', '���');
insert into DETAILS values ('6', '���������');
insert into DETAILS values ('7', '�������');
insert into DETAILS values ('8', '���������');
insert into DETAILS values ('9', '�������');
insert into DETAILS values ('10', '�����');
commit;
