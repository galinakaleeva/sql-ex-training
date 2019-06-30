select ship
from outcomes left join battles on outcomes.battle = battles.name
where result = 'sunk' and  battles.name = 'North Atlantic';
