select distinct maker, price
from printer left join product on printer.model = product.model
where price = (select min(price) from printer where color = 'y') and color = 'y';
