{% macro return_fields() %}

{{
    return
    ('
        alien_id
        , alien_name
        , species
        , home_planet
        , strength_level
        , speed_level
        , intelligence
        , skills_media
        , alien_class
        , qnt_winner
        , qnt_battles
    ')
}}

{% endmacro%}