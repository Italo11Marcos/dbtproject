select
cast(battle_id as integer) as battle_id
, cast(alien_name as varchar(50))	as alien_name
, cast(enemy_name as varchar(50)) as enemy_name
, to_date(battle_date, 'DD-MM-YYYY') as battle_date
, cast(winner as varchar(50)) as winner
, current_timestamp as hproc
from {{source("sources","ben10_battles")}}