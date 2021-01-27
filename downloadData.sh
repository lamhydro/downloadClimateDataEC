#!/bin/sh



# WHERE;
# • year = change values in command line (`seq 1998 2008)
# • month = change values in command line (`seq 1 12)
# • format= [csv|xml]: the format output
# • timeframe = 1: for hourly data
# • timeframe = 2: for daily data
# • timeframe = 3 for monthly data
# • Day: the value of the "day" variable is not used and can be an arbitrary value
# • For another station, change the value of the variable stationID
# • For the data in XML format, change the value of the variable format to xml in the URL.

for year in `seq 2013 2016`;
do
  for month in `seq 1 12`;
  do
  #wget --content-disposition "http://climate.weather.gc.ca/climate_data/bulk_data_e.html?format=csv&stationID=1706&Year=${year}&Month=${month}&Day=14&timeframe=1&submit= Download+Data" ;
  wget --content-disposition "http://climate.weather.gc.ca/climate_data/bulk_data_e.html?format=csv&stationID=3002&Year=${year}&Month=${month}&Day=14&timeframe=1&submit= Download+Data" ;
  done;
done
