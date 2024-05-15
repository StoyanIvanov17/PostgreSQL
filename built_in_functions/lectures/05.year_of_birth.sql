SELECT
    first_name,
    last_name,
    EXTRACT('Year' FROM born)
FROM
    authors;