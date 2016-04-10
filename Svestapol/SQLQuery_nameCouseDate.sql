Use Sevestapol_logg
go

select CONCAT(FirstName +' ', LastName) as Name,
CouseOfDeath,
DateOfDeath
	   		 
from Crew
join Deathlogg on Deathlogg.DeathLoggID = Crew.DeathLoggID


