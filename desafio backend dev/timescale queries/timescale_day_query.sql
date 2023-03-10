SELECT 
    time_bucket('1 day', ts_value) AS day_interval,
    SUM(net_production_incr) AS net_production_incr,
    SUM(gross_production_incr) AS gross_production_incr,
    SUM(scrap_incr) AS scrap_incr,
    AVG(speed) AS avg_speed,
    SUM(gross_production_incr - net_production_incr) = SUM(scrap_incr) AS scrap_check
FROM
    equipment_values
GROUP BY
    day_interval
ORDER BY
    day_interval;
