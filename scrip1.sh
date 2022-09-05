#!/bin/bash
#mostrar archivos dentro de la carpeta

echo "archivos dentro del directorio"

pwd=varlu

ls -r $varlu

echo "introducir archivo a borrar"

#leer archivo a borrar

read var1

date >> $var1

#crear carpeta y verificar si existe (.papelera)

if [ ! -d .papelera ]
then
	mkdir -p /home/miguelalba/tareadmin/.papelera
else
	echo ""
fi
#borrado del archivo basura

if [ -f $var1 ]
then
	echo "el archivo ha sido borrado"

	mv -u $var1 /home/miguelalba/tareadmin/.papelera

else
	echo "el archivo no existe"
fi

