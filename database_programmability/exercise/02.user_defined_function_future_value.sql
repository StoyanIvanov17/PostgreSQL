CREATE OR REPLACE FUNCTION
    fn_full_name(first_name VARCHAR(50), last_name VARCHAR(50))
RETURNS VARCHAR(101) AS
$$
    DECLARE full_name VARCHAR(100);
    BEGIN
        IF first_name IS NULL OR last_name IS NULL THEN SELECT '[null]' INTO full_name;
        ELSE
            SELECT CONCAT_WS(' ', INITCAP(first_name), INITCAP(last_name)) INTO full_name;
        END IF;
    RETURN full_name;
    END;
$$
LANGUAGE plpgsql;