USE Sevestapol_logg;
GO

SELECT 
 CONCAT(FirstName+' ', LastName) AS Name, 
       Grade,
       Planet,
       race,
	  CouseOfDeath
	  
FROM Crew
     JOIN Origin ON Origin.PlanetID = Crew.PlanetID	
	join Deathlogg on Deathlogg.DeathLoggID = Crew.DeathLoggID
	order by  CouseOfDeath