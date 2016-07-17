Select Country.Name
FROM Country LEFT JOIN City ON Country.CountryID = City.CountryID
LEFT JOIN Building ON City.CityID = Building.CityID
GROUP BY Country.Name
HAVING COUNT(BUILDING.NAME) = 0;