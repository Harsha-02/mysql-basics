create table student(rollno int,name varchar(10) NOT NULL,dept varchar(10) CHECK(dept IN('cs','ad','it')));
insert into student values(1,'albert','cs');

insert into student values(3,'david','ad');
insert into student values(4,'paul','mr');
insert into student values(5,'joel','it');
select * from student;
