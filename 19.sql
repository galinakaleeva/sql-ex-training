select maker, avg(screen)
from laptop left join product on laptop.model = product.model
group by maker;
