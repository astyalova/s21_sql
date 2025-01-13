SELECT m.pizza_name, pz.name as pizzeria_name
FROM person_order po  
FULL JOIN person p ON po.person_id = p.id
FULL JOIN menu m ON m.id = po.menu_id
FULL JOIN pizzeria pz ON pz.id = m.pizzeria_id
WHERE p.name = 'Anna' OR p.name = 'Denis'
ORDER BY pizza_name, pizzeria_name
