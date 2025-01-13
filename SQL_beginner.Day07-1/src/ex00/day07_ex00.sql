SELECT person_id,
COUNT(pizzeria_id) AS count_of_visits
FROM person_visits 
GROUP BY person_id
ORDER BY count_of_visits DESC, person_id ASC; --имеют одинаковое количество посещений, они будут отсортированы по идентификатору person_id в порядке возрастания (от меньшего к большему).