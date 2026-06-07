select * from hr_dataset;

-- 1. Total Employees
SELECT COUNT(*) AS total_employees
FROM hr_dataset;

-- 2. Total Attrition Count

select count(*) As attrition_count
from hr_dataset where attrition = 'Yes';

-- 3. Attrition Rate (%)
SELECT
ROUND(
    COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) * 100.0
    / COUNT(*),
    2
) AS attrition_rate
FROM hr_dataset;

-- 4. Department-wise Attrition
SELECT
    department,
    COUNT(*) AS total_employees,
    COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) AS attrition_count
FROM hr_dataset
GROUP BY department
ORDER BY attrition_count DESC;