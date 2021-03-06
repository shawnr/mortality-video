#!/bin/bash

# Load script for Mortality viewer

echo "|------- Boot Initiated ----------|"
date

echo "loading mortality viewer"

cd /home/pi/.virtualenvs/cv
source bin/activate

echo "cv environment activated"

echo "starting face detection script"
# watch -n1 /home/pi/mortality/detect_faces.sh >> /home/pi/detect_faces.log &

cd /home/pi/mortality-video
python detect_faces.py >> /home/pi/detect_faces.log &

# Python 3 server
# python -m http.server &

# Python 2 server
python -m SimpleHTTPServer 8000 &

echo "web server starting"

sleep 2

echo "boot completed"
date
echo "|---------------------------------|"

# chromium-browser --kiosk http://localhost:8000
