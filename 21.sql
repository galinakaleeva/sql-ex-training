select maker, max(price)
from pc left join product on pc.model = product.model
group by maker;
