use testdb;
create table if not exists employees(id int primary key ,name varchar(50) not null);
create table if not exists employee_uni(id int primary key ,unique_id int);

INSERT IGNORE INTO employees (id,name)
VALUES 
		(1,"Alice"),
        (7,"Bob"),
        (11,"Meir"),
        (90,"Winston"),
        (3,"Jonathan")
;

INSERT IGNORE INTO employee_uni (id,unique_id)
VALUES 
		(3,1),
        (11,2),
        (90,3)
;

select * from employees;
select * from employee_uni;

select s.id,s.name,i.unique_id 
from employees s 
left join employee_uni i 
on s.id=i.id ;