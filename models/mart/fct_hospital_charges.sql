with hospital_standardCharges as (
    select 
        c.hospital_id,
        h.hospital_name,
        h.hospital_address,
        h.license_number,
        h.last_updated_on,
        h.version,
        c.description,
        c.code1,
        c.code1_type,
        c.code2,
        c.code2_type,
        c.code3,
        c.code3_type,
        c.setting,
        c.drug_unit_of_measurement,
        c.drug_type_of_measurement,
        c.standard_charge_gross,
        c.standard_charge_discounted_cash,
        c.payer_name,
        c.plan_name,
        c.modifiers,
        c.standard_charge_negotiated_dollar,
        c.standard_charge_negotiated_percentage,
        c.standard_charge_negotiated_algorithm,
        c.estimated_amount,
        c.standard_charge_min,
        c.standard_charge_max,
        c.standard_charge_methodology,
        c.additional_generic_notes
    from {{ref ("stg_all_hospital_standardCharges")}} as c
    join {{ref ("stg_hospitaldata")}} as h
    on c.hospital_id = h.hospital_id
)
select * from hospital_standardCharges