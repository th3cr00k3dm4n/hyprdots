#!/bin/bash

API_KEY="your_openweathermap_api_key"
CITY="your_city"
UNITS="metric" # You can change this to imperial for Fahrenheit

weather=$(curl -s "http://api.openweathermap.org/data/2.5/weather?q=$CITY&units=$UNITS&appid=$API_KEY")

echo $weather
