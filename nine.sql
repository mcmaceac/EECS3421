with PurchaseDates as ( \
	select \
		ROW_NUMBER() over (order by when desc) as RowNumber, cid, when \
	from yrb_purchase \
) \
select N.cid, avg(N.diff) \
from \
	(select O1.cid, timestampdiff(16, O1.when - O2.when) as diff \
	from PurchaseDates O1, PurchaseDates O2 \
	where O1.cid = O2.cid and O2.RowNumber = O1.RowNumber + 1) as N \
group by N.cid
