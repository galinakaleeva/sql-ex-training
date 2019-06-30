select ships.class, name, country
from ships left join classes on ships.class = classes.class
where numguns >= 10;
