create table a(id integer,name text,salary integer);
create table b(cid integer, city text);


insert into a values(1,"Pavan",95000);
insert into a values(2,"Me",80000);
insert into a values(3,"Win",75000);
insert into a values(4,"Pavan",195000);
insert into a values(5,"Milind",80000);
insert into a values(6,"Win",75000);

--select * from a;

insert into b values(1,"Dhule");
insert into b values(2,"Pune");
insert into b values(4,"Dream");
insert into b values(3,"Bhopal");
insert into b values(5,"Mumbai");
insert into b values(6,"Nashik");
insert into b values(1,"Udaypur");
insert into b values(2,"Jodhpur");
insert into b values(4,"Heaven");

create table c(id integer,name text,word text);
insert into c values(1,"Pavan","Pareshaan");
insert into c values(2,"Pavan","Will Do it");
insert into c values(3,"Me","Will remain me");
insert into c values(4,"Milind","Just name");
insert into c values(5,"Win","My goal");
insert into c values(6,"Me","Need some motivation");

--select * from c;
--select * from b;

--select * from a where id in (select id from b where id in(1,2));
--select * from a aa inner join b bb on aa.id=bb.cid inner join c cc on cc.id=aa.id; 

select * from b bb left outer join a aa on bb.cid=aa.id left outer join c cc on cc.id=bb.cid;

--select * from a where id in(
--select cid from b group by city having cid=1)sl;
select * from b where cid in (select id from a where name="Pavan" and city="Dhule");

select id,name,sum(salary) from a group by name;




select id,name,salary, (select avg(salary) from a) from a;


select cid,city,count(*)as cnt from b group by cid;
