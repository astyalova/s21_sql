SELECT DISTINCT name 
FROM person 
FULL JOIN person_order po ON person_id = po.person_id
FULL JOIN menu m ON m.id = po.menu_id
WHERE person.gender = 'male' AND (person.address = 'Moscow' OR person.address = 'Samara') AND (m.pizza_name = 'pepperoni pizza' or m.pizza_name = 'mushroom pizza')
ORDER BY name DESC


