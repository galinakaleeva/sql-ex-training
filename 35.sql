select distinct model, type
from product
where model not like '%[^0-9]%[0-9]%'
and model not like '%[^a-z]%[a-z]%'
and model not like '%[^a-z0-9]%';
