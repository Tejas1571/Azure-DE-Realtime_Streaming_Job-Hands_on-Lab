SELECT
    System.timestamp() as Time,
    avg(temperature) as avg_temperature,
    avg(humidity) as avg_humidity
INTO
    [IOTOut]
FROM
    [IOTin] group by tumblingwindow(Second, 10)