use Sevestapol_logg
go

select  CONCAT(FirstName +' ', LastName) as Name,
DateOfDeath

from Crew
join Deathlogg on Crew.DeathLoggID = Deathlogg.DeathLoggID
where DateOfDeath between  '2140/07/01' and '2140/09/30'