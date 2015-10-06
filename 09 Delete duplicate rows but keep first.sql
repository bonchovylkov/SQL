DELETE FROM [dbo].[CountryCity]
WHERE ID NOT IN
(
SELECT MIN(ID)
FROM [dbo].[CountryCity]
GROUP BY Name, fkCountry
)