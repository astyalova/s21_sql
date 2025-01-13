WITH no AS (
SELECT * FROM menu
 WHERE NOT EXISTS
(SELECT menu_id FROM person_order WHERE menu_id = menu.id)
)
SELECT no.pizza_name, no.price, pizzeria.name AS pizzeria_name
FROM no
JOIN pizzeria ON no.pizzeria_id = pizzeria.id
ORDER BY pizza_name, price;