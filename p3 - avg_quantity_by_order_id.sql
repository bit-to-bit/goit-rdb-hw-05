SELECT q.order_id, 
       avg(q.quantity) avg_quantity
  FROM (SELECT d.id, d.order_id, d.product_id, d.quantity
	      FROM order_details d
         WHERE d.quantity > 10) q
GROUP BY q.order_id
ORDER BY avg_quantity desc; 
