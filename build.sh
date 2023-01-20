#!/bin/bash
var="Hello World"
# Store date, hostname & pwd command output to shell variables
now="$(date)"
host_name="$(hostname)"
pwd="$(pwd)"
# print variables
echo "$var"
echo "Current date and time : $now"
echo "Computer name : $hostname_name"
echo "PWD: $pwd"
