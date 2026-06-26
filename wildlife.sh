#!/bin/bash

# wildlife.sh -- Query NBN Atlas for historical wildlife records
# by zone and year along the Nene and Welland corridor
# Author: fionnlinux
# Usage: ./wildlife.sh

# Zone configuration
ZONE_NAME="Rockingham Forest"
LAT="52.5"
LON="-0.65"
RADIUS="15"
YEAR="1950"
PAGE_SIZE="10"

# Query NBN Atlas
RESPONSE=$(curl -s \
  "https://records-ws.nbnatlas.org/occurrences/search?\
q=*&lat=$LAT&lon=$LON&radius=$RADIUS\
&fq=year:$YEAR&pageSize=$PAGE_SIZE")

# Check curl succeeded
if [ $? -ne 0 ]; then
    echo "Error: could not reach NBN Atlas API."
    exit 1
fi

# Check records exist
TOTAL=$(echo "$RESPONSE" | jq '.totalRecords')

if [ "$TOTAL" -eq 0 ]; then
    echo "No records found for $ZONE_NAME in $YEAR."
    exit 0
fi

echo "Zone: $ZONE_NAME"
echo "Year: $YEAR"
echo "Total records: $TOTAL"
echo "Showing first $PAGE_SIZE:"
echo ""

# Parse and display
echo "$RESPONSE" | jq -r '
  .occurrences[] |
  "\(.vernacularName // .scientificName) | \(.year) | \(.gridReference // "no grid ref")"
'

echo "Done."
