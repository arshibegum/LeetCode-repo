# Write your MySQL query statement below
SELECT query_name, ROUND((SUM(rating/position)/COUNT(rating)), 2) AS quality , 
round((sum(rating<3)/count(rating)*100),2) AS poor_query_percentage FROM Queries GROUP BY query_name;  