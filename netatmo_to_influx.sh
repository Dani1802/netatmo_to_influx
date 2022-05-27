#!/bin/bash

### Variables
USERNAME=
PASSWORD=
CLIENT_ID=
CLIENT_SECRET=
INFLUX_HOST=
INFLUX_PORT=

### Functions
source functions

### Main
JSON=`getData`
MODULES=`echo $JSON | jq '.body.devices[].modules[]'`

#[TypeOfModule] [ModuleName] [DatabaseName]
Base "Wohnzimmer" "Wohnzimmer"
Base "Büro" "Büro"
Indoor "Benjamin" "Benjamin"
Indoor "Clara" "Clara"
Indoor "Schlafzimmer" "Schlafzimmer"
Indoor "Bad" "Bad"
Indoor "Keller" "Keller"
Outdoor "Garten" "Garten"
Rain "Regen" "Regen"
Wind "Wind" "Wind"
