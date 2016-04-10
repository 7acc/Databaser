USE Sevestapol_logg;
GO

SELECT 
 CONCAT(FirstName+' ', LastName) AS Name, 
       Grade,
       Planet,
       race,
	  DepartmentName

FROM Crew
     JOIN Origin ON Origin.PlanetID = Crew.PlanetID	
     inner JOIN Crew_Department AS CD ON crew.EnlistNR = cd.EnlistNR
     inner JOIN Department AS D ON d.DepartmentID = cd.DepartmentID

	


