with head_ships as (
    select
        name,
        class
    FROM (
        SELECT
            name,
            class,
            ROW_NUMBER() over (partition by class order by launched) as row_num
        FROM
            ships
        ) as sq1
    WHERE
        row_num = 1 
),
head_battle as (
    SELECT
        name,
        class
    from (
        SELECT
            ship as name,
            ship as class,
            row_number() over (partition by ship order by battle) as row_num
        from
            outcomes
    ) as sq2
    WHERE
        row_num = 1
)
SELECT DISTINCT
    name
from
    classes left join (select * from head_ships union all select * from head_battle) as sq3 on classes.class = sq3.class
