CREATE TABLE `day3`.`employee` (
  `eno` INT NOT NULL,
  `e_name` VARCHAR(45) NULL,
  `hire_date` DATE NULL,
  `salary` INT NULL,
  PRIMARY KEY (`eno`));


insert into employee (eno, e_name, hire_date, salary) values (1, 'Tracie', '2008-01-20', 29226);
insert into employee (eno, e_name, hire_date, salary) values (2, 'Michaeline', '2000-11-27', 21485);
insert into employee (eno, e_name, hire_date, salary) values (3, 'Bertie', '2018-04-04', 16703);
insert into employee (eno, e_name, hire_date, salary) values (4, 'Hartwell', '2016-08-28', 28737);
insert into employee (eno, e_name, hire_date, salary) values (5, 'Gustavus', '2003-08-13', 23562);
insert into employee (eno, e_name, hire_date, salary) values (6, 'Ingeborg', '2008-09-30', 21525);
insert into employee (eno, e_name, hire_date, salary) values (7, 'Fulton', '2014-02-10', 22507);
insert into employee (eno, e_name, hire_date, salary) values (8, 'Adriana', '2003-04-28', 17775);
insert into employee (eno, e_name, hire_date, salary) values (9, 'Monty', '2016-07-16', 19327);
insert into employee (eno, e_name, hire_date, salary) values (10, 'Laure', '2019-07-08', 16280);

delimiter $$
create procedure checkEmpYears(INOUT empList varchar(45))
begin
declare flag int default 0;
declare e_name varchar(45) default 0;
declare curEmp
cursor for 
select e_name from day3.employee where timestampdiff(year, hire_date, now())>10 ;
declare continue handler for
not found set flag=1;
open curEmp;
getEmp:loop
fetch curEmp into e_name;
if flag=1 then
leave getEmp;
end if;
set empList= concat(e_name,";",empList);
end loop getEmp;
close curEmp;
end $$
delimiter $$ ;

set @empName=" ";
call createEmpList(@empName);
select @empName;


 