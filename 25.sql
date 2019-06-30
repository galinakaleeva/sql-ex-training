select distinct maker
from product join pc on product.model = pc.model
where speed = (
    select max(speed)
    from (
        select speed 
        from pc
        where ram = (select min(ram) from pc)
    ) as sq1
)
and ram = (select min(ram) from pc)
and maker in (select maker from product where type = 'printer');
