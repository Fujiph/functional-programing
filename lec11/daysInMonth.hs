data Month = January | Febuary | March | April | May | June | July | August | September | November | October | December deriving (Show)

daysInMonth m = case m of 
    January -> 31
    Febuary -> 28
    March -> 31
    April -> 30
    May -> 31
    June -> 30
    July -> 31
    August -> 31
    September -> 30
    November -> 31
    October -> 30
    December -> 31

nextMonth m = case m of 
    January -> Febuary
    Febuary -> March
    March -> April
    April -> May
    May -> June
    June -> July
    July -> August
    August -> September
    September -> November
    November -> October
    October -> December
    December -> January

nextDay day m = if day >= daysInMonth m then (1, (nextMonth m)) else (day+1, m)
