CREATE TABLE `day7`.`orders` (
  `order_no` INT NOT NULL,
  `purchase_amt` INT NULL,
  `order_date` DATE NULL,
  `customer_id` INT NULL,
  `salesman_id` INT NULL,
  PRIMARY KEY (`order_no`));

CREATE TABLE `day7`.`customers` (
  `customers_id` INT NOT NULL,
  `customer_name` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `grade` VARCHAR(45) NULL,
  `salesman_id` INT NULL,
  PRIMARY KEY (`customers_id`));

CREATE TABLE `day7`.`salesman` (

  `salesman_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `commission` INT NULL,
  PRIMARY KEY (`salesman_id`));

CREATE TABLE `day7`.`employees` (

  `emp_id` VARCHAR(45) NOT NULL,
  `firstname` VARCHAR(45) NULL,
  `lastname` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `phone_no` BIGINT NULL,
  `hire_date` DATE NULL,
  `job_id` VARCHAR(45) NULL,
  `salary` INT NULL,
  `commission` INT NULL,
  `manager_id` INT NULL,
  `department_id` INT NULL,
  PRIMARY KEY (`emp_id`));

CREATE TABLE `day7`.`jobs` (
  `job_id` INT NOT NULL,
  `job_name` VARCHAR(45) NULL,
  `job_salary` INT NULL,
  PRIMARY KEY (`job_id`));

INSERT INTO `day7`.`customers` (`customers_id`, `customer_name`, `city`, `grade`, `salesman_id`) VALUES ('1', 'john', 'chennai', '2', '100');
INSERT INTO `day7`.`customers` (`customers_id`, `customer_name`, `city`, `grade`, `salesman_id`) VALUES ('2', 'sanjay', 'nagercoil', '2', '101');
INSERT INTO `day7`.`customers` (`customers_id`, `customer_name`, `city`, `grade`, `salesman_id`) VALUES ('3', 'kumar', 'chennai', '1', '102');
INSERT INTO `day7`.`customers` (`customers_id`, `customer_name`, `city`, `grade`, `salesman_id`) VALUES ('4', 'elon', 'chennai', '2', '103');

INSERT INTO `day7`.`orders` (`order_no`, `purchase_amt`, `order_date`, `customer_id`, `salesman_id`) VALUES ('21', '500', '2022-06-12', '1', '100');
INSERT INTO `day7`.`orders` (`order_no`, `purchase_amt`, `order_date`, `customer_id`, `salesman_id`) VALUES ('22', '800', '2022-06-11', '2', '101');
INSERT INTO `day7`.`orders` (`order_no`, `purchase_amt`, `order_date`, `customer_id`, `salesman_id`) VALUES ('23', '1000', '2022-05-13', '3', '102');
INSERT INTO `day7`.`orders` (`order_no`, `purchase_amt`, `order_date`, `customer_id`, `salesman_id`) VALUES ('24', '1200', '2022-05-11', '4', '103');

INSERT INTO `day7`.`salesman` (`salesman_id`, `name`, `city`, `commission`) VALUES ('100', 'sales1', 'nagercoil', '200');
INSERT INTO `day7`.`salesman` (`salesman_id`, `name`, `city`, `commission`) VALUES ('101', 'sales2', 'chennai', '300');
INSERT INTO `day7`.`salesman` (`salesman_id`, `name`, `city`, `commission`) VALUES ('102', 'sales3', 'nagercoil', '200');
INSERT INTO `day7`.`salesman` (`salesman_id`, `name`, `city`, `commission`) VALUES ('103', 'sales4', 'chennai', '100');

insert into day7.employees (emp_id, firstname, lastname, email, phone_no, hire_date, job_id, salary, commission, manager_id, department_id) values (1, 'Ferdinande', 'Satterley', 'fsatterley0@disqus.com', '2964502223', '2021-11-06', 1, 2955, 448, 22, 12);
insert into day7.employees (emp_id, firstname, lastname, email, phone_no, hire_date, job_id, salary, commission, manager_id, department_id) values (2, 'Calhoun', 'Ley', 'cley1@sbwire.com', '5447960384', '2022-04-17', 2, 3609, 894, 13, 14);
insert into day7.employees (emp_id, firstname, lastname, email, phone_no, hire_date, job_id, salary, commission, manager_id, department_id) values (3, 'Lesli', 'Ceyssen', 'lceyssen2@sciencedaily.com', '2583037221', '2021-10-24', 3, 1296, 425, 11, 15);
insert into day7.employees (emp_id, firstname, lastname, email, phone_no, hire_date, job_id, salary, commission, manager_id, department_id) values (4, 'Lemuel', 'Mumford', 'lmumford3@topsy.com', '3338937789', '2022-06-28', 4, 5935, 390, 31, 15);
insert into day7.employees (emp_id, firstname, lastname, email, phone_no, hire_date, job_id, salary, commission, manager_id, department_id) values (5, 'Madelene', 'Croose', 'mcroose4@furl.net', '6148917999', '2021-12-23', 5, 2180, 127, 36, 12);
insert into day7.employees (emp_id, firstname, lastname, email, phone_no, hire_date, job_id, salary, commission, manager_id, department_id) values (6, 'Trixie', 'Petrusch', 'tpetrusch5@ning.com', '4512649609', '2022-02-07', 6, 7910, 285, 18, 15);
insert into day7.employees (emp_id, firstname, lastname, email, phone_no, hire_date, job_id, salary, commission, manager_id, department_id) values (7, 'Lou', 'Hindrick', 'lhindrick6@usnews.com', '8549597102', '2022-05-18', 7, 6824, 597, 22, 12);
insert into day7.employees (emp_id, firstname, lastname, email, phone_no, hire_date, job_id, salary, commission, manager_id, department_id) values (8, 'Cooper', 'Fessier', 'cfessier7@linkedin.com', '3966707185', '2021-09-29', 8, 8661, 619, 31, 12);

insert into day7.jobs (job_id, job_name, job_salary) values (1, 'Statistician', 2955);
insert into day7.jobs (job_id, job_name, job_salary) values (2, 'Environmental Tech', 6473);
insert into day7.jobs (job_id, job_name, job_salary) values (3, 'WebDeveloper ', 8402);
insert into day7.jobs (job_id, job_name, job_salary) values (4, 'Financial Analyst', 9468);
insert into day7.jobs (job_id, job_name, job_salary) values (5, 'Health Coach I', 3070);
insert into day7.jobs (job_id, job_name, job_salary) values (6, 'Editor', 2950);

#1
SELECT  a.order_no,a.purchase_amt, b.customer_name,b.city FROM day7.orders a, day7.customers b WHERE a.customer_id=b.customers_id 
AND a.purchase_amt BETWEEN 500 AND 2000;

#2
SELECT a.order_no,a.order_date,a.purchase_amt, b.customer_name AS "customer Name", b.grade, c.name AS "salesman", c.commission FROM day7.orders a 
INNER JOIN day7.customers b ON a.customer_id=b.customers_id INNER JOIN day7.salesman c ON a.salesman_id=c.salesman_id;

#3
SELECT a.customer_name AS "customer Name", a.city, b.name AS "sales man", b.city, b.commission FROM day7.customers a  
INNER JOIN day7.salesman b ON a.salesman_id=b.salesman_id WHERE b.commission>.12 AND a.city<>b.city;

#4
SELECT * FROM day7.salesman a CROSS JOIN day7.customers b WHERE a.city IS NOT NULL AND b.grade IS NOT NULL AND  a.city!=b.city;

#5
SELECT job_id, GROUP_CONCAT(emp_id, ' ') as EmployeeId FROM day7.employees GROUP BY job_id;

#6
UPDATE day7.employees SET phone_no = REPLACE(phone_no, '124', '999') WHERE phone_no LIKE '%124%';

#7
SELECT * FROM day7.employees WHERE LENGTH(firstname) >= 8;

#8
SELECT * FROM day7.employees WHERE firstname = binary upper(firstname);

#9
SELECT RIGHT(phone_no, 4) as last_digits FROM day7.employees;

#10
SELECT job_name, SUBSTR(job_name,1, INSTR(job_name, ' ')-1) as more_than_one_words FROM day7.jobs;

#11
SELECT length(firstname) FROM day7.employees WHERE INSTR(lastname,'C') > 2;

#12
SELECT firstname "Name", LENGTH(firstname) "Length_of_names" FROM day7.employees WHERE firstname LIKE 'A%' 
OR firstname LIKE 'J%' OR firstname LIKE 'M%' ORDER BY firstname ;

