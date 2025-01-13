WITH F AS (
SELECT pizzeria.name AS pizzeria_name
FROM pizzeria
JOIN person_visits ON person_visits.pizzeria_id = pizzeria_id
JOIN person ON gender = 'female' AND person.id = person_visits.person_id
ORDER BY pizzeria_name 
),
 M AS (
SELECT pizzeria.name AS pizzeria_name
FROM pizzeria
JOIN person_visits ON person_visits.pizzeria_id = pizzeria_id
JOIN person ON gender = 'male' AND person.id = person_visits.person_id
ORDER BY pizzeria_name)
(
	SELECT pizzeria_name
	FROM  F
	EXCEPT ALL
	SELECT pizzeria_name
	FROM  M
)
	
UNION ALL
(
	SELECT pizzeria_name
	FROM  M
	EXCEPT ALL
	SELECT pizzeria_name
	FROM  F
)
ORDER BY pizzeria_name
