#!/bin/sh
{
    for i in $(seq 0 20 100); do
        sleep 1
        echo $i
    done
} | whiptail --gauge "Please wait while installing" 6 60 0
