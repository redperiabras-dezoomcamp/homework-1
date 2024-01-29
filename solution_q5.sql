SELECT 
	"zone"."Borough",
	SUM(total_amount) AS amount
FROM green_taxi_data
	LEFT JOIN zone 
		ON "green_taxi_data"."PULocationID" = "zone"."LocationID"
WHERE CAST("green_taxi_data"."lpep_pickup_datetime" AS DATE) = '2019-09-18'
	AND "Borough" IS NOT NULL
GROUP BY "zone"."Borough"
ORDER BY "amount" DESC
LIMIT 3
