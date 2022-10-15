use day3;
create table customer (acc_no integer primary key,
		cust_name varchar(20),
		avail_balance decimal);
create table mini_statement (acc_no integer primary key,
		avail_balance decimal,
		foreign key(acc_no) references customer(acc_no) on delete cascade);

insert into customer values (1000, "ragul", 7000);
insert into customer values (1001, "peter", 12000);

delimiter //
create trigger update_cus
before update on customer
for each row
begin
insert into mini_statement values (old.acc_no, old.avail_balance);
end; //

update customer set avail_balance = avail_balance + 3000 where acc_no = 1001;
select *from mini_statement;

# 1st question
CREATE TABLE `day3`.`emp_details` (
  `emp_id` INT NOT NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `job_id` INT NULL,
  `salary` INT NULL,
  `commission` INT NULL,
  PRIMARY KEY (`emp_id`));

CREATE TABLE `day3`.`log_emp_details` (
  `emp_id` INT NOT NULL,
  `salary` INT NULL,
  `editTime` DATETIME NULL,
  PRIMARY KEY (`emp_id`));

delimiter //
create trigger emp_insert
after insert on day3.emp_details for each row
begin
insert into day3.log_emp_details values( new.emp_id,new.salary,sysdate());
end; //

insert into day3.emp_details values( 100, 'ragul', 'sid', 10, 50000, 1000);

#2nd question
CREATE TABLE `day3`.`student_master` (
  `stu_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `stu_class` INT NULL,
  PRIMARY KEY (`stu_id`));
CREATE TABLE `day3`.`student_log` (
  `stu_id` INT NOT NULL,
  `login_time` DATETIME NULL,
  PRIMARY KEY (`stu_id`));

delimiter //
create trigger student_update_trigger
after update on day3.student_master for each row
begin
insert into day3.student_log values( new.stu_id,sysdate());
end; //

drop trigger student_update_trigger;

#3rd question
CREATE TABLE `day3`.`stu_marks` (
  `stu_id` INT NOT NULL,
  `sub1` INT NULL,
  `sub2` INT NULL,
  `sub3` INT NULL,
  `sub4` INT NULL,
  `sub5` INT NULL,
  `total` INT NULL,
  `per_marks` INT NULL,
  `grade` INT NULL,
  PRIMARY KEY (`stu_id`));

