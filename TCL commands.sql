create table marks(sid int,sname varchar(20),phy int,che int,mat int);
set AUTOCOMMIT=0;
insert into marks values(1,'person1',89,90,79),(2,'person2',89,87,90);
insert into marks values(3,'person3',99,78,90),(4,'person4',80,99,94);
SAVEPOINT S1;
select * from marks;
insert into marks values(5,'person5',90,43,67);
SAVEPOINT S2;
select * from marks;
ROLLBACK TO S1;
select * from marks;
insert into marks values(6,'person6',90,48,67);
SAVEPOINT S3;
select * from marks;
commit;
select * from marks;
ROLLBACK S2;
select * from marks;