# https://leetcode.cn/problems/big-countries/description/
#[篩選資料，並輸出指定columns]
#找出大國的國家名稱、人口、面積     大國定義：面積至少300萬平方公里 或 人口至少2500萬

/*
# 創建資料庫（如果不存在）
#CREATE DATABASE IF NOT EXISTS testdb;

# 使用資料庫
USE testdb;

# 創建 World 表格
CREATE TABLE world (
    name VARCHAR(50) PRIMARY KEY,
    continent VARCHAR(50) NOT NULL,
    area INT NOT NULL,
    population INT NOT NULL,
    gdp BIGINT NOT NULL
);

# 插入數據
INSERT INTO world (name, continent, area, population, gdp) VALUES
('Afghanistan', 'Asia', 652230, 25500100, 2034300000000),
('Albania', 'Europe', 28748, 2831741, 1296000000000),
('Algeria', 'Africa', 2381741, 37100000, 1886810000000),
('Andorra', 'Europe', 468, 78115, 371200000000),
('Angola', 'Africa', 1246700, 20609294, 10099000000000);
*/
select * from  world;

select name,population,area 
from world 
where area>=3000000 or population>=25000000;