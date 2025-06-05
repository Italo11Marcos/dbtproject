select
od.order_id
, od.product_id
, od.unit_price
, pr.unit_price unit_price_product
, od.quantity
, pr.product_name
, pr.supplier_id
, pr.category_id
, od.unit_price * od.quantity value_total
, ((pr.unit_price * od.quantity) - value_total) value_dicount
from {{source("sources", "order_details")}} od
left join {{source("sources", "products")}} pr on (od.product_id = pr.product_id)