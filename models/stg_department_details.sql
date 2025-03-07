SELECT 
    d.department_id,
    d.person_id,
    p.full_name,
    p.email,
    p.gender,
    d.department
FROM `bigquery-poc-443509`.`curated`.`stg_department_details` AS d
JOIN {{ ref('stg_person_details') }} AS p 
    ON p.id = d.person_id

