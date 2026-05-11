-- Average glucose by diabetes status
SELECT
    Outcome,
    AVG(Glucose) AS average_glucose
FROM diabetes
GROUP BY Outcome;

-- Average age by diabetes status
SELECT
    Outcome,
    AVG(Age) AS average_age
FROM diabetes
GROUP BY Outcome;

-- Average BMI by diabetes status
SELECT
    Outcome,
    AVG(BMI) AS average_bmi
FROM diabetes
GROUP BY Outcome;