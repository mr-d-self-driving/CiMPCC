#!/bin/bash

echo "map_name: $2"
file_name="$2"


if [ $# -eq 0 ]; then
    echo "No parameters were passed in, execute the program without parameters"

    roslaunch racecar_simulator simulate.launch
else
    echo "Passed in parameters to execute the program with parameters"

    roslaunch racecar_simulator simulate.launch map:=/home/ddrx/f1tenth_ws/toolkit/maps/$file_name/$file_name.yaml
fi