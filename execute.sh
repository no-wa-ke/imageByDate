#!/bin/sh

binary_path=`dirname ${0}`
source=${1}
destination=${2}

if [ -z ${source} ]
then
	echo "Source is not specified, operation aborted."
	exit
fi

if [ ! -d ${source} ]
then
	echo "Source is not a directory, operation aborted."
	exit
fi

if [ -z ${destination} ]
then
	echo "Destination is not specified, operation aborted."
	exit
fi

if [ ! -d ${destination} ]
then
	echo "Destination is not a directory, operation aborted."
	exit
fi

find -s ${source} -type f -iname "*.*" -exec ${binary_path}/subroutine.sh ${destination} {} \;