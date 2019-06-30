select name
from ships join classes on ships.class = classes.class
where type = 'bb' and launched >= 1922 and displacement > 35000;
