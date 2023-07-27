select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    
    --cents to dollars
    amount / 100 as amount, 
    
    --convert_timezone('','AEST',created)  as created_at_AEST,
    created as created_at,
    
    --_batched_at

from `dbt-tutorial.stripe.payment`
