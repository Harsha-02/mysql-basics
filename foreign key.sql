create table buildings(bid int,bname varchar(10),bnum int);
alter table buildings add primary key (bid);
create table rooms(rid int,rname varchar(10),bid int);
alter table rooms add primary key (rid);
alter table rooms add foreign key(bid) references buildings(bid) on delete cascade;
insert into buildings values(1,'jdn',222),(2,'dcn',99);
insert into rooms values(12,'23n',1),(13,'fd',2);
select * from buildings as B,rooms as R where B.bid=R.bid;
