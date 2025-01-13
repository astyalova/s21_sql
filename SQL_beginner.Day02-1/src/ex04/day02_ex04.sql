SELECT m.pizza_name, p.name as pizzeria_name, m.price
	FROM(SELECT * FROM menu WHERE pizza_name = 'mushroom pizza' OR pizza_name = 'pepperoni pizza') AS m
FULL JOIN pizzeria p ON p.id = m.pizzeria_id WHERE pizza_name IS NOT NULL
ORDER BY pizza_name, pizzeria_name