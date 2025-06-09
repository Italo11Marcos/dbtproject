with qnt_winner as 
(
    select 
    winner
    , count(winner) as qnt_winner
    from {{ref("ben10_battles")}}
    group by winner
), qnt_battles_side_a as
(
    select
    alien_name
    , count(alien_name) as qnt_battles_side_a
    from {{ref("ben10_battles")}}
    group by alien_name
), qnt_battles_side_b as
(
    select
    enemy_name
    , count(enemy_name) as qnt_battles_side_b
    from {{ref("ben10_battles")}}
    group by enemy_name
)
select
aliens.alien_id
, aliens.alien_name
, aliens.species
, aliens.home_planet
, aliens.strength_level
, aliens.speed_level
, aliens.intelligence
, aliens.skills_media
, aliens.alien_class
, coalesce(winner.qnt_winner, 0) qnt_winner
, (coalesce(side_a.qnt_battles_side_a, 0) + coalesce(side_b.qnt_battles_side_b, 0)) as qnt_battles
from {{ref("int_ben10_aliens")}} aliens
left join qnt_winner winner on aliens.alien_name = winner.winner
left join qnt_battles_side_a side_a on aliens.alien_name = side_a.alien_name
left join qnt_battles_side_b side_b on aliens.alien_name = side_b.enemy_name