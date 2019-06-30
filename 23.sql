select distinct sq1.maker
from(
    select maker, max(speed) as pc_speed
    from product join pc on product.model = pc.model
    group by maker
) as sq1 join (
    select maker, max(speed) as laptop_speed
    from product join laptop on product.model = laptop.model
    group by maker
) as sq2 on sq1.maker = sq2.maker 
where pc_speed >= 750 and laptop_speed >= 750;
