#!/bin/bash
DIRECTORY="$1"
TOMCAT_DIRECTORY="/software/tomcat/apache-tomcat-7.0.41/"
if [ "$#" != "1" ]; then
    echo -e "Usage of the deploy script:\t$0 'DIRECTORY'\n"
    exit 1
else
    echo -n "Stop and start Tomcat?(y/n)"
    read RESTART
        
    if [ "$RESTART" == "y" ]; then
        echo 'shutdown tomcat'
        sh ${TOMCAT_DIRECTORY}bin/shutdown.sh
        echo 'rename catalina.out'
        MYDATE=`date +%Y-%m-%d:%H:%M:%S`
        echo 'The date is: '$MYDATE
        mv ${TOMCAT_DIRECTORY}logs/catalina.out ${TOMCAT_DIRECTORY}logs/catalina-$MYDATE.out
    fi

    echo 'remove existing files from webapps directory'
    
    ROOT=${TOMCAT_DIRECTORY}webapps/ROOT.war
    if [ -e $ROOT ]; then
        rm $ROOT
    fi
    ROOT_DIR=${TOMCAT_DIRECTORY}webapps/ROOT/
    if [ -d $ROOT_DIR ]; then
        rm -r $ROOT_DIR
    fi

    SERVICE=${TOMCAT_DIRECTORY}webapps/service.war
    if [ -e $SERVICE ]; then
        rm $SERVICE
    fi
    SERVICE_DIR=${TOMCAT_DIRECTORY}webapps/service/
    if [ -d $SERVICE_DIR ]; then
        rm -r $SERVICE_DIR
    fi

    HEALTHCHECK=${TOMCAT_DIRECTORY}webapps/healthCheck.war
    if [ -e $HEALTHCHECK ]; then
        rm $HEALTHCHECK
    fi
    HEALTHCHECK_DIR=${TOMCAT_DIRECTORY}webapps/healthCheck/
    if [ -d $HEALTHCHECK_DIR ]; then
        rm -r $HEALTHCHECK_DIR
    fi  

    M=${TOMCAT_DIRECTORY}webapps/m.war
    if [ -e $M ]; then
        rm $M
    fi
    M_DIR=${TOMCAT_DIRECTORY}webapps/m/
    if [ -d $M_DIR ]; then
        rm -r $M_DIR
    fi  

    PORTAL=${TOMCAT_DIRECTORY}webapps/portal.war
    if [ -e $PORTAL ]; then
        rm $PORTAL
    fi
    PORTAL_DIR=${TOMCAT_DIRECTORY}webapps/portal/
    if [ -d $PORTAL_DIR ]; then
        rm -r $PORTAL_DIR
    fi  
    
    echo 'moving new war files into webapps directory'
    cp $DIRECTORY/*.war ${TOMCAT_DIRECTORY}webapps/

    if [ "$RESTART" == "y" ]; then
        echo 'start tomcat'
        sh ${TOMCAT_DIRECTORY}bin/startup.sh
    fi
fi
exit 0