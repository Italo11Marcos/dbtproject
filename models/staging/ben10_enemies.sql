select
cast(enemy_id as integer) as alien_id
, cast(alien_name as varchar(50)) as alien_name
, cast(enemy_name as varchar(50)) as enemy_name
, current_timestamp as hproc
from {{source("sources","ben10_enemies")}}