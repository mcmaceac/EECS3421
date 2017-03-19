select cast(avg(N.MinPrice) as decimal(5,2)) as avg_cost \
from (select min(O.price) as MinPrice from yrb_book B, yrb_offer O \
	  where B.title = O.title and B.year = O.year group by B.cat) as N
