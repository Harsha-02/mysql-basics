create table student(rollno int,name varchar(20),dob date);
insert into student values(1,'anu','1999-10-23'),(2,'ali','2000-05-01'),(3,'abi','2001-08-11');
select * from student;
  delimiter !!
  create function age(dob date)
  returns int
  deterministic begin
  declare age int;
  set age = timestampdiff(year ,dob,sysdate());
  return age;
  end!!
   delimiter ;
select name,age(dob) from student;
