#!/bin/bash

#Nombres del Archivos de configuraciones de variables globales 
#/home/vagrant/.profile
#~/.bashrc
FILE_PROFILE="/home/vagrant/.profile"
FILE_BASHRC="/home/vagrant/.bashrc"

#CONSTANTES de ENTORNO
ENV_CONSTANT="export NAME_CONS_VARIABLE=VALUE_CONS_VARIABLE"

#VARIABLES DE ENTORNO LEIDAS DESDE EL PC QUE EJECUTA EL VAGRANT, EN MACOS SE DEBE HACER source .zshrc si se usa HoMyShell
ENV_VARIABLE="export NAME_ENV_VARIABLE=$NAME_ENV_VARIABLE]}"

#Validaciones y seteo de Variables de entorno
#XX="# if running bash"
#if  grep "$XX" $FILE; then echo "Existe"; fi

#FILE_PROFILE
if  ! grep "$ENV_CONSTANT" $FILE_PROFILE
  then
    sudo echo "$ENV_CONSTANT" >> $FILE_PROFILE
  else
    echo "$ENV_CONSTANT Exist! in $FILE_PROFILE"
fi

#FILE_BASHRC
if  ! grep "$ENV_CONSTANT" $FILE_BASHRC
  then
    sudo echo "$ENV_CONSTANT" >> $FILE_BASHRC
  else
    echo "$ENV_CONSTANT Exist! in $FILE_BASHRC"
fi

#REMOVER VARIABLES, PARA VOLVER A CREAR
#FILE_PROFILE
if  grep "ENV_VARIABLE" $FILE_PROFILE
then
    grep -v "ENV_VARIABLE" $FILE_PROFILE > $FILE_PROFILE.temp && mv $FILE_PROFILE.temp $FILE_PROFILE
    sudo echo $ENV_VARIABLE >> $FILE_PROFILE
else
    sudo echo $ENV_VARIABLE >> $FILE_PROFILE
fi

#FILE_BASHRC
if  grep "ENV_VARIABLE" $FILE_BASHRC
then
    grep -v "ENV_VARIABLE" $FILE_BASHRC > $FILE_BASHRC.temp && mv $FILE_BASHRC.temp $FILE_BASHRC
    sudo echo $ENV_VARIABLE >> $FILE_BASHRC
else
    sudo echo $ENV_VARIABLE >> $FILE_BASHRC
fi

#Recompilar los archivos
#source .file
. $FILE_A
. $FILE_B