#!/bin/bash

if [ $# -lt 1  ]
then
	echo "usages: if.sh filename"
fi

if [ -x $1 ]
then
	echo x
elif [ -r $1  ]
then
	echo r

elif [ -w $1 ]
then
	echo w

elif [ -c $1 ]
then
	echo c
fi


