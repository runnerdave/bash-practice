#!/bin/bash
#This script moves files from a source folder to a destination folder
#notice that is an infinite queue so you need to ^c to kill infinite
#SETUP:
#-----
# 1. Create the logfile using the variable LOG
# 2. Create the source folder or configure an existing one for the variable SOURCE
# 3. Configure the DESTINATION variable with the target directory appropriate
readonly SOURCE="source"
readonly DESTINATION="/software/tomcat/apache-tomcat-7.0.41/webapps/"
readonly LOG=fileMoverQueue.log
readonly TOMCAT_STOP=1
readonly TOMCAT_BIN=/software/tomcat/apache-tomcat-7.0.41/bin

while true; do
    #check if source is not empty
    if [ "$(ls -A $SOURCE)" ]; then
        y | mv $SOURCE/*.* $DESTINATION 
        echo "files moved on `date`" >> "$LOG"
        #shutdown tomcat
        case "$TOMCAT_STOP" in
            1)
            echo -e "Guard: \"Stopping Tomcat in a normal way.\"\n"
            sh $TOMCAT_BIN/shutdown.sh
            sleep 10
            #start tomcat
            sh $TOMCAT_BIN/startup.sh
            ;;
            2)
            echo -e "Guard: \"Stopping Tomcat in a forced way\"\n"
            pkill -9 -f tomcat
            sleep 10
            #start tomcat
            sh $TOMCAT_BIN/startup.sh
            ;;
            3)
            echo -e "Guard: \"Stopping Tomcat in another forced way\"\n"
            kill $(ps aux | grep '[c]atalina' | awk '{print $2}')
            sleep 10
            #start tomcat
            sh $TOMCAT_BIN/startup.sh
            ;;
            *)
            echo -e "Guard: \"Not stopping Tomcat\"\n"
            ;;
        esac

        
    fi
    sleep 5
done