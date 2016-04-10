use Sevestapol_logg
go

select  CONCAT(FirstName +' ', LastName) as Name,
grade,
salery

from Crew
where Grade = 'Captain' 
and Salery > 50000 
and DeathLoggID is not null;
