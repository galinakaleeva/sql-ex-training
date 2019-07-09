select
    income_o.point,
    income_o.date,
    inc,
    out
from
     income_o left join outcome_o on income_o.point = outcome_o.point and income_o.date = outcome_o.date
where income_o.point is not NULL
union
select
    outcome_o.point,
    outcome_o.date,
    inc,
    out
from
     income_o right join outcome_o on income_o.point = outcome_o.point and income_o.date = outcome_o.date
where outcome_o.point is not NULL;
