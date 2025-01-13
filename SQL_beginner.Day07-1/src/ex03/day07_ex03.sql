WITH actions AS
(SELECT pz.name, COUNT(pizzeria_id) AS total_count
FROM person_visits AS pv
JOIN pizzeria pz ON pv.pizzeria_id = pz.id
GROUP BY 1
   
UNION ALL 
   
SELECT pz.name, COUNT(pz.name) AS total_count
FROM person_order po
JOIN menu m ON po.menu_id = m.id
JOIN pizzeria pz ON m.pizzeria_id = pz.id
GROUP BY 1)

SELECT name, sum(total_count) AS total_count
FROM actions
GROUP BY name
ORDER BY total_count DESC, name ASC