#!/bin/bash

mailer=`which mailer`
user=$USER
config="/opt/email-cli"

sudo rm -fr $mailer $config

if [ ! -f $mailer ] && [ ! -d $config ]
then
	echo "Uninstall complete"
fi
