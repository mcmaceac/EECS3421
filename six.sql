select * from yrb_customer where cid not in (select cid from yrb_purchase)
