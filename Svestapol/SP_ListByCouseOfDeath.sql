USE [Sevestapol_logg]
GO


CREATE PROCEDURE SP_ListByCouseOfDeath
AS
     BEGIN

         SELECT CONCAT(FirstName+' ', LastName) AS Name,
                CouseOfDeath

         FROM crew
              JOIN CouseOfDeath ON CouseOfDeath.DeathID = Crew.DeathID

         ORDER BY CouseOfDeath;
     END;
GO


