 SELECT * FROM countries;
 SELECT * FROM cities;
 SELECT * FROM languages;
 -- Ejercicios
 -- ¿Qué consulta harías para obtener todos los países que hablan esloveno? 
-- Tu consulta debe devolver el nombre del país, el idioma y el porcentaje de idioma.
 -- Tu consulta debe organizar el resultado por porcentaje de idioma en orden descendente. (1)
SELECT countries.name,languages.language, languages.percentage FROM countries
INNER JOIN languages ON countries.id = languages.country_id
WHERE languages.language LIKE 'slovene'
ORDER BY percentage DESC;

-- ¿Qué consulta ejecutarías para mostrar el número total de ciudades para cada país? 
-- Su consulta debe devolver el nombre del país y el número total de ciudades. 
-- Tu consulta debe organizar el resultado por el número de ciudades en orden descendente. (3)
 SELECT countries.name paises, count(countries.name) total FROM countries
 INNER JOIN cities ON countries.id = cities.country_id
  GROUP BY countries.name
  ORDER BY total DESC;

  -- ¿Qué consulta harías para obtener todas las ciudades de México con una población de más de 500,000? 
  -- Tu consulta debe organizar el resultado por población en orden descendente. (1)
  SELECT cities.name, cities.population FROM countries
  INNER JOIN cities ON countries.id = cities.country_id
  WHERE countries.name = 'Mexico' AND cities.population > 500.000
  ORDER BY population DESC;
  -- ¿Qué consulta ejecutarías para obtener todos los idiomas en cada país con un porcentaje superior al 89%? 
  -- Tu consulta debe organizar el resultado por porcentaje en orden descendente. (1)
  SELECT countries.name, languages.language,languages.percentage FROM countries
  INNER JOIN languages ON countries.id = languages.country_id
  WHERE percentage > 89
  ORDER BY percentage DESC;
  -- ¿Qué consulta haría para obtener todos los países con un área de superficie inferior a 501 
  -- y una población superior a 100,000? (2)
  SELECT name,surface_area,population FROM countries
  WHERE surface_area < 501 AND population > 100000;
  -- ¿Qué consulta harías para obtener países con solo Monarquía Constitucional con un capital superior a 200 
  -- y una esperanza de vida superior a 75 años? (1)
  SELECT name, government_form, capital, life_expectancy FROM countries
  WHERE government_form = 'Constitutional Monarchy' AND capital > 200 AND life_expectancy > 75;
  -- ¿Qué consulta harías para obtener todas las ciudades de Argentina dentro del distrito de Buenos Aires 
  -- y tener una población superior a 500,000? La consulta debe devolver el nombre del país, el nombre de la ciudad, 
  -- el distrito y la población.
  SELECT countries.name,cities.name, cities.district,cities.population  FROM countries
  INNER JOIN cities ON countries.id = cities.country_id
  WHERE countries.name = 'Argentina' AND cities.district = 'Buenos Aires' AND cities.population >500000;
-- ¿Qué consulta harías para resumir el número de países en cada región? La consulta debe mostrar el nombre de la región 
-- y el número de países. Además, la consulta debe organizar el resultado por el número de países en orden descendente
SELECT region, count(name) FROM countries
group by region
order by count(name) desc;
  

  
  


 


