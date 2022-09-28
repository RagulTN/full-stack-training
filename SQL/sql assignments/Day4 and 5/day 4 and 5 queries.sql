CREATE TABLE `day3`.`pms_manufacturing` (
  `manufacture_id` INT NOT NULL,
  `product_id` INT NULL,
  `unit_id` INT NULL,
  `quantity` INT NULL,
  `availbility` VARCHAR(45) NULL,
  `prod_manu_date` DATE NULL,
  `prod_expiry_date` DATE NULL,
  PRIMARY KEY (`manufacture_id`));

CREATE TABLE `day3`.`department_details` (
  `department_id` INT NOT NULL,
  `department_name` VARCHAR(45) NULL,
  PRIMARY KEY (`department_id`));
  
INSERT INTO `day3`.`department_details` (`department_id`, `department_name`) VALUES ('10', 'dev');
INSERT INTO `day3`.`department_details` (`department_id`, `department_name`) VALUES ('20', 'design');
INSERT INTO `day3`.`department_details` (`department_id`, `department_name`) VALUES ('30', 'team leader');

ALTER TABLE `day3`.`pms_employee_details` 
ADD CONSTRAINT `department_id`
  FOREIGN KEY (`department_id`)
  REFERENCES `day3`.`department_details` (`department_name`);


INSERT INTO `day3`.`pms_manufacturing` (`manufacture_id`, `product_id`, `unit_id`, `quantity`, `availbility`, `prod_manu_date`, `prod_expiry_date`) VALUES ('100', '111', '1111', '10', 'yes', '2022-09-14', '2023-09-14');
INSERT INTO `day3`.`pms_manufacturing` (`manufacture_id`, `product_id`, `unit_id`, `quantity`, `availbility`, `prod_manu_date`, `prod_expiry_date`) VALUES ('101', '112', '1112', '15', 'yes', '2022-08-14', '2022-10-14');
INSERT INTO `day3`.`pms_manufacturing` (`manufacture_id`, `product_id`, `unit_id`, `quantity`, `availbility`, `prod_manu_date`, `prod_expiry_date`) VALUES ('102', '113', '1113', '20', 'yes', '2022-10-14', '2022-12-14');
INSERT INTO `day3`.`pms_manufacturing` (`manufacture_id`, `product_id`, `unit_id`, `quantity`, `availbility`, `prod_manu_date`, `prod_expiry_date`) VALUES ('103', '114', '1114', '23', 'yes', '2022-09-14', '2022-12-14');

SELECT * FROM day3.pms_manufacturing where prod_expiry_date<='2022-12-14';
SELECT product_id, prod_manu_date, prod_expiry_date FROM day3.pms_manufacturing;

ALTER TABLE `day3`.`pms_employee_details` 
ADD COLUMN `commision` INT NULL AFTER `designation`;

SELECT emp_id, emp_name, designation,salary, format(((salary*12+salary*(7.5/100))), 0) as yearly_salary FROM day3.pms_employee_details;


CREATE TABLE `day3`.`pms_book_details` (
  `book_code` INT NOT NULL,
  `book_title` VARCHAR(45) NULL,
  `category` VARCHAR(45) NULL,
  `author` VARCHAR(45) NULL,
  `publication` VARCHAR(45) NULL,
  `publish_date` DATE NULL,
  `book_edition` INT NULL,
  `price_num` INT NULL,
  `rack_num` INT NULL,
  `date_arrival` DATE NULL,
  `supplier_id` INT NULL,
  `supplier_name` VARCHAR(45) NULL,
  PRIMARY KEY (`book_code`));

