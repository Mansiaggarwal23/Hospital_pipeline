with howardcountygeneralhospital as(
    select * from {{ref ('stg_howardcountygeneralhospital')}}
),
johnshopkinsallchildrenshospital as (
    select * from {{ref ('stg_johnshopkinsallchildrenhospital')}}
),
johnshopkinsbayview as (
    select * from {{ref ("stg_johnshopkinsbayview")}}
),
johnshopkinshospital as (
    select * from {{ref ('stg_johnshopkinshospital')}}
),
sibleymemorialhospital as (
    select * from {{ref ("stg_sibleymemorialhospital")}}
),
suburbanhospital as (
    select * from {{ref ("stg_suburbanhospital")}}
)
select * from howardcountygeneralhospital
UNION ALL 
select * from johnshopkinsallchildrenshospital
UNION ALL 
select * from johnshopkinsbayview
UNION ALL
select * from johnshopkinshospital
UNION ALL 
select * from sibleymemorialhospital
UNION ALL 
select * from suburbanhospital