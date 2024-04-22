1/
CREATE TABLE customer (
customer_id VARCHAR2(20) Primary key,
customer_name VARCHAR2(20),
customer_tel Number(8)
);

CREATE TABLE Product(
product_id VARCHAR2(20) Primary key, 
product_name VARCHAR2(20) NOT NULL,
price Number(20) Check price>0,
);
CREATE TABLE Orders (
customer_id FOREIGN KEY REFERENCES customer (customer_id),
product_id FOREIGN KEY REFERENCES Product (product_id),
--product_id CONSTRAINT fk_id FOREIGN KEY  REFERENCES Product (product_id),--
quantity Number(20),
total_ amount Number(20),

);

2/
a/
ALTER TABLE product add Category VARCHAR2(20),
b/
ALTER TABLE orders add OrderDate  DATE DEFAULT SYSDATE,

