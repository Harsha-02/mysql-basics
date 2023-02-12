create table class(clsno int primary key,clname varchar(10),tutname varchar(20),clstr int);
create table updatelog(clsno int,clname varchar(10),tutname varchar(20),clstr int);
insert into class values(1,'nithin','bineesh',49),(2,'Anurag','lufiya',49),(3,'Albert','Aneesh',49);
select * from class;
delimiter $
create trigger trigger1
after update on class for each row
begin
insert into updatelog
set clsno=old.clsno,
clname = old.clname,
tutname = old.tutname,
clstr = old.clstr;
end $
delimiter ;
update class set tutname = 'saju' where clsno = 1;
update class set clsno = 15 where clsno = 3;
select * from class;
select * from updatelog;
