select distinct maker 
from product join PC on Product.model = PC.model
where speed >= 450;
