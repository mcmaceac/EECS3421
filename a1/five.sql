select distinct N.title \
from \
	(select title, year, count(title) as num \ 
	from yrb_offer \
	group by title, year) as N \
where N.num = (select count(*) \
			   from yrb_club)