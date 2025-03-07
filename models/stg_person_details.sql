WITH stg_person_details AS (
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
    CONCAT(first_name, ' ', last_name) AS full_name
    FROM stg_person_details
)

SELECT * FROM stg_person_details;