
# Overall no-show rate
SELECT
    ROUND(
        100.0 * SUM(CASE WHEN No_show_values = '1' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS no_show_rate
FROM medical_no_shows;

# Gender influence
SELECT Gender,
    COUNT(*) AS appointnments,
    ROUND(
    100 * SUM(CASE WHEN No_show_values = '1' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS gender_influence
FROM medical_no_shows
GROUP BY Gender;

# Neighbourhood no show rate
SELECT Neighbourhood,
    COUNT(*) AS appointnments,
    ROUND(
    100 * SUM(CASE WHEN No_show_values = '1' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS neighbourhood_rate
FROM medical_no_shows
GROUP BY Neighbourhood
HAVING COUNT (*) > 100
ORDER BY neighbourhood_rate DESC
LIMIT 10;

#Days of the week with the highest no show rate
SELECT
    [Appointment weekday],
    COUNT(*) AS appointments,
    ROUND(
        100.0 * SUM(CASE WHEN No_show_values = '1' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS no_show_rate
FROM medical_no_shows
GROUP BY [Appointment weekday]
ORDER BY no_show_rate DESC;
