Select Country.Name
FROM Country JOIN City ON Country.CountryID = City.CountryID
GROUP BY Country.Name
HAVING SUM(City.Population) > 400;