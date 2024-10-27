#!/bin/sh
#
# MacOS shell script for sprinkler blow-out using the OpenSprinkler API. 
# Cycles through all stations twice, 60 seconds each, and waits for the
# compressor to recycle
#
# Written by Mark Ehr 10/26/2024
#
# Placed in the public domain - feel free to use and redistribute
#
# Note that you will need to insert your OpenSprinkler IP address or hostname and port,
#  API key into each http call. You can also change the amount of time each valve is
#  held open by changing the value after the 't=' in each http call.
#
COMPRESSOR_RECYCLE_TIME=540 #time it takes for the compressor to recycle after each circuit

#Sprinkler 1 Pass 1
echo "Sprinkler 1 Pass 1 Start"
curl "http://192.168.7.173:8080/cm?pw=c40b1cbae4db844a9c57446048672038&sid=0&en=1&t=60"
sleep $COMPRESSOR_RECYCLE_TIME
echo "Sprinkler 1 Pass 1 Complete"
echo -n $'\a' #sound a bell through the console

#Sprinkler 2 Pass 1
echo "Sprinkler 2 Pass 1 Start"
curl "http://192.168.7.173:8080/cm?pw=c40b1cbae4db844a9c57446048672038&sid=1&en=1&t=60"
sleep $COMPRESSOR_RECYCLE_TIME
echo "Sprinkler 2 Pass 1 Complete"
echo -n $'\a'

#Sprinkler 3 Pass 1
echo "Sprinkler 3 Pass 1 Start"
curl "http://192.168.7.173:8080/cm?pw=c40b1cbae4db844a9c57446048672038&sid=2&en=1&t=60"
sleep $COMPRESSOR_RECYCLE_TIME
echo "Sprinkler 3 Pass 1 Complete"
echo -n $'\a'

#Sprinkler 4 Pass 1
echo "Sprinkler 4 Pass 1 Start"
curl "http://192.168.7.173:8080/cm?pw=c40b1cbae4db844a9c57446048672038&sid=3&en=1&t=60"
sleep $COMPRESSOR_RECYCLE_TIME
echo "Sprinkler 4 Pass 1 Complete"
echo -n $'\a'

#Sprinkler 5 Pass 1
echo "Sprinkler 5 Pass 1 Start"
curl "http://192.168.7.173:8080/cm?pw=c40b1cbae4db844a9c57446048672038&sid=4&en=1&t=60"
sleep $COMPRESSOR_RECYCLE_TIME
echo "Sprinkler 5 Pass 1 Complete"
echo -n $'\a'

#Sprinkler 6 Pass 1
echo "Sprinkler 6 Pass 1 Start"
curl "http://192.168.7.173:8080/cm?pw=c40b1cbae4db844a9c57446048672038&sid=5&en=1&t=60"
sleep $COMPRESSOR_RECYCLE_TIME
echo "Sprinkler 6 Pass 1 Complete"
echo -n $'\a'

#Sprinkler 7 Pass 1
echo "Sprinkler 7 Pass 1 Start"
curl "http://192.168.7.173:8080/cm?pw=c40b1cbae4db844a9c57446048672038&sid=6&en=1&t=60"
sleep $COMPRESSOR_RECYCLE_TIME
echo "Sprinkler 7 Pass 1 Complete"
echo -n $'\a'

#Sprinkler 8 Pass 1
echo "Sprinkler 8 Pass 1 Start"
curl "http://192.168.7.173:8080/cm?pw=c40b1cbae4db844a9c57446048672038&sid=7&en=1&t=60"
sleep $COMPRESSOR_RECYCLE_TIME
echo "Sprinkler 8 Pass 1 Complete"
echo -n $'\a'

# repeat one more time to make sure everything is blown out

#Sprinkler 1 Pass 2
echo "Sprinkler 1 Pass 2 Start"
curl "http://192.168.7.173:8080/cm?pw=c40b1cbae4db844a9c57446048672038&sid=0&en=1&t=60"
sleep $COMPRESSOR_RECYCLE_TIME
echo "Sprinkler 1 Pass 2 Complete"
echo -n $'\a'

#Sprinkler 2 Pass 2
echo "Sprinkler 2 Pass 2 Start"
curl "http://192.168.7.173:8080/cm?pw=c40b1cbae4db844a9c57446048672038&sid=1&en=1&t=60"
sleep $COMPRESSOR_RECYCLE_TIME
echo "Sprinkler 2 Pass 2 Complete"
echo -n $'\a'

#Sprinkler 3 Pass 2
echo "Sprinkler 3 Pass 2 Start"
curl "http://192.168.7.173:8080/cm?pw=c40b1cbae4db844a9c57446048672038&sid=2&en=1&t=60"
sleep $COMPRESSOR_RECYCLE_TIME
echo "Sprinkler 3 Pass 2 Complete"
echo -n $'\a'

#Sprinkler 4 Pass 2
echo "Sprinkler 4 Pass 2 Start"
curl "http://192.168.7.173:8080/cm?pw=c40b1cbae4db844a9c57446048672038&sid=3&en=1&t=60"
sleep $COMPRESSOR_RECYCLE_TIME
echo "Sprinkler 4 Pass 2 Complete"
echo -n $'\a'

#Sprinkler 5 Pass 2
echo "Sprinkler 5 Pass 2 Start"
curl "http://192.168.7.173:8080/cm?pw=c40b1cbae4db844a9c57446048672038&sid=4&en=1&t=60"
sleep $COMPRESSOR_RECYCLE_TIME
echo "Sprinkler 5 Pass 2 Complete"
echo -n $'\a'

#Sprinkler 6 Pass 2
echo "Sprinkler 6 Pass 2 Start"
curl "http://192.168.7.173:8080/cm?pw=c40b1cbae4db844a9c57446048672038&sid=5&en=1&t=60"
sleep $COMPRESSOR_RECYCLE_TIME
echo "Sprinkler 6 Pass 2 Complete"
echo -n $'\a'

#Sprinkler 7 Pass 2
echo "Sprinkler 7 Pass 2 Start"
curl "http://192.168.7.173:8080/cm?pw=c40b1cbae4db844a9c57446048672038&sid=6&en=1&t=60"
sleep $COMPRESSOR_RECYCLE_TIME
echo "Sprinkler 7 Pass 2 Complete"
echo -n $'\a'

#Sprinkler 8
echo "Sprinkler 8 Pass 2 Start"
curl "http://192.168.7.173:8080/cm?pw=c40b1cbae4db844a9c57446048672038&sid=7&en=1&t=60"
sleep $COMPRESSOR_RECYCLE_TIME
echo "Sprinkler 8 Pass 2 Complete"
echo -n $'\a'
Echo "**** Sprinkler Blowout Complete"