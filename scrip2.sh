#!/bin/bash

#muestra archivos dentro de la papelera
echo "estos son tus archivos eliminados"
ls .papelera

echo "quiere ver la fecha de eliminación"
echo ""
echo "sus opciones es si o no"
read var1
	
#pido que teecle dato a recuperar

echo "escribe tu que quieras ver la fecha de edición"

read var2

if [ $var1 == si ]
then
	cat /home/miguelalba/tareadmin/.papelera/$var2 | tail -n 1
else
	exit 0
fi

#hubico la carpeta papelera
cd /home/miguelalba/tareadmin/.papelera

echo "quiere recuperar su archivo responda si para si  y no para no"
read var3
cd /home/miguelalba/tareadmin/.papelera

if [ $var3 == si ]

then
	echo "su archivo a sido recuperado"
	mv $var2 /home/miguelalba/tareadmin/
else
	echo "vuelva a comenzar"
fi

