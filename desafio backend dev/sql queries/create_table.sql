CREATE TABLE equipment_values (
    ts_value TIMESTAMP WITH TIME ZONE,
    id_enterprise SMALLINT,
    id_equipment SMALLINT,
    net_production_incr NUMERIC,
    gross_production_incr NUMERIC,
    scrap_incr NUMERIC,
    speed NUMERIC,
    tp_equipment SMALLINT);