#!/bin/bash

reqs=( vim expect openssl )

for req in ${reqs[@]}
do
	req_path=`which $req`
	if [ -z $req_path ]
	then
		echo "Requirement not satisfied: $req not found"
		exit 1
	fi
done
echo "Requirements Satisfied"
