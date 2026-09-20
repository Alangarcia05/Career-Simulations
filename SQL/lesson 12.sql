-- customer definition

CREATE TABLE customer2 (
	c_id INTEGER,
	c_name VARCHAR(50),
	c_location VARCHAR(50),
	c_phoneno INTEGER,
	PRIMARY KEY (c_ID)
);

INSERT INTO CUSTOMER2 SELECT * FROM CUSTOMER 


CREATE TABLE "product2" (
	p_code INTEGER,
	p_name VARCHAR(50),
	price INTEGER,
	stock INTEGER,
	category VARCHAR(50),
	PRIMARY KEY (p_code)
);

INSERT INTO product2 SELECT * FROM product

CREATE TABLE sales (
	order_date NVARCHAR(50),
	order_no VARCHAR(50),
	c_id INTEGER,
	c_name VARCHAR(50),
	s_code INTEGER,
	p_name VARCHAR(50),
	qty INTEGER,
	price INTEGER,
	PRIMARY KEY (order_no,s_code)
);

INSERT INTO sales SELECT * FROM sales_datasets

-------------
SELECT order_no,c_id,order_date,price,qty 
FROM sales order BY order_no  

----------------------------------

SELECT * FROM product 
WHERE category= "Stationary"


--------------------------------

SELECT DISTINCT category
FROM product;


-------------


SELECT * 
FROM product
ORDER BY price DESC;




