-- Method_1_using_REGEXP

SELECT * FROM patients WHERE conditions REGEXP '\\bDIAB1'

-- Method_2_using_like
SELECT *
FROM Patients
WHERE conditions LIKE '% DIAB1%' OR conditions LIKE 'DIAB1%'