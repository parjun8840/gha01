#!/bin/bash
set -e
usage() {
  echo "usage: ${0##*/} -u <SLACK_URL> -t <TEXT>"
  exit 1
}
send_slack() {
echo "Sending msg to slack"
curl -k -X POST -H 'Content-type: application/json' --data "{ \"type\":\"mrkdwn\", \"text\": \"${text}\" }" "${slack_url}"
}
while getopts ":u:t:" opt; do

 case $opt in
   u) slack_url="$OPTARG"
   ;;
   t) text="$OPTARG"
   ;;
   \?) echo "Invalid option -$OPTARG" >&2 && usage
   ;;
  esac
done

if [ -z "$slack_url" ] || [ -z "$text" ]
then
usage
fi

send_slack
