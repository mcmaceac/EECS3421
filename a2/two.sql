select C1.name, N1.quant \
from \
	(select C.cid, max(N.quant) as quant \
	from \
		(select cid, sum(qnty) as quant \
		from yrb_purchase \
		group by cid, club) as N, yrb_customer C \
	where C.cid = N.cid \
	group by C.cid) as N1, yrb_customer C1 \
where C1.cid = N1.cid
