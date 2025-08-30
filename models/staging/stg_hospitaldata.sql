with hospitaldata as (
    select 
        hospital_id,
        hospital_name,
        cast(last_updated_on as date) as last_updated_on,
        version,
        hospital_location,
        hospital_address,
        license_number
        from {{ref ("hospital_data")}}
)
select * from hospitaldata