#!/bin/bash
#env ## debug
echo "<config>" > /fah/config.xml
for var in "${!FAH_@}"
do
	key=${var#FAH_}
	key=${key/_/-}
	val=${!var}
	echo "<${key} value=\"${val}\"/>" >> /fah/config.xml
done
echo "</config>" >> /fah/config.xml
#cat /fah/config.xml ## DEBUG
exec FAHClient
