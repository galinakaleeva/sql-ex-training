with prices as (
select model, price from pc
union all
select model, price from laptop
union all
select model, price from printer)
select distinct model
from prices
where price = (select max(price) from prices);
