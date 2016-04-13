USE [Sevestapol_logg]
GO

CREATE PROCEDURE GetCountPerGrade
AS
     BEGIN

         SELECT Grade,
                COUNT(*) AS 'Count'
         FROM Crew
         GROUP BY Grade
     END;
GO


