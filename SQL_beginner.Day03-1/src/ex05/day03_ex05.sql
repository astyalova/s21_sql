SELECT pz.name AS pizzeria_name
FROM person_visits pv
JOIN pizzeria pz ON pv.pizzeria_id = pz.id
JOIN person p ON pv.person_id = p.id
WHERE p.name = 'Andrey'

EXCEPT

SELECT pz.name AS pizzeria_name
FROM menu m
JOIN pizzeria pz ON pz.id = m.pizzeria_id
JOIN person_order po ON po.menu_id = m.id
JOIN person p on po.person_id = p.id
WHERE p.name = 'Andrey';