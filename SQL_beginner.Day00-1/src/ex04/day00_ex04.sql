SELECT CONCAT (name, '(', 'age:', age, ',gender:', '''', gender, '''', ',address:', '''', 'Moscow', '''', ')'
	) AS person_information
FROM person
ORDER BY person_information;