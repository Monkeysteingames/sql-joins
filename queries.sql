-- Zach Augustine  

--Exercise 1:

SELECT *
FROM owners o
LEFT JOIN vehicles v
ON o.id = v.owner_id;

--Exercise 2:

SELECT o.first_name, o.last_Name, count(*) AS count
FROM owners o
JOIN vehicles v
ON o.id = v.owner_id
GROUP BY o.id
ORDER BY count;

--Exercise 3:

SELECT o.first_name, o.last_Name, ROUND(AVG(v.price)), count(*) AS count
FROM owners o
JOIN vehicles v
ON o.id = v.owner_id
GROUP BY o.id
HAVING AVG(v.price) > 10000;
