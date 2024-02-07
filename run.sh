#! /bin/bash

#sleep to allow network to start
sleep 10

#makes it writable since its not be deafult for some odd reason
sudo mount -o remount,rw / ; sudo mount -o remount,rw /boot &

#start server to acess json and of course, the script itself
#the ampersand at the end of each is to fork the process
python3 -m http.server 8080 &
python3 /home/pi/TFLite_detection_webcam.py --modeldir=/home/pi/Notes &
