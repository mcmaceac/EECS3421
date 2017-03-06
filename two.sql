select C.name, max(P.qnty) from yrb_customer C, yrb_purchase P where C.cid = P.cid group by C.name
