SELECT (SELECT o.customer_id FROM orders o WHERE o.id = d.order_id) customer_id, 
        d.*
  FROM order_details d; 
