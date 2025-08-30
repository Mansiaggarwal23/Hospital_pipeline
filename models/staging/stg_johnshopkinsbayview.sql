with johnshopkinsbayview as(
    select 
        hospital_id,
        coalesce(description, 'unknown') as description,
        code1,
        code1_type,
        code2,
        code2_type,
        code3,
        code3_type,
        billing_class,
        coalesce(setting, '-1') as setting,
        cast(drug_unit_of_measurement as numeric) as drug_unit_of_measurement ,
        drug_type_of_measurement,
        cast(modifiers as varchar) as modifiers,
        coalesce(cast(standard_charge_gross as numeric), 0) as standard_charge_gross,
        cast(standard_charge_discounted_cash as numeric) as standard_charge_discounted_cash,
        payer_name,
        plan_name,
        cast(standard_charge_negotiated_dollar as numeric) as standard_charge_negotiated_dollar,
        cast(standard_charge_negotiated_percentage as numeric) as standard_charge_negotiated_percentage,
        standard_charge_negotiated_algorithm,
        cast(estimated_amount as numeric) as estimated_amount,
        standard_charge_methodology,
        cast(standard_charge_min as numeric) as standard_charge_min,
        cast(standard_charge_max as numeric) as standard_charge_max ,
        additional_generic_notes
    from {{ref ("johnshopkinsbayview_standardcharges")}}
)
select * from johnshopkinsbayview