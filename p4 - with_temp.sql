with temp as (SELECT d.id, d.order_id, d.product_id, d.quantity
	            FROM order_details d
			   WHERE d.quantity > 10)
SELECT temp.order_id, 
       avg(temp.quantity) avg_quantity
  FROM temp
GROUP BY temp.order_id
ORDER BY avg_quantity desc; 
