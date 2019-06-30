select count(*)
from (
    select maker, count(model) as models
    from product
    group by maker
) as sq1
where models = 1;
