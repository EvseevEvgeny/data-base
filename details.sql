connect 'D:/DB/SERVICE.FDB' user 'SYSDBA' password 'masterkey';
commit;

create table DETAILS(
	ID_NAME int PRIMARY KEY,
	DETAIL_NAME varchar(20)
);

alter table DETAILS_CATALOG add ID_DETAIL_NAME int;

alter table DETAILS_CATALOG add ORIGINAL_ID_DETAIL int;

alter table DETAILS_CATALOG add constraint FK_CONTRACTS_FK1 foreign key (ID_DETAIL_NAME) references DETAILS(ID_NAME);

insert into DETAILS values ('1', 'возд фильтр);
insert into DETAILS values ('2', 'масл фильтр');
insert into DETAILS values ('3', 'свечи');
insert into DETAILS values ('4', 'амортизатор');
insert into DETAILS values ('5', 'бак');
insert into DETAILS values ('6', 'термостат');
insert into DETAILS values ('7', 'колодки');
insert into DETAILS values ('8', 'сцепление');
insert into DETAILS values ('9', 'зеркало');
insert into DETAILS values ('10', 'масло');
commit;
