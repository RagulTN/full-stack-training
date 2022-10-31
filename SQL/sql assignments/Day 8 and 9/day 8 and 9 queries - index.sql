CREATE TABLE `day8`.`students` (
  `student_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `surname` VARCHAR(45) NULL,
  `birrthdate` DATE NULL,
  `gender` VARCHAR(45) NULL,
  `class` INT NULL,
  `point` INT NULL,
  PRIMARY KEY (`student_id`));

CREATE TABLE `day8`.`books` (
  `book_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `pagecount` VARCHAR(45) NULL,
  `point` INT NULL,
  `author_id` INT NULL,
  `type_id` INT NULL,
  PRIMARY KEY (`book_id`));

CREATE TABLE `day8`.`borrows` (
  `borrow_id` INT NOT NULL,
  `student_id` INT NULL,
  `book_id` INT NULL,
  `taken_date` DATE NULL,
  `brought_date` DATE NULL,
  PRIMARY KEY (`borrow_id`));

CREATE TABLE `day8`.`authors` (
  `author_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `surname` VARCHAR(45) NULL,
  PRIMARY KEY (`author_id`));

CREATE TABLE `day8`.`types` (
  `types_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`types_id`));

CREATE TABLE `day8`.`artists` (
  `artist_id` INT NOT NULL,
  `artist_name` VARCHAR(45) NULL,
  PRIMARY KEY (`artist_id`));

INSERT INTO `day8`.`students` (`student_id`, `name`, `surname`, `birrthdate`, `gender`, `class`, `point`) VALUES ('1', 'ragul', 'sid', '2022-09-09', 'male', '10', '9');
INSERT INTO `day8`.`students` (`student_id`, `name`, `surname`, `birrthdate`, `gender`, `class`, `point`) VALUES ('2', 'john', 'smith', '2022-09-10', 'male', '9', '8');
INSERT INTO `day8`.`students` (`student_id`, `name`, `surname`, `birrthdate`, `gender`, `class`, `point`) VALUES ('3', 'sanjana', 'mithra', '2022-09-08', 'female', '9', '9');
INSERT INTO `day8`.`students` (`student_id`, `name`, `surname`, `birrthdate`, `gender`, `class`, `point`) VALUES ('4', 'elon', 'musk', '2022-09-10', 'male', '9', '8');

ALTER TABLE `day8`.`borrows` 
ADD INDEX `student_id_idx` (`student_id` ASC) VISIBLE,
ADD INDEX `book_id_idx` (`book_id` ASC) VISIBLE;
;

show index from day8.books;

ALTER TABLE `day8`.`borrows` 
ADD CONSTRAINT `student_id`
  FOREIGN KEY (`student_id`)
  REFERENCES `day8`.`students` (`student_id`),
ADD CONSTRAINT `book_id`
  FOREIGN KEY (`book_id`)
  REFERENCES `day8`.`books` (`book_id`);
  
ALTER TABLE `day8`.`books` 
ADD INDEX `author_id_idx` (`author_id` ASC) VISIBLE,
ADD INDEX `type_id_idx` (`type_id` ASC) VISIBLE;
;
ALTER TABLE `day8`.`books` 
ADD CONSTRAINT `author_id`
  FOREIGN KEY (`author_id`)
  REFERENCES `day8`.`authors` (`author_id`),
ADD CONSTRAINT `type_id`
  FOREIGN KEY (`type_id`)
  REFERENCES `day8`.`types` (`types_id`);

ALTER TABLE `day8`.`albums` 
ADD INDEX `artist_id_idx` (`artist_id` ASC) VISIBLE,
ADD INDEX `genre_id_idx` (`genre_id` ASC) VISIBLE;
;
ALTER TABLE `day8`.`albums` 
ADD CONSTRAINT `artist_id`
  FOREIGN KEY (`artist_id`)
  REFERENCES `day8`.`artists` (`artist_id`),
ADD CONSTRAINT `genre_id`
  FOREIGN KEY (`genre_id`)
  REFERENCES `day8`.`genre` (`genre_id`);

ALTER TABLE `day8`.`genre` 
ADD COLUMN `parent_id` INT NULL AFTER `genre_name`,
ADD INDEX `parent_id_idx` (`parent_id` ASC) VISIBLE;
;
ALTER TABLE `day8`.`genre` 
ADD CONSTRAINT `parent_id`
  FOREIGN KEY (`parent_id`)
  REFERENCES `day8`.`genre` (`genre_id`);

