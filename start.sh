#!/bin/bash
echo "<config>" > /fah/config.xml
for var in "${!FAH_@}"
do
	key=${var#FAH_}
	val=${!var}
	echo "<${key} value=\"${val}\"/>" >> /fah/config.xml
done
echo "</config>" >> /fah/config.xml

exec FAHClient
