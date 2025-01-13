SELECT p.name 
FROM person  p
FULL JOIN person_order po ON p.id = po.person_id
FULL JOIN menu m ON m.id = po.menu_id
WHERE p.gender = 'female' AND m.pizza_name = 'pepperoni pizza' 
INTERSECT
SELECT p.name 
FROM person p
FULL JOIN person_order po ON po.person_id = p.id 
FULL JOIN menu m ON m.id = po.menu_id
WHERE p.gender = 'female' AND m.pizza_name = 'cheese pizza'
ORDER BY name 


