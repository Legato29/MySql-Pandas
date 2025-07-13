/*
#建立資料庫（如果尚未建立）
CREATE DATABASE IF NOT EXISTS testdb;
USE testdb;

#建立表格
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    low_fats CHAR(1) NOT NULL,
    recyclable CHAR(1) NOT NULL
);

#插入資料
INSERT INTO products (product_id, low_fats, recyclable) VALUES
(0, 'Y', 'N'),
(1, 'Y', 'Y'),
(2, 'N', 'Y'),
(3, 'Y', 'Y'),
(4, 'N', 'N');
*/
select * from products;

#https://leetcode.cn/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=sql-free-50
#[篩選資料]可回收且低脂的產品：篩選出low_fats 和 recyclable 都是"Y"的row

select product_id 
from products
where low_fats='Y' and recyclable = 'Y';

![MS_1](./images/Mysql_1.png)
