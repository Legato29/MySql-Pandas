# https://leetcode.cn/problems/find-customer-referee/
# [空值與篩選資料] 尋找用戶推薦人：列出那些沒有被2號推薦的那些人

/*
# 使用資料庫
USE testdb;

# 創建 Customer 表格
CREATE TABLE customer (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    referee_id INT
);

# 插入數據
INSERT INTO customer (id, name, referee_id) VALUES
(1, 'Will', NULL),
(2, 'Jane', NULL),
(3, 'Alex', 2),
(4, 'Bill', NULL),
(5, 'Zack', 1),
(6, 'Mark', 2);

select * from customer;
*/

select id,name from customer where referee_id !=2 or referee_id is null;

#在mysql中referee_id !=2 不會判定null不等於2，因為null和任何值判定都是false
#所以要加入referee_id is null的條件
#這裡的不等於也可以用<> 來替換 !=