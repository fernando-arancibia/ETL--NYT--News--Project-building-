#!/bin/bash

# Request the NYT Archive API per Year/Month from 2020-01 to 2022-11
# Save the result of every request in a different file named NYT_YYYY_MM_test.json

for year in {2020..2022}
do
  echo $year
  for month in {1..12}
  do
    # We are in November, for this reason DO NOT request December
    if [[ $year == 2022 && $month == 12 ]]
    then
      break
    fi

    # Request API
    data=$(curl -X GET https://api.nytimes.com/svc/archive/v1/$year/$month.json?api-key=pd1P76og3dcjPtr0p5aj3ER0sqVpcdPy -s)

    # Save into a new file
    echo $data > "./nyt_data/NYT_$((year))_$((month)).json"

    # Wait 3 seconds
    sleep 3

  done
done