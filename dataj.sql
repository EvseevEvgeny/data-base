connect 'D:/DB/SERVICE.FDB' user 'SYSDBA' password 'masterkey'; 
commit; 

-- — TABLE CLIENTS — 
insert into CLIENTS values (1, 'TONY STARK', '4024864932'); 
insert into CLIENTS values (2, 'CAPTAIN AMERICA', '4012863920'); 
insert into CLIENTS values (3, 'ANT MAN', '4073920184'); 
insert into CLIENTS values (4, 'SPIDER MAN', '4072849014'); 
insert into CLIENTS values (5, 'BLACK WIDOW', '4092846710'); 
insert into CLIENTS values (6, 'INCREDIBLE HULK', '4001468242'); 
insert into CLIENTS values (7, 'HOWK EYE', '4081947436'); 
insert into CLIENTS values (8, 'RED WITCH', '4081394302'); 
insert into CLIENTS values (9, 'WINTER SOLDIER', '4001394824'); 
insert into CLIENTS values (10, 'THOR THE SON OF ODIN', '4001847334'); 

-- — TABLE CARS — 
insert into CARS values ('nf74n8fnv', 1,'skoda','octavia','grey','2014'); 
insert into CARS values ('nf7jfsdg9', 2,'toyota','rav4','grey','2006'); 
insert into CARS values ('nf74n8sdf', 6,'mersedes-benz','maybach','black','2016'); 
insert into CARS values ('nf74n8fkg', 3,'ford','focus','grey','2008'); 
insert into CARS values ('nf74ngfsd', 5,'mitsubisi','lancer','red','2009'); 
insert into CARS values ('3434dfdfg', 7,'mitsubisi','ASX','blue','2011'); 
insert into CARS values ('nf74ef344', 8,'volkswagen','polo','white','2012'); 
insert into CARS values ('nf74124df', 9,'volkswagen','golf GTR','mixed','2007'); 
insert into CARS values ('nf7cvcvbr', 10,'skoda','kodiaq','green','2017'); 
insert into CARS values ('nf74n8f42', 4,'land rover','range rover sport','white','2013'); 

-- — TABLE ORDERS — 
insert into ORDERS values (1, 'nf74n8fnv', '13.02.2012', '13.03.2012'); 
insert into ORDERS values (2, 'nf7jfsdg9', '14.04.2012', '16.04.2012'); 
insert into ORDERS values (3, 'nf74n8sdf', '14.03.2014', '13.03.2014'); 
insert into ORDERS values (4, 'nf74n8fkg', '18.04.2015', '20.04.2015'); 
insert into ORDERS values (5, 'nf74ngfsd', '30.05.2016', '31.05.2016'); 
insert into ORDERS values (6, '3434dfdfg', '15.06.2016', '30.06.2016'); 
insert into ORDERS values (7, 'nf74ef344', '13.02.2015', '21.02.2015'); 
insert into ORDERS values (8, 'nf74124df', '11.07.2013', '14.07.2013'); 
insert into ORDERS values (9, 'nf7cvcvbr', '15.03.2013', '17.03.2013'); 
insert into ORDERS values (10, 'nf74n8f42', '21.05.2016', '13.06.2016'); 

-- — TABLE TYPES_OF_REPAIR — 
insert into TYPES_OF_REPAIR values (1, 'work', 1500); 
insert into TYPES_OF_REPAIR values (2, 'work2', 300); 

-- — TABLE MANUFACTURERS — 
insert into MANUFACTURERS values (345, 'EUROAUTO','www.euroauto.ru','435456'); 
insert into MANUFACTURERS values (123, 'BP', 'www.bp.com','56794536'); 
insert into MANUFACTURERS values (32, 'WAG','www.wag.de','3475897345'); 

-- — TABLE DETAILS_CATALOG — 
insert into DETAILS_CATALOG values (456, 'PRUZG', 1400, 'Y', 1, 345); 
insert into DETAILS_CATALOG values (231, 'BAK', 1010, 'Y', 1, 345); 
insert into DETAILS_CATALOG values (228, 'FARA', 34400,'N', 4, 345); 
insert into DETAILS_CATALOG values (322, 'WINDOW', 32345, 'N', 2, 123); 
insert into DETAILS_CATALOG values (567, 'MIRROW', 132, 'Y', 2, 32); 

-- — TABLE ORDERS_SOA — 
insert into ORDERS_SOA values (1, 456, 1); 
insert into ORDERS_SOA values (2, 231, 1); 
insert into ORDERS_SOA values (3, 228, 1); 
insert into ORDERS_SOA values (4, 322, 3); 
insert into ORDERS_SOA values (5, 567, 1); 

-- — TABLE REPAIR — 
insert into REPAIR values (1, 1, 'complex', 1); 
insert into REPAIR values (2, 2, 'paint', 2); 
insert into REPAIR values (3, 2, 'tuning', 3); 
insert into REPAIR values (4, 2, 'engine', 4); 
insert into REPAIR values (5, 2, 'suspension', 5); 
insert into REPAIR values (6, 1, 'cleaning', 5); 

-- — TABLE WORKERS — 
insert into WORKERS values (1, 'Ivan', 'mech1', '5830495864', '34534634341'); 
insert into WORKERS values (2, 'Petr', 'mech2', '3468945764', '34543903943'); 
insert into WORKERS values (3, 'Konstantin', 'paint', '3845769080', '23787563453'); 
insert into WORKERS values (4, 'Sergey', 'gear', '8908837495', '23489734895'); 
insert into WORKERS values (5, 'Vladimir', 'assistent', '8349572146', '23849573984'); 

-- — TABLE REPAIR_ORDERS — 
insert into REPAIR_ORDERS values (1, 1, 3, 5); 
insert into REPAIR_ORDERS values (2, 2, 1, 1); 
insert into REPAIR_ORDERS values (3, 3, 2, 3); 
insert into REPAIR_ORDERS values (4, 4, 5, 4); 
insert into REPAIR_ORDERS values (5, 5, 4, 2); 
insert into REPAIR_ORDERS values (6, 6, 6, 1); 
insert into REPAIR_ORDERS values (7, 2, 7, 4); 
insert into REPAIR_ORDERS values (8, 3, 8, 5); 
insert into REPAIR_ORDERS values (9, 5, 10, 2); 
insert into REPAIR_ORDERS values (10, 1, 9, 5); 

commit; 
select * from CLIENTS; 
select * from CARS; 
select * from ORDERS; 
select * from REPAIR_ORDERS; 
select * from WORKERS; 
select * from REPAIR; 
select * from TYPES_OF_REPAIR; 
select * from ORDERS_SOA; 
select * from DETAILS_CATALOG; 
select * from MANUFACTURERS;
