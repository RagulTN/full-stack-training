#1st question
CREATE TABLE `day3`.`person` (
  `person_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `age` INT NULL,
  `email` VARCHAR(45) NULL,
  `contact` VARCHAR(45) NULL,
  PRIMARY KEY (`person_id`));

delimiter //
create trigger verify_age
before insert on person
for each row
begin
   declare msg varchar(40);
 if(new.age < 18) then
    set msg = "please enter correct age";
    signal sqlstate '45000' set message_text = msg;
    end if;
end ; $$
 //
 
-- shows error when age is lesser than 18
 insert into person values(10,"ragul",10,"ragul@gmail.com","ragul@gmail.com");
 
 ----------------------
 # 2nd question
 
 delimiter //
create trigger change_contact
before update on person
for each row
begin
   declare msg varchar(40);
    set msg = "Are you going to change contact info?";
    signal sqlstate '45000' set message_text = msg;
end ;

drop trigger change_contact;
 
update person set name="raggul" where person_id=10;
 
----------------------
CREATE TABLE `day3`.`pms_oldemp_details` (
  `emp_id` INT NOT NULL,
  `emp_name` VARCHAR(45) NULL,
  `emp_email` VARCHAR(45) NULL,
  PRIMARY KEY (`emp_id`));


# 3rd question

delimiter //
create trigger old_emps
before delete on pms_emp_details
for each row
begin
   insert into pms_oldemp_details (emp_id,emp_name,emp_email) values(old.emp_id,old.emp_name,old.emp_email);
end ;

drop trigger old_emps;
delete from pms_emp_details where emp_id=10;
 
----------------------
CREATE TABLE `day3`.`pms_delete_info` (
  `emp_id` INT NOT NULL,
  `deleted_date` DATE NULL,
  `deleted_user` VARCHAR(45) NULL,
  PRIMARY KEY (`emp_id`));

# 4rd question

delimiter //
create trigger delete_info
after delete on pms_emp_details
for each row
begin
   declare User varchar(45);
   select USER() into User;
   insert into pms_delete_info(emp_id, deleted_date, deleted_user) values(old.emp_id,sysdate(),User);
end ;
 
 drop trigger delete_info;
delete from pms_emp_details where emp_id=11;
 