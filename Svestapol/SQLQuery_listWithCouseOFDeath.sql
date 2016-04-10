use Sevestapol_logg
go

select  CONCAT(FirstName +' ', LastName) as Name,
CouseOfDeath
from crew
join Deathlogg on DeathLogg.DeathLoggID = Crew.DeathLoggID