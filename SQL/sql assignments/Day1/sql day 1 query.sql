CREATE TABLE `management`.`invoice_details` (
  `Invoice_no` INT NOT NULL,
  `Invoice_date` VARCHAR(45) NULL,
  `Item_code` VARCHAR(45) NULL,
  `item_name` VARCHAR(45) NULL,
  `quantity` VARCHAR(45) NOT NULL  CHECK (quantity>=1),
  `price` VARCHAR(45) NOT NULL DEFAULT 0,
  `customer_name` VARCHAR(45) NOT NULL,
  `customer_address` VARCHAR(45) NOT NULL,
  `state_name` VARCHAR(45) NOT NULL,
  `city_name` VARCHAR(45) NOT NULL,
  `invoice_detailscol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Invoice_no`),
  UNIQUE INDEX `item_name_UNIQUE` (`item_name` ASC) VISIBLE,
  UNIQUE INDEX `Item_code_UNIQUE` (`Item_code` ASC) VISIBLE);
SELECT * FROM management.invoice_details;
CREATE TABLE `management`.`item_details` (
  `item_code` INT NOT NULL,
  `item_name` VARCHAR(45) NOT NULL,
  `price` VARCHAR(45) NOT NULL DEFAULT 0,
  PRIMARY KEY (`item_code`));
ALTER TABLE `management`.`invoice_details` 
CHANGE COLUMN `Item_code` `Item_code` INT NULL DEFAULT NULL ,
CHANGE COLUMN `quantity` `quantity` INT NOT NULL ,
CHANGE COLUMN `price` `price` INT NOT NULL DEFAULT '0';
ALTER TABLE `management`.`invoice_details` 
ADD CONSTRAINT `Item_code`
  FOREIGN KEY (`Item_code`)
  REFERENCES `management`.`item_details` (`item_name`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
ALTER TABLE `management`.`invoice_details` 
ADD CONSTRAINT `Item_code`
  FOREIGN KEY (`Item_code`)
  REFERENCES `management`.`invoice_details` (`Item_code`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
CREATE TABLE `management`.`employee` (
  `Ename` INT NOT NULL,
  `join_date` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Ename`));
INSERT INTO `management`.`employee` (`Ename`) VALUES ('ragul');
INSERT INTO `management`.`employee` (`Ename`, `join_date`) VALUES ('ragul', '2002-02-22');
INSERT INTO `management`.`employee` (`Ename`) VALUES ('ragul');
SELECT * FROM management.employee;
INSERT INTO `management`.`employee` (`Ename`) VALUES ('SID');
INSERT INTO `management`.`employee` (`Ename`) VALUES ('ragul');
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
