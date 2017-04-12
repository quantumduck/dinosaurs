-- Question 1 --
SELECT COUNT(*) FROM dinos;
-- 331

-- Question 2 --
SELECT name, species FROM dinos WHERE period = 'Jurassic';
-- => 92 results

-- Question 3 --
SELECT SUM(length) FROM dinos WHERE period = 'Cretaceous';
-- => 1366.45

-- Question 4 --
SELECT name, species FROM dinos WHERE period = 'Jurassic' OR period = 'Cretaceous' ORDER BY species ASC;
-- ==> 310 results.

-- Question 5 --
SELECT name, species FROM dinos WHERE t_order = 'Saurischia' AND diet = 'Herbivorous';

-- Question 6 --
UPDATE dinos SET name = 'Shortie' WHERE length = (SELECT MIN(length) FROM dinos);
-- ==> UPDATE 1

-- Question 7 --
SELECT name, species FROM dinos ORDER BY name ASC LIMIT 1;
-- => Aardonyx | Celestae

-- Question 8 --
UPDATE dinos SET name = 'The Famous Five' WHERE length = ANY(SELECT length FROM dinos WHERE length > 0 ORDER BY length DESC LIMIT 5);
-- => UPDATE 5
