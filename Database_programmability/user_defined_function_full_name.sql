CREATE OR REPLACE FUNCTION fn_full_name(VARCHAR, VARCHAR)
RETURNS VARCHAR AS
$$
    DECLARE
        first_name ALIAS FOR $1;
        last_name ALIAS FOR $2;
    BEGIN
        RETURN CONCAT(INITCAP(first_name), ' ',INITCAP(last_name));
    END
$$
language plpgsql;