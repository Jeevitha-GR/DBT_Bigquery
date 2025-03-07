SELECT 
    id,  
    first_name,
    last_name,
    LOWER(email) AS email,
    CASE 
        WHEN gender = 'Male' THEN 'M' 
        WHEN gender = 'Female' THEN 'F' 
        ELSE NULL 
    END AS gender,
    joining_date,
    CONCAT(first_name, ' ', last_name) AS full_name,
    {{ get_date('joining_date') }}
FROM `bigquery-poc-443509`.`curated`.`stg_person_details`
