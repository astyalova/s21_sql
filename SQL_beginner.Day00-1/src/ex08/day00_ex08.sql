SELECT id, person_id, menu_id, order_date
FROM person_order
 WHERE person_id% 2 = 0
ORDER BY id