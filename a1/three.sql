select title, year, y1.cat \
from yrb_book y1 \
inner join (select cat, min(year) minyear \
		    from yrb_book \
		    group by cat) y2 on y1.cat = y2.cat and y1.year = y2.minyear