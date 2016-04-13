USE [Sevestapol_logg]
GO


CREATE PROC SP_GetfullCrewList
AS
     BEGIN

      
         SELECT CONCAT(FirstName+' ', LastName) AS Name,
                Grade,
                Planet,
                race,
			 DepartmentName 

         FROM Crew
              JOIN Origin ON Origin.PlanetID = Crew.PlanetID
		    JOIN Crew_Department AS CD ON crew.EnlistNR = cd.EnlistNR
                          JOIN Department AS D ON d.DepartmentID = cd.DepartmentID

       
     END;
GO


