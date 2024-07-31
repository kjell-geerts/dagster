with
    cu as (select * from {{ ref("customers") }}),
    ord as (select * from {{ ref("orders") }}),

    joined as (select cu.* from ord inner join cu on ord.customer_id = cu.customer_id)

select *
from joined
