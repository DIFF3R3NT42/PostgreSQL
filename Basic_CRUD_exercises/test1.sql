CREATE VIEW "view_continents_countries_currencies_details"
AS
    SELECT
        CONCAT_WS
        (': ', con.continent_name, con.continent_code)
            AS continent_details,
        CONCAT_WS(' - ', cou.country_name, cou.capital, cou.area_in_sq_km, 'Km2')
        AS country_information,
        CONCAT(cur.description, ' (', cur.currency_code, ')')
        AS currencies
    FROM
     continents AS con,
     countries AS cou,
     currencies AS cur
ORDER BY country_information,
         currencies;