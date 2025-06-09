{{ 
    config(
        post_hook="ANALYZE {{ this }};"
    ) 
}}

select
{{ return_fields()}}
, current_timestamp as hproc
from {{ref("int_ben10_battles")}}
where qnt_winner >= '{{var('min_winners')}}'