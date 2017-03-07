select distinct C.club, C.desc from yrb_offer O, yrb_club C, yrb_purchase P where C.club = O.club and O.club = P.club and O.title = P.title and O.year = P.year and O.price >= all(select O2.price from yrb_offer O2)

