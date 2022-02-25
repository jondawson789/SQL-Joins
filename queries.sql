-- write your queries here--
--full outer join--
SELECT * FROM owners FULL JOIN vehicles ON owners.id = vehicles.owner_id;
--count owners vehicles--
SELECT first_name, last_name, COUNT(owner_id) FROM owners JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY first_name, last_name ORDER BY first_name;
--selects owners with more than 2 cars averaging over 10,000 in price--
SELECT first_name, last_name, ROUND(AVG(price)) AS average_price, COUNT(owner_id) AS count
FROM owners JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY first_name, last_name HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000
ORDER BY first_name DESC;
