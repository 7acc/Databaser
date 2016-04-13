USE [Sevestapol_logg];
GO


CREATE PROC SP_OrderByCouseOfDeath
AS
     BEGIN

         SELECT CONCAT(FirstName+' ', LastName) AS Name,
                Grade,
                Planet,
                race,
                CouseOfDeath
         FROM Crew
              JOIN Origin ON Origin.PlanetID = Crew.PlanetID
              JOIN CouseOfDeath ON CouseOfDeath.DeathID = Crew.DeathID
         ORDER BY CouseOfDeath;
     END;
GO