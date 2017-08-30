#!/bin/bash
function error_exit
{
    eventHelper.py --msg "$1" --severity ERROR
    exit $2
}

export HOME=/home/ec2-user
echo "export home"

OUT=$(/opt/elasticbeanstalk/containerfiles/ebnode.py --action npm-install 2>&1) || error_exit "Failed to run npm install.  $OUT" $?
echo $OUT