INSERT INTO `day3`.`pms_book_details` (`book_code`, `book_title`, `category`, `author`, `publication`, `publish_date`, `book_edition`, `price_num`, `rack_num`, `date_arrival`, `supplier_id`, `supplier_name`) VALUES ('1001', 'sun is a star', 'development', 'john', 'star publications', '2020-09-09', '2', '200', '15', '2022-09-08', '12', 'sanjay');
INSERT INTO `day3`.`pms_book_details` (`book_code`, `book_title`, `category`, `author`, `publication`, `publish_date`, `book_edition`, `price_num`, `rack_num`, `date_arrival`, `supplier_id`, `supplier_name`) VALUES ('1002', 'show your work', 'developent', 'austin', 'sun publications', '2020-06-04', '5', '150', '12', '2022-09-08', '13', 'pradeep');
INSERT INTO `day3`.`pms_book_details` (`book_code`, `book_title`, `category`, `author`, `publication`, `publish_date`, `book_edition`, `price_num`, `rack_num`, `date_arrival`, `supplier_id`, `supplier_name`) VALUES ('1003', 'harry potter', 'story', 'rowling', 'halow sons', '2020-09-07', '5', '300', '14', '2022-09-08', '11', 'varun');
INSERT INTO `day3`.`pms_book_details` (`book_code`, `book_title`, `category`, `author`, `publication`, `publish_date`, `book_edition`, `price_num`, `rack_num`, `date_arrival`, `supplier_id`, `supplier_name`) VALUES ('1004', 'ice age', 'fantasy', 'jk', 'jk publications', '2019-08-16', '3', '120', '13', '2022-04-13', '14', 'sanjay');

CREATE TABLE `day3`.`lms_supplier_details` (
  `supplier_id` INT NOT NULL,
  `supplier_name` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `contact` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`supplier_id`));

INSERT INTO `day3`.`lms_supplier_details` (`supplier_id`, `supplier_name`) VALUES ('11', 'varun');
INSERT INTO `day3`.`lms_supplier_details` (`supplier_id`, `supplier_name`) VALUES ('12', 'elon');
INSERT INTO `day3`.`lms_supplier_details` (`supplier_id`, `supplier_name`) VALUES ('13', 'pradeep');
INSERT INTO `day3`.`lms_supplier_details` (`supplier_id`, `supplier_name`) VALUES ('14', 'sanjay');

UPDATE `day3`.`lms_supplier_details` SET `contact` = '123456798', `email` = 'varun@gmail.com' WHERE (`supplier_id` = '11');
UPDATE `day3`.`lms_supplier_details` SET `contact` = '123456798', `email` = 'elon@gmail.com' WHERE (`supplier_id` = '12');
UPDATE `day3`.`lms_supplier_details` SET `contact` = '123456798', `email` = 'sanjay@gmail.com' WHERE (`supplier_id` = '14');
UPDATE `day3`.`lms_supplier_details` SET `contact` = '123456798', `email` = 'pradeep@gmail.com' WHERE (`supplier_id` = '13');


ALTER TABLE `day3`.`pms_book_details` 
ADD INDEX `supplier_id_idx` (`supplier_id` ASC) VISIBLE;
;
ALTER TABLE `day3`.`pms_book_details` 
ADD CONSTRAINT `supplier_id`
  FOREIGN KEY (`supplier_id`)
  REFERENCES `day3`.`lms_supplier_details` (`supplier_id`);
  
SELECT book_code,book_title,author FROM day3.pms_book_details where author like 'p%';
SELECT book_title,author,publication FROM day3.pms_book_details where price_num>500 and supplier_name='varun ABC';
SELECT * FROM day3.pms_book_details order by price_num;
SELECT upper(book_title),upper(category) FROM day3.pms_book_details;

CREATE TABLE `day3`.`lms_members` (
  `member_id` INT NOT NULL,
  `member_name` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `date_register` VARCHAR(45) NULL,
  `date_expire` DATE NULL,
  `membership_status` VARCHAR(45) NULL,
  PRIMARY KEY (`member_id`));

INSERT INTO `day3`.`lms_members` (`member_id`, `member_name`, `city`, `date_register`, `date_expire`, `membership_status`) VALUES ('001', 'john', 'chennai', '2022-09-08', '2022-12-12', 'active');
INSERT INTO `day3`.`lms_members` (`member_id`, `member_name`, `city`, `date_register`, `date_expire`, `membership_status`) VALUES ('002', 'elon', 'coimbatore', '2022-09-07', '2022-12-12', 'active');
INSERT INTO `day3`.`lms_members` (`member_id`, `member_name`, `city`, `date_register`, `date_expire`, `membership_status`) VALUES ('003', 'sanjay', 'madurai', '2022-09-08', '2022-12-12', 'active');
INSERT INTO `day3`.`lms_members` (`member_id`, `member_name`, `city`, `date_register`, `date_expire`, `membership_status`) VALUES ('004', 'varun', 'nagercoil', '2022-08-08', '2022-12-12', 'active');

