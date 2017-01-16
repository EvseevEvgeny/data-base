connect 'D:/DB/SERVICE.FDB' user 'SYSDBA' password 'masterkey';
commit;

-- 1 --
create view MAX_COST as
	select first 5 REPAIR_ORDERS.ID_REPAIR_ORDER, max(REPAIR_ORDERS.PRICE) as PRICE
	from REPAIR_ORDERS
	group by REPAIR_ORDERS.ID_REPAIR_ORDER
	order by PRICE desc;
select * from MAX_COST;