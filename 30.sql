with 
income_total as (
    select
        point,
        date,
        sum(inc) over (partition by point, date) as inc_total
    from
        income
),
outcome_total as (
    select
        point,
        date,
        sum(out) over (partition by point, date) as out_total
    from
        outcome
)
select
    income_total.point,
    income_total.date,
    out_total,
    inc_total
from
     income_total left join outcome_total
     on income_total.point = outcome_total.point and income_total.date = outcome_total.date
where income_total.point is not NULL
union
select
    outcome_total.point,
    outcome_total.date,
    out_total,
    inc_total
from
     income_total right join outcome_total
     on income_total.point = outcome_total.point and income_total.date = outcome_total.date
where outcome_total.point is not NULL;
