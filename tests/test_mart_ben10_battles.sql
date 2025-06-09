select
*
from {{ref("mart_ben10")}}
where qnt_winner is null or qnt_battles is null