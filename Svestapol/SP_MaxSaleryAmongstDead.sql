USE [Sevestapol_logg]
GO


CREATE PROCEDURE SP_MaxSaleryAmongstDead
AS
     BEGIN

         DECLARE @MaxSalery AS INT;

         SET @MaxSalery =
         (
             SELECT MAX(salery)
             FROM Crew
         );

         SELECT CONCAT(FirstName+' ', LastName) AS Name,
                Grade,
                DepartmentName,
                salery
         FROM Crew
              JOIN Crew_Department AS CD ON crew.EnlistNR = cd.EnlistNR
              JOIN Department AS D ON d.DepartmentID = cd.DepartmentID
         WHERE salery = @MaxSalery;
     END;
GO


