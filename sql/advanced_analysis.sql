-- High-risk patients
SELECT
    Age,
    Glucose,
    BMI,
    Outcome
FROM diabetes
WHERE Glucose > 140
AND BMI > 30;

-- Count diabetic patients
SELECT COUNT(*) AS diabetic_patients
FROM diabetes
WHERE Outcome = 1;

-- Count non-diabetic patients
SELECT COUNT(*) AS non_diabetic_patients
FROM diabetes
WHERE Outcome = 0;