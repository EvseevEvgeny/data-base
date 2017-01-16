connect 'D:/DB/SERVICE.FDB' user 'SYSDBA' password 'masterkey';
commit;

-- 2 --
create view WORK as
	select REPAIR_ORDERS.ID_WORKER
	from REPAIR_ORDERS
	where ID_WARRANTY <> 0;
create view BAD_WORKERS as
	select first 5 WORK.ID_WORKER, count(WORK.ID_WORKER) as AMOUNT
	from WORK
	group by WORK.ID_WORKER
	order by AMOUNT desc;
select * from BAD_WORKERS;