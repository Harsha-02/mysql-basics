create table movies(mid int primary key ,mtitle varchar(20),mcat varchar(20));
create table distribution(did int primary key,dname varchar(20),movieid int);
alter table distribution add foreign key(movieid) references movies(mid);
insert into movies values(100,'jai bhim','crime'),(101,'shershah','war'),(103,'conjuring','horror'),(104,'tenet','Scifi'),(105,'Hridhayam','Romance');
insert into distribution values(10,"Amazon prime",100),(13,'newlinecinemas',103),(14,'warner bros',104),(15,'Merryland cinemas',105);
select movies.mid,movies.mtitle,distribution.dname from movies inner join distribution on movies.mid = distribution.movieid;
select movies.mid,movies.mtitle,distribution.dname from movies left join distribution on movies.mid = distribution.movieid;
select movies.mid,movies.mtitle,distribution.dname from movies right join distribution on movies.mid = distribution.movieid;
