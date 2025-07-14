use testdb;
CREATE TABLE if not exists tweets (
	tweet_id int PRIMARY KEY,
    content VARCHAR(100) NOT NULL
);

#當資料表有設定「唯一鍵」或「主鍵」時，可用以下方法規定，當有一樣的值時則不insert
#如果 tweet_id 已存在，就會忽略該筆資料、不插入也不報錯。
INSERT IGNORE INTO tweets (tweet_id, content)
VALUES (1, 'Vote for Biden'),(2,'Let us make America great again!');

select * from tweets;
select tweet_id 
from tweets 
where length(content)>15;
