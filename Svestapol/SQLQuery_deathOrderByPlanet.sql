use Sevestapol_logg
go

select  CONCAT(FirstName +' ', LastName) as Name,
Planet

from crew
join Origin on crew.PlanetID = Origin.PlanetID
where planet = 'Tellus' and DeathLoggID is not null
