with

source as (

    select * from {{ source('jaffle_shop', 'orders') }}

),

transformed as (

    select 
        id as order_id,
        user_id as customer_id,
        order_date,
        status AS order_status,

        case 
            when status not in ('returned', 'pending') 
            then order_date 
        end as valid_order_date

    from source

)

select * from transformed