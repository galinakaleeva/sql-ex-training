select country, convert(numeric(6, 2), avg(mw)) 
from (
    select country, (bore * bore * bore * 1.0)/2 as mw
    from classes left join ships on classes.class = ships.class
) as sq1
group by country;
