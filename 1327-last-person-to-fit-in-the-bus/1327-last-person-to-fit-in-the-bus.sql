# Write your MySQL query statement below
WITH cte AS(
    SELECT Queue.*, SUM(weight) OVER(ORDER BY turn) AS total_weight
    FROM Queue
)
SELECT person_name FROM cte WHERE total_weight<=1000 ORDER BY total_weight DESC LIMIT 1;