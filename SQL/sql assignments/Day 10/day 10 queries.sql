# 2
DELIMITER $$
CREATE PROCEDURE GetProductDetail(IN productname varchar(45))
BEGIN
	select * from day3.pms_product where productname = product_name;
END $$
DELIMITER ;

call GetProductDetail('dairy milk');

drop procedure GetProductDetail;

# 3
DELIMITER $$
CREATE PROCEDURE GetProductDetail(IN productname varchar(45))
BEGIN
	select * from day3.pms_product where productname = product_name;
END
$$ DELIMITER ;

call GetProductDetail('dairy milk');

# 3

SELECT  * FROM day3.`pms_manufacturing`;
SELECT * FROM day3.pms_product;

delimiter $$
create procedure Max_validity() begin 
select 
  p.product_name, 
  max( DATEDIFF(m.prod_expiry_date, m.prod_manu_date) ) as Max_validity_product 
from day3.`pms_manufacturing` m 
  join day3.pms_product p on m.product_id = p.product_id;
end
$$ delimiter;

call Max_validity;
drop procedure Max_validity;

# 4
DELIMITER $$ 
CREATE PROCEDURE sum_of_even_and_odd_numbers()
BEGIN
declare x INT;
declare sum int;
declare a int;
SET 
  x = 1;
set 
  a = 0;
set 
  sum = 0;
loop_label : LOOP IF x = 100 THEN LEAVE loop_label;
END IF;
set a = a + x;
IF (x mod 2) THEN iterate loop_label;
ELSE 
SET
  sum = sum + x;
END IF;
END LOOP;
SELECT sum + a;
END
$$ Delimiter;

call  sum_of_even_and_odd_numbers();
drop procedure sum_of_even_and_odd_numbers();

# 5
DELIMITER $$
CREATE PROCEDURE check_value(IN n int)
BEGIN
if(n < 0) then 
select ('THIS IS NEGATIVE') as THE_OUTPUT;
else 
select ('this is POSITIVE') as THE_OUTPUT;
END IF;
END
$$ DELIMITER

call check_value(19);
DROP PROCEDURE `day3`.`check_value`;

# 6
DELIMITER $$
CREATE PROCEDURE Highest_Number(IN n int,IN M int, IN S int, OUT out_value INT)
BEGIN
if( n > m and n > s ) then select n;
ELSEIF( m > n and m > s ) then select m;
else select s;
END IF;
END
$$ DELIMITER;

call HIGHEST_NUMBER(10,20,30, @out_value);
DROP PROCEDURE `day3`.`Highest_Number`;

# 7

DELIMITER $$
create procedure palindrome(IN n int)
begin 
declare m, r, rev,temp int;
set r := 0;
set m := n;
while(n > 0) do 
set r := n % 10;
set temp :=((temp * 10)+ r);
set n := n / 10;
end while;
set rev := temp;
if (m = rev) then 
select 
  ('number is palindrome') PALINDROME_OR_NOT;
else 
select 
  ('number is NOT palindrome') as PALINDROME_OR_NOT;
end if;
end
$$ DELIMITER;

call palindrome(2002);
drop procedure palindrome;

# 8
DELIMITER $$
create procedure validate(
  IN user_name varchar(40)
)
begin
if (user_name REGEXP '^[A-Za-z\.\]+$') then select ("valid name");
else select ("not a valid name");
end if;
END
$$ DELIMITER;

call validate("Ragul");
drop procedure validate

# 9

DELIMITER $$
create procedure Prime_Number_check(
    IN n int, 
    OUT result varchar(200)
  )
Begin declare j,i,f int;
set j := 2;
set result := ' ';
while(j < n) do 
set 
  i := 2;
set 
  f := 0;
while(i <= j) do if(j % i = 0) then 
set f := f + 1;
end if;
set 
  i := i + 1;
end while;
if (f = 1) then 
set 
  result := concat(result, j, ', ');
end if;
set 
  j := j + 1;
end while;
select substr(@result, 1) as The_Prime_Numbers_Upto_100;
End
$$ DELIMITER

call Prime_Number_check(100, @result);
DROP PROCEDURE `day3`.`Prime_Number_check`;

# 10
DELIMITER $$
create procedure item_details_by_invoice(IN invoice_num INT)
begin 
SELECT i.invoice_id, i.item_code, i.invoice_date, i.customer_name, info.quantity, info.itemname, info.price
 FROM day3.invoicetable i join day3.item_infotable info 
 where invoiceno = invoice_num;
END
$$ DELIMITER;

call item_details_by_invoice(1234)
DROP PROCEDURE `day3`.`item_details_by_invoice`;

# 11
DELIMITER $$
create procedure item_quantity_check()
begin
declare quant int;
select quantity into quant from day3.item_details where item_code = 10;
if(quant > 0) then insert into day3.item_infotable values (10, 1234, 20, 'dairy milk', 75);
end if;
select * from day3.item_infotable;
END
 $$ DELIMITER ;

call item_quantity_check;
DROP PROCEDURE `day3`.`item_quantity_check`;