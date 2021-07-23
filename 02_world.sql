SELECT languages.language, languages.percentage , countries.name FROM languages JOIN countries ON languages.country_id = countries.id WHERE languages.language = 'Slovene' ORDER BY languages.percentage DESC;

SELECT  countries.name , COUNT(cities.name) FROM cities JOIN countries ON cities.country_id = countries.id GROUP BY(countries.name)ORDER BY(COUNT(cities.name)) DESC;

SELECT countries.name , cities.name , cities.population FROM countries JOIN cities ON cities.country_id = countries.id WHERE countries.name = 'Mexico' AND cities.population >= 500000 ORDER BY(cities.population) DESC;

SELECT countries.name , languages.language , languages.percentage FROM languages JOIN countries ON languages.country_id = countries.id WHERE languages.percentage > 89 ORDER BY (languages.percentage) DESC;

SELECT countries.name , countries.surface_area , countries.population FROM countries WHERE surface_area < 501 AND countries.population > 100000 ORDER BY (countries.population) DESC;

SELECT countries.name , countries.life_expectancy, countries.surface_area FROM countries WHERE countries.government_form = 'Constitutional Monarchy' AND countries.surface_area > 200 AND countries.life_expectancy > 75 ORDER BY (countries.name) ASC;

SELECT countries.name , cities.name , cities.district , cities.population FROM countries JOIN cities ON cities.country_id = countries.id WHERE countries.name LIKE 'argentina' AND cities.district LIKE 'Buenos Aires' AND cities.population > 500000 ORDER BY (cities.population) DESC;

SELECT countries.region, COUNT(countries.name) AS num_paises FROM countries GROUP BY (countries.region) ORDER BY (num_paises) DESC;