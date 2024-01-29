SELECT 
	lpep_pickup_datetime, 
	MAX(trip_distance) AS trip_distance 
FROM green_taxi_data 
GROUP BY lpep_pickup_datetime 
ORDER BY trip_distance DESC
LIMIT 1
