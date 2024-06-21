CREATE OR REPLACE FUNCTION
    udf_accounts_photos_count(account_username VARCHAR(30))
RETURNS INT AS
$$
    DECLARE number_of_photos INT;
    BEGIN
        SELECT
            COUNT(ap.photo_id)
        FROM
            accounts AS a
        JOIN
            accounts_photos AS ap
        ON
            a.id = ap.account_id
        WHERE
            a.username = account_username
        INTO number_of_photos;
        RETURN number_of_photos;
    END;
$$
LANGUAGE plpgsql;