SELECT pz.name as pizzeria_name
FROM menu m  
FULL JOIN pizzeria pz ON pz.id = m.pizzeria_id
FULL JOIN person_visits pv ON m.pizzeria_id = pv.pizzeria_id
FULL JOIN person p ON p.id = pv.person_id
WHERE p.name = 'Dmitriy' AND m.price < '800' AND visit_date = '2022-01-08'

