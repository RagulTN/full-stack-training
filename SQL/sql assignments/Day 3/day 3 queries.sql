CREATE TABLE `day3`.`employee_details` (
  `employee_id` INT NOT NULL,
  `employee_name` VARCHAR(45) NOT NULL,
  `job_name` VARCHAR(45) NOT NULL,
  `salary` INT NOT NULL,
  PRIMARY KEY (`employee_id`));

INSERT INTO `day3`.`employee_details` (`employee_id`, `employee_name`, `job_name`, `salary`) VALUES ('7711', 'ragul', 'manager', '80000');
INSERT INTO `day3`.`employee_details` (`employee_id`, `employee_name`, `job_name`, `salary`) VALUES ('7722', 'elon', 'assistant manager', '70000');
INSERT INTO `day3`.`employee_details` (`employee_id`, `employee_name`, `job_name`, `salary`) VALUES ('7733', 'john', 'assistant manager', '70000');
INSERT INTO `day3`.`employee_details` (`employee_id`, `employee_name`, `job_name`, `salary`) VALUES ('7712', 'sanjay', 'manager', '25000');
INSERT INTO `day3`.`employee_details` (`employee_id`, `employee_name`, `job_name`, `salary`) VALUES ('7713', 'kumar', 'manager', '28000');

SELECT employee_id,employee_name,job_name from `day3`.`employee_details` where job_name !="assistant manager";
SELECT employee_id,employee_name,job_name from `day3`.`employee_details` where (salary>=20000 and salary <=30000);
SELECT employee_id,employee_name,job_name,salary from `day3`.`employee_details` where employee_name LIKE '_a%';
SELECT employee_id,employee_name,job_name,salary from `day3`.`employee_details` where employee_id IN (7711,7722,7733);

CREATE TABLE `day3`.`pms_product` (
  `product_id` INT NOT NULL,
  `product_name` VARCHAR(45) NOT NULL,
  `department_id` INT NOT NULL,
  PRIMARY KEY (`product_id`));
  
CREATE TABLE `day3`.`pms_unit_details` (
  `unit_id` INT NOT NULL,
  `unit_name` VARCHAR(45) NOT NULL,
  `piece_weight` INT NOT NULL,
  `total_pieces` INT NOT NULL,
  `unit_weight` INT NOT NULL,
  PRIMARY KEY (`unit_id`));

INSERT INTO `day3`.`pms_product` (`product_id`, `product_name`, `department_id`) VALUES ('111', 'dairy milk', '1');
INSERT INTO `day3`.`pms_product` (`product_id`, `product_name`, `department_id`) VALUES ('112', 'fresh milk', '2');
INSERT INTO `day3`.`pms_product` (`product_id`, `product_name`, `department_id`) VALUES ('113', 'cow milk', '3');
INSERT INTO `day3`.`pms_product` (`product_id`, `product_name`, `department_id`) VALUES ('114', 'chocolate', '4');
INSERT INTO `day3`.`pms_product` (`product_id`, `product_name`, `department_id`) VALUES ('115', 'fruits', '5');

INSERT INTO `day3`.`pms_unit_details` (`unit_id`, `unit_name`, `piece_weight`, `total_pieces`, `unit_weight`) VALUES ('1111', 'Milk', '10', '12', '5');
INSERT INTO `day3`.`pms_unit_details` (`unit_id`, `unit_name`, `piece_weight`, `total_pieces`, `unit_weight`) VALUES ('1112', 'chocolates', '15', '14', '5');
INSERT INTO `day3`.`pms_unit_details` (`unit_id`, `unit_name`, `piece_weight`, `total_pieces`, `unit_weight`) VALUES ('1113', 'fruits', '30', '15', '4');
INSERT INTO `day3`.`pms_unit_details` (`unit_id`, `unit_name`, `piece_weight`, `total_pieces`, `unit_weight`) VALUES ('1114', 'juices', '15', '10', '5');
INSERT INTO `day3`.`pms_unit_details` (`unit_id`, `unit_name`, `piece_weight`, `total_pieces`, `unit_weight`) VALUES ('1115', 'snacks', '28', '13', '9');

SELECT * FROM day3.pms_product where product_name like '%milk';
SELECT * FROM day3.pms_unit_details where (total_pieces>=20 and unit_weight>0);
SELECT * FROM day3.pms_unit_details where unit_name like 'ca%';

