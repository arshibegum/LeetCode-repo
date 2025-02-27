/* Write your PL/SQL query statement below */
with cte as
(select d.name as Department,e.name as Employee,e.salary,DENSE_RANK() OVER(partition by d.name ORDER BY e.salary DESC) AS Rank from Employee e join Department d on e.departmentId=d.id where salary is not null)
select department,Employee,Salary from cte where rank<4 ;