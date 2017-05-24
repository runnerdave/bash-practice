#!/bin/bash

readonly cas01="http://casxprdap01.int.its.rmit.edu.au:8080/rmitcas/healthcheck.jsp"
readonly cas02="http://casxprdap02.int.its.rmit.edu.au:8080/rmitcas/healthcheck.jsp"
readonly cas03="http://casxprdap03.int.its.rmit.edu.au:8080/rmitcas/healthcheck.jsp"
readonly cas04="http://casxprdap04.int.its.rmit.edu.au:8080/rmitcas/healthcheck.jsp"
readonly cas05="http://casxprdap05.int.its.rmit.edu.au:8080/rmitcas/healthcheck.jsp"
readonly cas06="http://casxprdap06.int.its.rmit.edu.au:8080/rmitcas/healthcheck.jsp"
readonly cas07="http://casxprdap07.int.its.rmit.edu.au:8080/rmitcas/healthcheck.jsp"
readonly cas08="http://casxprdap08.int.its.rmit.edu.au:8080/rmitcas/healthcheck.jsp"


echo  "hitting cas01 PRD"
curl $cas01

echo  "hitting cas02 PRD"
curl $cas02

echo  "hitting cas03 PRD"
curl $cas03

echo  "hitting cas04 PRD"
curl $cas04

echo  "hitting cas05 PRD"
curl $cas05

echo  "hitting cas06 PRD"
curl $cas06

echo  "hitting cas07 PRD"
curl $cas07

echo  "hitting cas08 PRD"
curl $cas08
