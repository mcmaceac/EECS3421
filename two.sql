select N.name, max(N.quant) \
from \
	(select name, P.club, sum(P.qnty) as quant \
	from yrb_customer C, yrb_purchase P \
	where C.cid = P.cid \
	group by name, P.club) as N \
group by N.name