CREATE TABLE `day8`.`publishers` (
  `publisher_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`publisher_id`));

CREATE TABLE `day8`.`book_genre` (
  `book_id` INT NOT NULL,
  `genre_id` INT NULL,
  PRIMARY KEY (`book_id`),
  UNIQUE INDEX `genre_id_UNIQUE` (`genre_id` ASC) VISIBLE);

CREATE TABLE `day8`.`book_authors` (
  `book_id` INT NOT NULL,
  `author_id` INT NULL,
  PRIMARY KEY (`book_id`));

#1
create index student_id on day8.students(student_id);
create index student_name on day8.students (name ASC); 
show index from day8.students;

create index borrow_id on day8.borrows(borrow_id);
show index from day8.borrows;

create index book_id on day8.books(book_id);
create index book_name on day8.books (name ASC); 
show index from day8.books;

drop index book_name on day8.students;

create index author_id on day8.authors(author_id);
create index name on day8.authors (name ASC); 
show index from day8.authors;

create index type_id on day8.types(types_id);
create index name on day8.types (name ASC); 
show index from day8.types;

#2
create index album_id on day8.albums(album_id);
create index album_name on day8.albums (album_name ASC); 
show index from day8.albums;

create index genre on day8.genre(genre_id);
create index genre_name on day8.genre (genre_name ASC); 
show index from day8.genre;

create index artist_id on day8.artists(artist_id);
create index artist_name on day8.artists(artist_name ASC); 
show index from day8.artists;


#3
create index genre_id on day8.genre(genre_id); 
show index from day8.genre;



# ---------------------- Day 9----------------------------

CREATE TABLE `day8`.`lms_members` (
  `member_id` INT NOT NULL,
  `member_name` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `date_register` VARCHAR(45) NULL,
  `date_expire` DATE NULL,
  `membership_status` VARCHAR(45) NULL,
  PRIMARY KEY (`member_id`));
  
CREATE TABLE `day8`.`pms_book_details` (
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
  
CREATE TABLE `day8`.`lms_supplier_details` (
  `supplier_id` INT NOT NULL,
  `supplier_name` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `contact` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`supplier_id`));
  
CREATE TABLE `day8`.`lms_book_issue` (
  `book_issue_no` INT NOT NULL,
  `book_title` VARCHAR(45) NULL,
  `category` VARCHAR(45) NULL,
  `member_id` INT NULL,
  `book_code` INT NULL,
  `date_issue` DATE NULL,
  `date_return` DATE NULL,
  `date_returned` DATE NULL,
  `fine_range` INT NULL,
  `author` VARCHAR(45) NULL,
  `price` INT NULL,
  PRIMARY KEY (`book_issue_no`));

#1
create view book_names_and_supplier as 
select
	b.book_code,
    b.book_title,
    b.supplier_name,
    b.publish_date,
    s.email
from
    day3.pms_book_details b join day3.lms_supplier_details s on b.supplier_id = s.supplier_id;
    
select * from book_names_and_supplier;

#2
create view members_fine as
select m.member_id,m.member_name,m.city from day3.lms_book_issue i join 
day3.lms_members m on i.member_id = m.member_id where DATEDIFF(i.date_returned, i.date_return)>5;

select * from members_fine;

#3
create view book_issues as
select book_code, book_title, supplier_name from day3.pms_book_details where supplier_name='varun ABC';

select * from book_issues;

#4
create view Java_Books as
select b.book_title, m.member_id, m.member_name, m.city from  day3.pms_book_details b join day3.lms_members m
on b.member_id = m.member_id where book_title='java';


select * from Java_Books; 

#5
create view May_Month as select book_code, book_title, category, publication, publish_date, price_num from day3.pms_book_details
where month(publish_date)=5;
 
select * from May_Month;
 
#6
create view Prentice_hall as 
select book_code, book_title, category, publication as NO_OF_BOOKS, publish_date, price_num from day3.pms_book_details 
where publication='Prentice hall';

select * from  Prentice_hall;

#7
create view April_month as select b.book_code, b.book_title from
day3.pms_book_details b join day3.lms_book_issue i on b.member_id = i.member_id
where date_issue='2012-04-01';

select * from April_month;
 
#8
create view member_status as select member_id,member_name,date_register,membership_status from day3.lms_members
where date_register <'2012-03-01'  and membership_status='temporary';

select * from member_status;

#9
create view city_names as 
select member_id,member_name 'Name', city from day3.lms_members where city='chennai' or city='delhi';

select * from city_names;

#10
create view  Book_details as
select CONCAT(`book_title`,' is written by ', group_concat(`author`)) as Book_and_authors from day3.pms_book_details group by book_title;

select * from Book_details ;
    
	