select distinct C.club, C.desc \
from yrb_offer O, yrb_club C \
where C.club = O.club and price >= all(select O2.price \
									   from yrb_offer O2 \
									   where O2.club != O.club)

