select avg(price)
from (
    select price 
    from product join pc on product.model = pc.model
    where maker = 'a'
    union all
    select price 
    from laptop join product on laptop.model = product.model
    where maker = 'a'
) as sq;
