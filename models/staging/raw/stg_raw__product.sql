with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id,
        CAST (purchse_price AS FLOAT64) AS purchase_id
    from source

)

select * from renamed
