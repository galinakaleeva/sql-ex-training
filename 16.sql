select distinct pc1.model, pc2.model, pc1.speed, pc1.ram
from pc as pc1, pc as pc2
where pc1.model > pc2.model and pc1.ram = pc2.ram and pc1.speed = pc2.speed;
