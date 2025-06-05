with calc_employees as (
    select
    *
    , date_part_year(current_date) - date_part_year(birth_date) age
    , date_part_year(current_date) - date_part_year(hire_date) lengthofservice
    , first_name || ' ' || last_name full_name
    from {{source("sources", "employees")}}
)
select
*
from calc_employees