-- write your queries here
--Q1
SELECT *
FROM owners
LEFT JOIN vehicles ON owners.id = vehicles.owner_id;

--Q2
SELECT o.first_name, o.last_name, COUNT(v.owner_id) AS vehicle_count
FROM owners o
LEFT JOIN vehicles v ON o.id = v.owner_id
GROUP BY o.first_name, o.last_name
ORDER BY o.first_name ASC;

--Q3
SELECT
o.first_name,
o.last_name,
ROUND(AVG(v.price)) AS average_price,
COUNT(v.id) AS vehicle_count
FROM owners o
JOIN vehicles v ON o.id = v.owner_id
GROUP BY o.first_name, o.last_name
HAVING COUNT(v.id) > 1
AND ROUND(AVG(v.price)) > 10000
ORDER BY o.first_name DESC;


