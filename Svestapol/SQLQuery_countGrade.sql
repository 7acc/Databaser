use Sevestapol_logg
go

select  Grade,
COUNT(*) as 'Count'
from Crew
group by Grade
