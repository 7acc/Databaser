USE [Sevestapol_logg]
GO

create proc SP_GetDeadFromPlanet(@planet varchar(50))
as 
begin

set @planet = 'Tellus'

select  CONCAT(FirstName +' ', LastName) as Name,
Grade,
Planet

from crew
join Origin on crew.PlanetID = Origin.PlanetID
where planet = @planet and DeathID is not null
end;


GO


