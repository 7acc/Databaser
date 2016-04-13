USE [Sevestapol_logg]
GO

CREATE PROCEDURE SP_GetNameCouseAndDate
AS
     BEGIN


         SELECT CONCAT(FirstName+' ', LastName) AS Name,
                CouseOfDeath,
                DateOfDeath

         FROM Crew
              JOIN CouseOfDeath ON CouseOfDeath.DeathID = Crew.DeathID
         WHERE DateOfDeath IS NOT NULL
         ORDER BY DateOfDeath;

     END;
GO


