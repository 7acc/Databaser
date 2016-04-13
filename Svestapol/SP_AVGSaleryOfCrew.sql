
CREATE PROCEDURE SP_AVGSaleryOfCrew
AS
     BEGIN

       select avg(salery) as 'Average salery'
	  from crew

	  where Salery > 0
	  --- cosue i dont want to count the droids not existing salery

     END;
GO