SELECT * FROM day3.lms_members where date_expire>'2013-04-04';
SELECT supplier_id,supplier_name,coalesce(contact, email) as 'CONTACT DETAILS' FROM day3.lms_supplier_details;
SELECT * FROM day3.pms_book_details where publication='prentice hall' and year(publish_date)='1999';


#Day 5 assesment
SELECT * FROM day3.pms_manufacturing where prod_expiry_date<'2012-10-31';
SELECT product_id,max(quantity) FROM day3.pms_manufacturing ;
SELECT product_id, datediff(prod_expiry_date, prod_manu_date) as 'Available days' FROM day3.pms_manufacturing;
                  
#5 6
SELECT category,count(category) FROM day3.pms_book_details group by(category) having count(category) order by count(category);
SELECT category,count(category) FROM day3.pms_book_details group by(category) having count(category)>2;

#joins prblm 7
SELECT b.book_code,b.book_title,s.supplier_name,b.author,b.price_num FROM day3.pms_book_details b join lms_supplier_details s on b.supplier_id=s.supplier_id
 having price_num in (select max(price_num) from day3.pms_book_details );
 
SELECT * FROM day3.lms_members where membership_status='temporary' order by(city);

# 9 10 11 12 13
SELECT product_id, rank() over( order by product_id) as rank_no FROM day3.pms_manufacturing;

#10- salesregion which has affected the maximum sales
SELECT sales_region,sum(sales_amt) as sales_art from day3.pms_sales group by sales_region order by sales_region desc limit 1;

#11- information about the department which has the maximum number of employees
SELECT * FROM day3.department_details;
select department_name, max(mycount)
from (select d.department_name,count(d.department_name) as mycount from
day3.pms_employee_details e join day3.department_details d on e.department_id = d.department_id 
group by department_name order by department_name) count;

#12 - information about the type of account
INSERT INTO `day3`.`emp_account` (`acc_no`, `acc_type`, `acc_opendate`) VALUES ('100', 'regular', '2022-04-25');
INSERT INTO `day3`.`emp_account` (`acc_no`, `acc_type`, `acc_opendate`) VALUES ('101', 'joint', '2022-04-25');
INSERT INTO `day3`.`emp_account` (`acc_no`, `acc_type`, `acc_opendate`) VALUES ('102', 'regular', '2022-04-25');
INSERT INTO `day3`.`emp_account` (`acc_no`, `acc_type`, `acc_opendate`) VALUES ('103', 'joint', '2022-04-25');
INSERT INTO `day3`.`emp_account` (`acc_no`, `acc_type`, `acc_opendate`) VALUES ('104', 'regular', '2022-04-25');

SELECT * FROM day3.emp_account;

select acc_type,max(same_account) from (select acc_type,count(acc_type) as same_account from day3.emp_account group by acc_type) account;

#13- information about the product which has the maximum profit margin
ALTER TABLE `day3`.`pms_product` 
ADD COLUMN `cost_price` INT NULL AFTER `department_id`,
ADD COLUMN `selling_price` INT NULL AFTER `cost_price`;

SELECT * FROM day3.pms_product;

#13
SELECT *, selling_price-cost_price as 'max profit' FROM day3.pms_product where selling_price-cost_price in 
(select max(selling_price-cost_price) from day3.pms_product);

CREATE TABLE `day3`.`sales` (
  `sales_id` INT NOT NULL,
  `sales_region` VARCHAR(45) NULL,
  `sales_person` VARCHAR(45) NULL,
  `sales_amt` INT NULL,
  PRIMARY KEY (`sales_id`));
  
CREATE TABLE `day3`.`emp_account`(
  `acc_no` INT NOT NULL,
  `acc_type` VARCHAR(45) NULL,
  `acc_opendate` DATE NULL,
  PRIMARY KEY (`acc_no`));

SELECT manufacture_id, product_id, unit_id FROM day3.pms_manufacturing ;

SELECT a.* FROM day3.pms_employee_details a inner join (select emp_id, max(designation) designation from day3.pms_employee_details
 group by(emp_id));

SELECT * FROM day3.department_details WHERE department_id NOT IN (select department_id FROM day3.employee_details);

