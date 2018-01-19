#!/bin/bash

date
echo "detecting faces"

cd /home/pi/.virtualenvs/cv
source bin/activate

cd /home/pi/mortality-video
python detect_faces.py