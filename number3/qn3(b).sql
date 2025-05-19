-- SECTION B
-- Question3(a)
SELECT animal.animal_name = habitat.habitat_names
FROM animal
INNER JOIN habitat ON animal.animal_id = habitat.habitat_id;