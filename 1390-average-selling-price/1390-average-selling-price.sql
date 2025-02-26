# Write your MySQL query statement below
SELECT P.product_id, ROUND(IFNULL(SUM(U.UNITS*P.PRICE)/SUM(U.UNITS),0),2) AS average_price FROM Prices P LEFT JOIN UnitsSold U ON P.product_id=U.product_id 
AND u.purchase_date BETWEEN p.start_date AND p.end_date GROUP BY P.product_id ;