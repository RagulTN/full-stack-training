

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
END $$
DELIMITER ;

call GetProductDetail('dairy milk');