SELECT * FROM countries;
SELECT * FROM cities;
SELECT * FROM languages;

-- Qué consulta ejecutarías para mostrar el número total de ciudades para cada país? 
-- Su consulta debe devolver el nombre del país y el número total de ciudades. 
-- Tu consulta debe organizar el resultado por el número de ciudades en orden descendente. (3)
SELECT countries.name,cities.name FROM countries , cities
WHERE countries.id = cities.country_id;
SELECT countries.name, COUNT(countries.name) AS total FROM countries
GROUP BY countries.name 

-- ¿Qué consulta harías para obtener todas las ciudades de México con una población de más de 500,000? 
-- Tu consulta debe organizar el resultado por población en orden descendente. (1)
select countries.name,languages.language,languages.percentage
from languages Join countries on countries.id = languages.country_id
where languages.percentage >89


