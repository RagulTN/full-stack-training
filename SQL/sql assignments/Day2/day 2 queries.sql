CREATE TABLE `management`.`customer` (
  `customer_id` INT NOT NULL,
  `customer_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `ordered_project_id` INT NOT NULL,
  `project_name` VARCHAR(45) NULL,
  `paying_company_id` INT NOT NULL,
  `company_name` VARCHAR(45) NULL,
  PRIMARY KEY (`customer_id`));
ALTER TABLE `management`.`customer` 
CHANGE COLUMN `ordered_project_id` `fk_ordered_project_id` INT NOT NULL ,
CHANGE COLUMN `paying_company_id` `fk_paying_company_id` INT NOT NULL;
CREATE TABLE `management`.`projects` (
  `project_id` INT NOT NULL,
  `project_type` VARCHAR(45) NOT NULL,
  `project_name` VARCHAR(45) NOT NULL,
  `fk_dev_assigned_id` INT NOT NULL,
  `dev_name` VARCHAR(45) NULL,
  `fk_specified_com_id` INT NOT NULL,
  `company_name` VARCHAR(45) NULL,
  PRIMARY KEY (`project_id`));
CREATE TABLE `management`.`developer` (
  `developer_id` INT NOT NULL,
  `developer_name` VARCHAR(45) NOT NULL,
  `hourly_rates` VARCHAR(45) NOT NULL,
  `tech_working` VARCHAR(45) NOT NULL,
  `fk_project_working` INT NOT NULL,
  `project_name` VARCHAR(45) NULL,
  `fk_company_working_id` INT NOT NULL,
  PRIMARY KEY (`developer_id`));
SELECT * FROM management.company;
ALTER TABLE `management`.`company` 
DROP COLUMN `companycol2`,
DROP COLUMN `companycol1`,
DROP COLUMN `companycol`,
ADD COLUMN `project_name` VARCHAR(45) NULL AFTER `fk_project_id`,
CHANGE COLUMN `developers_id` `fk_developers_id` INT NOT NULL ,
CHANGE COLUMN `pay_customer_id` `fk_pay_customer_id` INT NOT NULL ,
CHANGE COLUMN `project_id` `fk_project_id` INT NOT NULL;
ALTER TABLE `management`.`company` 
ADD CONSTRAINT `developers_id`
  FOREIGN KEY (`fk_developers_id`)
  REFERENCES `management`.`developer` (`developer_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `pay_customer_id`
  FOREIGN KEY (`fk_pay_customer_id`)
  REFERENCES `management`.`customer` (`customer_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `project_id`
  FOREIGN KEY (`fk_project_id`)
  REFERENCES `management`.`projects` (`project_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
ALTER TABLE `management`.`company` 
ADD INDEX `developers_id_idx` (`fk_developers_id` ASC) VISIBLE,
ADD INDEX `pay_customer_id_idx` (`fk_pay_customer_id` ASC) VISIBLE,
ADD INDEX `project_id_idx` (`fk_project_id` ASC) VISIBLE;
SELECT * FROM management.customer;
ALTER TABLE `management`.`customer` 
ADD CONSTRAINT `fk_ordered_project_id`
  FOREIGN KEY (`fk_ordered_project_id`)
  REFERENCES `management`.`projects` (`project_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_paying_company_id`
  FOREIGN KEY (`fk_paying_company_id`)
  REFERENCES `management`.`company` (`company_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
SELECT * FROM management.developer;
ALTER TABLE `management`.`developer` 
ADD CONSTRAINT `fk_project_working`
  FOREIGN KEY (`fk_project_working`)
  REFERENCES `management`.`projects` (`project_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_company_working_id`
  FOREIGN KEY (`fk_company_working_id`)
  REFERENCES `management`.`company` (`company_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
ALTER TABLE `management`.`developer` 
ADD INDEX `fk_project_working_idx` (`fk_project_working` ASC) VISIBLE,
ADD INDEX `fk_company_working_id_idx` (`fk_company_working_id` ASC) VISIBLE;
SELECT * FROM management.projects;
ALTER TABLE `management`.`projects` 
ADD INDEX `fk_dev_assigned_id_idx` (`fk_dev_assigned_id` ASC) VISIBLE,
ADD INDEX `fk_specified_com_id_idx` (`company_name` ASC) VISIBLE;
ALTER TABLE `management`.`projects` 
ADD INDEX `fk_dev_assigned_id_idx` (`fk_dev_assigned_id` ASC, `fk_specified_com_id` ASC) VISIBLE,
ADD INDEX `fk_specified_com_id_idx` (`fk_specified_com_id` ASC) VISIBLE;
SELECT * FROM management.projects;
ALTER TABLE `management`.`projects` 
ADD CONSTRAINT `fk_dev_assigned_id`
  FOREIGN KEY (`fk_dev_assigned_id`)
  REFERENCES `management`.`developer` (`developer_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_specified_com_id`
  FOREIGN KEY (`fk_specified_com_id`)
  REFERENCES `management`.`company` (`company_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
SELECT * FROM management.books_borrowed;
ALTER TABLE `management`.`books_borrowed` 
ADD INDEX `fk_book_id_idx` (`fk_book_id` ASC) VISIBLE,
ADD INDEX `member_borrowed_id_idx` (`member_borrowed_id` ASC) VISIBLE;
SELECT * FROM management.publisher;
ALTER TABLE `management`.`publisher` 
ADD CONSTRAINT `fk_published_books_id`
  FOREIGN KEY (`fk_published_books_id`)
  REFERENCES `management`.`books` (`book_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
ALTER TABLE `management`.`publisher` 
ADD INDEX `fk_published_books_id_idx` (`fk_published_books_id` ASC) VISIBLE;


CREATE TABLE `management`.`employee_details` (
  `employee_id` INT NOT NULL AUTO_INCREMENT = 1000,
  `emp_name` VARCHAR(45) NOT NULL,
  `department` VARCHAR(45) NOT NULL,
  `designation` VARCHAR(45) NULL,
  `date_of_join` DATE NULL DEFAULT sysdate(),
  `salary` INT NULL,
  PRIMARY KEY (`employee_id`));

CREATE TABLE `management`.`orders` (
  `order_id` INT NOT NULL,
  `prod_name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NOT NULL,
  `orderdate` DATE NOT NULL,
  `quantity` INT NOT NULL CHECK (quantity>0),
  PRIMARY KEY (`order_id`));

ALTER TABLE `management`.`employee_details` 
ADD COLUMN `qualification_id` INT NOT NULL AFTER `salary`,
ADD COLUMN `personal_id` INT NOT NULL AFTER `qualification_id`,
ADD UNIQUE INDEX `qualification_id_UNIQUE` (`qualification_id` ASC) VISIBLE,
ADD UNIQUE INDEX `personal_id_UNIQUE` (`personal_id` ASC) VISIBLE;
;

CREATE TABLE `management`.`qualification` (
  `qualification_id` INT NOT NULL,
  `degree` VARCHAR(45) NOT NULL,
  `passed_out_year` INT NULL,
  `college` VARCHAR(45) NULL,
  PRIMARY KEY (`qualification_id`, `degree`));

CREATE TABLE `management`.`personal_details` (
  `personal_id` INT NOT NULL,
  `fathers_name` VARCHAR(45) NULL,
  `mothers_name` VARCHAR(45) NULL,
  `married` BOOLEAN NULL);
  
ALTER TABLE `management`.`employee_details` 
ADD CONSTRAINT `qualification_id`
FOREIGN KEY (`qualification_id`)
REFERENCES `management`.`qualification` (`qualification_id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
ADD CONSTRAINT `personal_id`
FOREIGN KEY (`personal_id`)
REFERENCES `management`.`personal_details` (`personal_idd`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;


INSERT INTO `management`.`qualification` (`qualification_id`, `degree`, `passed_out_year`, `college`) VALUES ('1912021', 'cse', '2023', 'nec');
INSERT INTO `management`.`personal_details` (`personal_idd`, `fathers_name`, `mothers_name`, `married`) VALUES ('1234', 'thiraviam', 'neela', '0');
INSERT INTO `management`.`employee_details` (`employee_id`, `emp_name`, `department`, `designation`, `date_of_join`, `salary`, `qualification_id`, `personal_id`) VALUES ('1', 'ragul', 'cse', 'TL', '2022-02-02', '70000', '1912021', '1234');
INSERT INTO `management`.`employee_details` (`employee_id`, `emp_name`, `department`, `designation`, `date_of_join`, `salary`, `qualification_id`, `personal_id`) VALUES ('1', 'SID', 'cse', 'TL', sysdate(), '70000', '1912021', '1234');
INSERT INTO `management`.`employee_details` (`emp_name`, `department`, `designation`, `date_of_join`, `salary`, `qualification_id`, `personal_id`) VALUES ('elon', 'cse', 'TL', sysdate(), '70000', '22', '123');
INSERT INTO `management`.`orders` (`order_id`, `prod_name`, `description`, `orderdate`, `quantity`) VALUES ('1', 'phone', 'smartphone', '2022-09-15', '2');
