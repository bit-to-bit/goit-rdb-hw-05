SELECT *
  FROM order_details d
 WHERE exists (SELECT o.shipper_id FROM orders o WHERE o.id = d.order_id AND o.shipper_id = 3); 
