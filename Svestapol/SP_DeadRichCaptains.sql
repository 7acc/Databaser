USE [Sevestapol_logg]
GO


CREATE PROCEDURE SP_DeadRichCaptains
AS
     BEGIN

         SELECT CONCAT(FirstName+' ', LastName) AS Name,
                grade,
                salery

         FROM Crew
         WHERE Grade = 'Captain'
               AND Salery > 50000
               AND DateOfDeath IS NOT NULL;
     END;
GO


