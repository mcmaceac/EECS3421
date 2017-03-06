select distinct club from yrb_offer O where price >= all(select O2.price from yrb_offer O2 where O2.club != O.club)
