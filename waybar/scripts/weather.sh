# !bin/bash
LAT=40.8447
LONG=-73.4075

RESULT1=$(wget -qO- https://api.weather.gov/points/$LAT,$LONG)

FORECAST_URL=$(echo $RESULT1 | jq -r '.properties.forecast')

RESULT2=$(wget -qO- $FORECAST_URL)
echo $RESULT2
