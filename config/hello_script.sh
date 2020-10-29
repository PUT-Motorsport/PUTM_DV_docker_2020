#!/bin/bash

echo "Welcome in PUT Motorsport Driverless docker container!"
echo "======================================================================"
echo "Maintainer:		Mateusz Piechocki"
echo "Team page:		http://putmotorsport.pl/"
echo "Contribute on:	https://github.com/PUT-Motorsport/PUTM_DV_docker_2020"
echo "======================================================================"
echo "Operating system:"
lsb_release -irc
echo "======================================================================"
echo "ROS veriosn:" $(rosversion -d)
echo "======================================================================"
