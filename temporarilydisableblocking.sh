#!/bin/bash
##TemporarilyTime is time in seconds
TemporarilyTime=600

sudo cp /etc/hosts /etc/hosts.d/temporarily-disabled && sudo cp /etc/hosts.d/hosts.conf /etc/hosts && echo -e "Temporarily suspending blocking for time (in seconds): $TemporarilyTime. If you cancel manually via ^C or closing terminal, turn back blocking via \"refreshblocking\" command." ;
sleep $TemporarilyTime && sudo mv /etc/hosts.d/temporarily-disabled /etc/hosts && echo -e "Temporary suspension has been lifted. Edithosts is activ"
exit 0
