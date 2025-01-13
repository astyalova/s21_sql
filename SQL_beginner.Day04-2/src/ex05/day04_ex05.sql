CREATE VIEW v_price_with_discount AS (
SELECT p.name, m.pizza_name, m.price, round(m.price - (m.price * 0.1)) AS discount_price
FROM person p
JOIN person_order po ON po.person_id = p.id
JOIN menu m ON m.id = po.menu_id
ORDER BY p.name, m.pizza_name);

