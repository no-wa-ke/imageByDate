#!/bin/sh

base=${1}
target=${2}

if [ -z ${base} ]
then
	echo "Base is not specified, operation aborted."
	exit
fi

if [ ! -d ${base} ]
then
	echo "Base is not a directory, operation aborted."
	exit
fi

if [ -z ${target} ]
then
	echo "Target is not specified, operation aborted."
	exit
fi

if [ ! -f ${target} ]
then
	echo "Target is not found, operation aborted."
	exit
fi

date=`stat -f %Sm -t %Y%m%d ${target}`

if [ ! -d ${base}/${date} ]
then
	mkdir ${base}/${date}
fi

mv ${target} ${base}/${date}