CREATE TABLE `day3`.`pms_employee_details` (
  `emp_id` INT NOT NULL,
  `emp_name` VARCHAR(45) NULL,
  `department` VARCHAR(45) NULL,
  `manager_code` INT NULL,
  `salary` INT NULL,
  `join_date` DATE NULL,
  `bonus` INT NULL,
  `type` VARCHAR(45) NULL,
  PRIMARY KEY (`emp_id`));

INSERT INTO `day3`.`pms_employee_details` (`emp_id`, `emp_name`, `department_id`, `manager_code`, `salary`, `join_date`, `bonus`, `type`) VALUES ('111', 'ragul', '10', '7711', '1000', '2022-09-08', '3000', 'regular');
INSERT INTO `day3`.`pms_employee_details` (`emp_id`, `emp_name`, `department_id`, `manager_code`, `salary`, `join_date`, `bonus`, `type`) VALUES ('112', 'elon', '20', '7711', '2000', '2022-09-08', '2000', 'contract');
INSERT INTO `day3`.`pms_employee_details` (`emp_id`, `emp_name`, `department_id`, `manager_code`, `salary`, `join_date`, `bonus`, `type`) VALUES ('113', 'sanjay', '20', '7722', '1000', '2022-09-08', '2000', 'regular');
INSERT INTO `day3`.`pms_employee_details` (`emp_id`, `emp_name`, `department_id`, `manager_code`, `salary`, `join_date`, `bonus`, `type`) VALUES ('114', 'ram', '10', '7733', '3000', '2022-09-08', '2000', 'contract');
INSERT INTO `day3`.`pms_employee_details` (`emp_id`, `emp_name`, `department_id`, `manager_code`, `salary`, `join_date`, `bonus`, `type`) VALUES ('115', 'sita', '10', '7722', '1000', '2022-09-08', '2000', 'regular');
INSERT INTO `day3`.`pms_employee_details` (`emp_id`, `emp_name`, `department_id`, `manager_code`, `salary`, `join_date`, `bonus`, `type`) VALUES ('116', 'john', '30', '7733', '5000', '2022-09-08', '2000', 'contract');

SELECT * FROM day3.pms_employee_details where department_id = 10;
SELECT * FROM day3.pms_employee_details where department_id = 10 and type='regular';
SELECT * FROM day3.pms_employee_details where manager_code=7722;
SELECT * FROM day3.pms_employee_details where emp_name not like '%y';
SELECT * FROM day3.pms_employee_details where type like '%leader';
SELECT * FROM day3.pms_employee_details where type='manager' and department_id != 10;
SELECT * FROM day3.pms_employee_details where (bonus*3) = salary;
SELECT * FROM day3.pms_employee_details where department_id='';
SELECT * FROM day3.pms_employee_details where type='regular';
SELECT type as RP FROM day3.pms_employee_details where type='regular';
SELECT * FROM day3.pms_employee_details where (salary>=10000 and salary <=20000);

ALTER TABLE `day3`.`pms_employee_details` 
ADD COLUMN `designation` VARCHAR(45) NULL AFTER `type`;

INSERT INTO `day3`.`pms_employee_details` (`emp_id`, `emp_name`, `department_id`, `manager_code`, `salary`, `join_date`, `bonus`, `type`, `designation`) VALUES ('118', 'raja', '20', '7733', '10000', '2022-09-08', '3000', 'contract', 'team leader');
UPDATE `day3`.`pms_employee_details` SET `type` = 'regular', `designation` = 'team leader' WHERE (`emp_id` = '117');

SELECT * FROM day3.pms_employee_details where designation='team leader' and salary = 10000 and type = 'contract';
SELECT * FROM day3.pms_employee_details where department_id !=40;
SELECT * FROM day3.pms_employee_details where bonus=0;

INSERT INTO `day3`.`pms_employee_details` (`emp_id`, `emp_name`, `department_id`, `salary`, `join_date`, `bonus`, `type`) VALUES ('119', 'kanan', '10', '1000', '2022-09-08', '3000', 'regular');
SELECT * FROM day3.pms_employee_details where manager_code IS NULL;
SELECT * FROM day3.pms_employee_details;


