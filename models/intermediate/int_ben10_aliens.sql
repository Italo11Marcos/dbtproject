with cte_skills_media as 
(
    select
    alien_id
    , alien_name
    , species
    , home_planet
    , strength_level
    , speed_level
    , intelligence
    , round((strength_level + speed_level + intelligence) / 3, 2) as skills_media
    from {{ref("ben10_aliens")}}
)
select
alien_id
, alien_name
, species
, home_planet
, strength_level
, speed_level
, intelligence
, skills_media
, case 
    when skills_media >= 9 then 'S'
    when skills_media >= 8 and skills_media <= 9 then 'A'
    when skills_media >= 6 and skills_media <= 8 then 'B'
    when skills_media >= 4 and skills_media <= 6 then 'C'
    else 'D'
end as alien_class 
from cte_skills_media