SELECT
    last_name,
    COUNT(notes) AS noted_with_dumbledore
FROM
    wizard_deposits
WHERE
    notes LIKE '%Dumbledore%'
GROUP BY
    last_name;