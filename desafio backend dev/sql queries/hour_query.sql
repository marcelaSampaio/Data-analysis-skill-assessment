SELECT 
    date_trunc('hour', ts_value) AS hour_interval,
    SUM(net_production_incr) AS net_production_incr,
    SUM(gross_production_incr) AS gross_production_incr,
    SUM(scrap_incr) AS scrap_incr,
    AVG(speed) AS avg_speed,
    SUM(gross_production_incr - net_production_incr) = SUM(scrap_incr) AS scrap_check
FROM
    equipment_values
GROUP BY
    hour_interval
ORDER BY
    hour_interval;

