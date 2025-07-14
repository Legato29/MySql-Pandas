USE testdb;

CREATE TABLE if not exists Products1 (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL
);

CREATE TABLE if not exists Sales1 (
    sale_id INT PRIMARY KEY,
    product_id INT,
    year INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (product_id) REFERENCES Products1(product_id)
);

INSERT IGNORE INTO Products1 (product_id, product_name) VALUES
(100, 'Nokia'),
(200, 'Apple'),
(300, 'Samsung');

INSERT IGNORE INTO Sales1 (sale_id, product_id, year, quantity, price) VALUES
(1, 100, 2008, 10, 5000.00),
(2, 100, 2009, 12, 5000.00),
(7, 200, 2011, 15, 9000.00);

select * from Products1;
select * from Sales1;

select p.product_name,s.year,s.price 
from sales1 s 
left join products1 p 
on s.product_id=p.product_id;