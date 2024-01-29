SELECT 
	"doloc"."Zone",
	MAX(tip_amount) AS tip
FROM green_taxi_data
	LEFT JOIN zone AS puloc 
		ON "green_taxi_data"."PULocationID" = "puloc"."LocationID"
	LEFT JOIN zone AS doloc 
		ON "green_taxi_data"."DOLocationID" = "doloc"."LocationID"
WHERE 
	"puloc"."Zone" = 'Astoria'
	AND CAST(lpep_pickup_datetime AS DATE) BETWEEN '2019-09-01' AND '2019-09-30'
GROUP BY "doloc"."Zone"
ORDER BY tip DESC
LIMIT 1
