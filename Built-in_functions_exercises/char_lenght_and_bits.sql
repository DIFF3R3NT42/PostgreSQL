SELECT
    CONCAT(mou.mountain_range, ' ', pea.peak_name)
    AS mountain_information,
    char_length(mou.mountain_range || ' ' || pea.peak_name)
    AS characters_length,
    BIT_LENGTH(mou.mountain_range || ' ' || pea.peak_name)
    AS bits_of_a_tring
FROM
    mountains AS mou,
    peaks AS pea
WHERE pea.mountain_id = mou.id;
