#Instructions
* scp the file into the server, for example:
    - cd /cygdrive/k/Resources/ITS/UO/BAS/Apps/Our Applications/myRMIT/completeSite
    - scp -r 2.0.19_AWS_INT_TST_completeSite_oua_csp/ e67997@10.91.1.9:~

* crate the following directories in your home directory of the server
    - data
    - source

* sudo to javauser and start the queue: fileMoverQueue.sh
    - ensure that the DESTINATION folder is set to the webapps folder of tomcat
    - ensure the script is executable and readable by javauser
    - ensure that fileMoverQueue.log is writable by javauser
    - to start the queue use the nohup command:
        + $ nohup ./fileMoverQueue.sh & 

* copy the latest scp files into the data directory
    - remove existing files from data directory:
        + rm -f data/*.war
    - cp -r 2.0.19_AWS_INT_TST_completeSite_oua_csp/*.war data
    - you may need to allow write and read access to the directory:
        + chmod u+w,u+r -R 2.0.19_AWS_INT_TST_completeSite_oua_csp/

* in your home directory in the target server (don't be javauser) run the script: deploy-myRMIT-TST.sh
    - ensure deploy-myRMIT-TST.sh is executable
        + $ chmod u+x,u+r deploy-myRMIT-TST.sh
