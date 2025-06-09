select
cast(alien_id as integer) as alien_id
, cast(alien_name as varchar(50)) as alien_name
, cast(species as varchar(50)) as species
, cast(home_planet as varchar(50)) as home_planet
, cast(strength_level as integer) as strength_level
, cast(speed_level as integer) as speed_level
, cast(intelligence as integer) as intelligence
, current_timestamp as hproc
from {{source("sources","ben10_aliens")}}