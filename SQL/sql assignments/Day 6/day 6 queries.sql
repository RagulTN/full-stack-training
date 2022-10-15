#1 
SELECT * FROM day3.department_details
WHERE department_id 
NOT IN (select department_id FROM day3.pms_employee_details);

#2
select d.department_name,count(d.department_location) as No_of_Employees from day3.pms_employee_details e join day3.department_details d on
e.department_id = d.department_id group by d.department_location having count(d.department_location)>=5;

#3
CREATE TABLE `day3`.`pms_managers` (
  `manager_id` INT NOT NULL,
  `manager_name` VARCHAR(45) NULL,
  PRIMARY KEY (`manager_id`));

select e.employee_id,e.employee_name,e.job_name,m.manager_name from day3.employee_details e join day3.pms_managers m
 on e.manager_id = m.manager_id;
 
#4
select employee_id,employee_name,job_name,salary,commission,department_id from day3.employee_details order by salary desc limit 1,1;

#5
select m.manufacture_id,m.unit_id, m.quantity, m.prod_manu_date, m.prod_expiry_date,p.product_name,p.department_name 
from day3.pms_manufacturing m  join day3.pms_product p on
 m.product_id=p.product_id where department_name='ghee section';
 
#6
select m.product_id,p.product_name, sum(m.quantity) from day3.pms_manufacturing m join day3.pms_product p
where m.product_id=p.product_id group by product_id;

#7
select product_id, product_name from day3.pms_product where product_id=(select product_id from day3.pms_manufacturing group by
product_id order by sum(quantity) desc limit 1);

#8
CREATE TABLE `day3`.`lms_book_issue` (
  `book_issue_no` INT NOT NULL,
  `member_id` VARCHAR(45) NULL,
  `book_code` INT NULL,
  `date_issue` DATE NULL,
  `date_return` DATE NULL,
  `date_returned` DATE NULL,
  `fine_range` INT NULL,
  PRIMARY KEY (`book_issue_no`));
INSERT INTO `day3`.`lms_book_issue` (`book_issue_no`, `member_id`, `book_code`, `date_issue`, `date_return`, `date_returned`, `fine_range`) VALUES ('10', 'LM50', '1100', '2022-04-09', '2022-04-10', '2022-04-11', '2');
INSERT INTO `day3`.`lms_book_issue` (`book_issue_no`, `member_id`, `book_code`, `date_issue`, `date_return`, `date_returned`, `fine_range`) VALUES ('11', 'LM51', '1101', '2022-04-10', '2022-04-12', '2022-04-13', '3');
INSERT INTO `day3`.`lms_book_issue` (`book_issue_no`, `member_id`, `book_code`, `date_issue`, `date_return`, `date_returned`, `fine_range`) VALUES ('12', 'LM52', '1102', '2022-04-12', '2022-04-14', '2022-04-16', '4');
INSERT INTO `day3`.`lms_book_issue` (`book_issue_no`, `member_id`, `book_code`, `date_issue`, `date_return`, `date_returned`, `fine_range`) VALUES ('13', 'LM53', '1103', '2022-04-15', '2022-04-17', '2022-04-20', '5');

select * from day3.lms_book_issue;
select m.member_id,member_name, 3-count(date_issue)remaining from  day3.lms_members m left join   day3.lms_book_issue bi 
on m.member_id=bi.member_id group by member_id;

#9
select p.product_id,p.product_name,u.unit_id,u.unit_weight from day3.pms_product  p join  day3.pms_product_unit m join day3.pms_unit_details u 
on p.product_id=m.product_id and m.unit_id=u.unit_id where p.product_name like '%milk';

#10
select product_name,unit_name,total_pieces,unit_weight from day3.pms_product p join day3.pms_product_unit d join day3.pms_unit_details u
on p.product_id=d.product_id and d.unit_id = u.unit_id order by u.unit_weight;

#11
select e.emp_name, d.department_name, e.job_title, m.manager_name, count(p.product_name) as No_of_product from day3.pms_employee_details e 
join day3.pms_department_details d join day3.pms_managers m
join day3.pms_product p on e.department_id=d.department_id and e.manager_code=m.manager_id and e.department_id=p.department_id
group by p.product_name;

#12
select book_issue_no, date_issue, date_return, date_returned, date_register, date_expire, book_title, category, author, price, fine_range 
from  day3.lms_book_issue bi join day3.lms_members m  join day3.lms_fine_details bd join day3.lms_fine_details f 
on bi.member_id=m.member_id and bi.book_code=bd.book_code and bi.fine_range=f.fine_range group by book_issue_no;
