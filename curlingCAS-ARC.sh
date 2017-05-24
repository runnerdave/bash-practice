#!/bin/bash

readonly cas01="http://casxarcap01.int.its.rmit.edu.au:8080/rmitcas/healthcheck.jsp"
readonly cas02="http://casxarcap02.int.its.rmit.edu.au:8080/rmitcas/healthcheck.jsp"
readonly cas03="http://casxarcap03.int.its.rmit.edu.au:8080/rmitcas/healthcheck.jsp"
readonly cas04="http://casxarcap04.int.its.rmit.edu.au:8080/rmitcas/healthcheck.jsp"
readonly cas05="http://casxarcap05.int.its.rmit.edu.au:8080/rmitcas/healthcheck.jsp"
readonly cas06="http://casxarcap06.int.its.rmit.edu.au:8080/rmitcas/healthcheck.jsp"
readonly cas07="http://casxarcap07.int.its.rmit.edu.au:8080/rmitcas/healthcheck.jsp"
readonly cas08="http://casxarcap08.int.its.rmit.edu.au:8080/rmitcas/healthcheck.jsp"


echo  "hitting cas01 ARC"
res01=$(curl $cas01)

echo  "hitting cas02 ARC"
curl $cas02

echo  "hitting cas03 ARC"
curl $cas03

echo  "hitting cas04 ARC"
curl $cas04

echo  "hitting cas05 ARC"
curl $cas05

echo  "hitting cas06 ARC"
curl $cas06

echo  "hitting cas07 ARC"
curl $cas07

echo  "hitting cas08 ARC"
curl $cas08

echo "arc01 result:"
echo $res01