#!/bin/bash
# -*- ENCODING: UTF-8 -*-

# Este script es software libre. Puede redistribuirlo y/o
# modificar-lo bajo los términos de la Licencia Pública General
# de GNU según es publicada por la Free Software Foundation,
# bien de la versión 3 de dicha Licencia o bien (según su
# elección) de cualquier versión posterior.

# Si usted hace alguna modificación en esta aplicación, deberá
# siempre mencionar al autor original de la misma.       

# Desarrollador : Nerio Villalobos
# Nick          : Alqx Villalobos
# Github        : https://github.com/alqx
# Twitter       : http://twitter.com/alqx8x
# Facebook      : http://fb.com/alqx.villalobos
# Telegram      : (+58) 414-8596846
# Canal Telegram: https://telegram.me/procai

# El proposito de este SCRIPT es formar parte de las "Armas de la inteligencia
# y el saber para lograr la Independencia Científico-tecnológica"
# Frase del Presidente Hugo Chávez, en la inauguración del Cenditel
# (Centro Nacional de Desarrollo en Tecnologías Libres)
# 10 de Nov de 2006                                       

#<Pro-Cai ALQX, script ALQX(base para crear tareas ejecutables en bash), 
#Con este script podras semi-automatizar procesos en la terminal, creando ejecutables en el menu para su facil acceso>

#Copyright (C) 2016 Tribu Pro-Cai<2016> <Alqx Villalobos>
#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#GNU General Public License for more details.
#You should have received a copy of the GNU General Public License
#along with this program. If not, see <http://www.gnu.org/licenses/>.

#Más Información:
#http://www.creativecommonsvenezuela.org.ve/cc-licencias
#http://creativecommons.org/choose/?lang=es_ES
#http://www.gnu.org/licenses/licenses.es.html
#http://www.gnu.org/licenses/license-list.html
#http://www.gnu.org/licenses/gpl-howto.es.html
#http://www.gnu.org/help/evaluation.html
#http://www.gnu.org/licenses/gpl-3.0.html#howto

####PARA CORRER ESTE SCRIPT#####
#mover el script a carpeta personal
#Abrir terminal
#copiar y pegar en terminal    --> cd /home/$USER
#ingresa como superusuario     --> su
#ingresas    contraseña        --> *******
#copiar y pegar en terminal    --> chmod 777 scriptX.sh
#y para ejecutarlo             --> ./scriptX.sh

##CONFIGURACIONES DEL SCRIPT##


##RUTA DEL REPOSITORIO LOCAL A CREAR
repoLocal='/opt/Tribu.Pro-Cai/';

##CARPETA DEL SERVIDOR WEB
www='/var/www/html/'

#nombre del comando a crear para que se ejecute por terminal
nomEjecutable='base'
#rutal actual
ruta=`pwd`

#ruta alternativa donde se creara la orden para que se active por terminal
rutaNueva='/usr/local/bin/'

#la variable $0 guarda el nombre del script que se esta ejecutandose ahora limpiamos la variable con la funcion para eliminar la descripcion de ejecucion 
#nombre del script ejecutandose en terminal
archivoEjecutandose=${0/.\/}
archivoEjecutandose=${0//$rutaNueva}
#echo $archivoEjecutandose


##configuraciones basicas para el sistema sin importar q SO GNU/Linus use
mkdir -p $repoLocal
chmod -R 777 $repoLocal

clear
function solo_root(){
[ $( id -u ) != 0 ] && zenity --error --text="¡El SCRIPT debe ser ejecutado como ROOT SI ES POR PRIMERA VEZ!\n SINO ESCRIBE (sin las comillas) \n'sudo $nomEjecutable'" && exit 1
}
solo_root
echo "
00000000000000 0000000000000  000 000000000000   000       000
00000000000000 00000000000000 000 0000000000000  000       000
     0000      000        000 000 000       000  000       000
     0000      00000000000000 000 0000000000000  000       000
     0000      0000000000000  000 00000000000000 000       000
     0000      000     000    000 000        000 000       000
     0000      000      000   000 00000000000000 0000000000000
     0000      000       000  000 0000000000000  0000000000000

                            01010
                          101111100110
        11001001101100110001100111010100                                       1111
  01001101100101010010000101000010011001111                                100111101
00101011111010111111000011101001011010011101111                      11010111100101000
100100000010010110101100111000000100010111101101010001110110101001100110110011100110101
0000010101111110111000011010010011011001110000011111111101101001011110101001110110101111
100110010100001100100100011101000010001000001101001000000001111000010011010010000110100
10110100100101100111101001101010011101110111101000101000000010101101111000111111001001
1000101000110010110011011111101011101111011110110010000011100100100001111  001  11
1001001110100011011010000011110000111010110001001000101001111000110         1    1
101110011010100101001011101110001000100000010111       1      1
011100101001100111010110011101
011001110010101000100011111111101
0011100100110111010001000100101110 1
001110100110011100010110100010110011010100110  1                     1          11
10001000000010010111100011011000000101011101001000110101110100110100111     111101
01111011111100001100000011000110111000101111000111111111001111101101001001001001100
011011110101111010110111011110011100010000101000100000011000110100110011000011000100
0111110100111000100001001111010000100001111110011110011100011001101100110101110101
0111110110101111100010010010000001110001001110001111111111010011000000001001011
1011110111100110000100010011100110011001010100101011011111010000000110001000
010100111001101010101000000101010101010100100110111100
10001010111001100110111
0000010110
110110
00

0000000000000  0000000000000  0000000000000            0000000000000 0000000000000 000
00000000000000 00000000000000 0000000000000            0000000000000 0000000000000 000
000        000 000        000 000       000            000           000       000 000
00000000000000 00000000000000 000       000  ========  000           000       000 000
0000000000000  0000000000000  000       000  ========  000           0000000000000 000
000            000     000    000       000            000           0000000000000 000
000            000      000   0000000000000            0000000000000 000       000 000
000            000       000  0000000000000            0000000000000 000       000 000"

#Nombre del archivo que contendra nuestra informacion publica junto a la licencia
LEERME=${repoLocal}LEERME.html

#condicional de si exite el archivo LEERME o no.
if [[ -f  $LEERME ]]; then
    echo "Existe Leerme"
    chmod 777 $LEERME
else
    echo "No existe Leerme y fue creado"
    touch $LEERME
echo "<!DOCTYPE html>
<html lang=\"es\">
<head>
    <title>Tribu Pro-Cai</title>
    <meta charset=\"utf-8\">
</head>

<body>
<center>
<header>
<h5 align=\"justify\">
Desarrollador  : Nerio Villalobos<br>
Nick           : Alqx Villalobos<br>
Github         : https://github.com/alqx<br>
Twitter        : http://twitter.com/alqx8x<br>
Facebook       : http://fb.com/alqx.villalobos<br>
Telegram       : (+58) 414-8596846<br>
Canal Telegram : https://telegram.me/procai<br>
Correo         : alqx.villalobos@gmail.com<br>
</h5>

<h5 align=\"justify\">
Organización   : Tribu Pro-Cai (Programador Caimán)<br>
Nick           : Joropo Cai<br>
Twitter        : https://twitter.com/pro_cai<br>
Facebook       : https://www.facebook.com/groups/tribu.pro.cai/<br>
Correo         : tribu.pro.cai@gmail.com<br>
Pagina Web     : http://www.monagas.gob.ve/tribu/
</h5>

<h5 align=\"justify\">
# Advertencia<br>
Cada usuario es responsable del uso y los posibles daños que pueda ocasionar
en los equipos con los que se utilice esta aplicación, este script tiene fines
educativos para formar parte de las \"Armas de la inteligencia y el saber para lograr la Independencia Científico-tecnológica\".<br>

<br>-Frase del Presidente Hugo Chávez, en la inauguración del Cenditel (Centro Nacional de Desarrollo en Tecnologías Libres)<br> 10 de Nov de 2006 
</h5>
</header>

<section>
<article style=\"text-align: justify; font-size: 12px; font-weight: bold;\">

&#60;Script ALQX (base para crear tareas ejecutables en bash) Alpha 0.8, Con este script podras semi-automatizar procesos en la terminal, creando ejecutables en el menu para su facil acceso.&#62;
<br><br>
Copyright (C) 2016 Tribu Pro-Cai&#60;2016&#62; &#60;Alqx Villalobos&#62;
<br><br>
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.
You should have received a copy of the GNU General Public License
along with this program. If not, see &#60;http://www.gnu.org/licenses/&#62;.
</article>
</section>

<footer>
<h3>Más Información:</h3>
<article style=\"text-align: justify;\">
<a target=\"_blank\" href=\"http://www.creativecommonsvenezuela.org.ve/cc-licencias\">http://www.creativecommonsvenezuela.org.ve/cc-licencias</a><br>
<a target=\"_blank\" href=\"http://creativecommons.org/choose/?lang=es_ES\">http://creativecommons.org/choose/?lang=es_ES</a><br>
<a target=\"_blank\" href=\"http://www.gnu.org/licenses/licenses.es.html\">http://www.gnu.org/licenses/licenses.es.html</a><br>
<a target=\"_blank\" href=\"http://www.gnu.org/licenses/license-list.html\">http://www.gnu.org/licenses/license-list.html</a><br>
<a target=\"_blank\" href=\"http://www.gnu.org/licenses/gpl-howto.es.html\">http://www.gnu.org/licenses/gpl-howto.es.html</a><br>
<a target=\"_blank\" href=\"http://www.gnu.org/help/evaluation.html\">http://www.gnu.org/help/evaluation.html</a><br>
<a target=\"_blank\" href=\"http://www.gnu.org/licenses/gpl-3.0.html#howto\">http://www.gnu.org/licenses/gpl-3.0.html#howto</a><br>
</article>
</footer>
</center>
</body>
</html>">>$LEERME

    chmod 777 $LEERME
fi

##CONDICIONAL A VERIFICAR SI SE CREO EL EJECUTABLE
if [[ -f  $rutaNueva$nomEjecutable ]]; then
    echo " "
    #echo "existe pero se borro el EJECUTABLE"
    #rm $rutaNueva$nomEjecutable
else
    echo "no existe EJECUTABLE pero se CREO!"
    touch $rutaNueva$nomEjecutable
echo "#!/bin/bash
# -*- ENCODING: UTF-8 -*-
$rutaNueva$archivoEjecutandose">>$rutaNueva$nomEjecutable
    chmod 777 $rutaNueva$nomEjecutable
fi

##CONDICIONAL PARA RESPALDAR SCRIPT Y SINCRONIZARLO CON EL EJECUTABLE
if [[ -f $rutaNueva$archivoEjecutandose ]]; then
    echo " "
    #echo "existe pero se borro el SCRIPT"
    #rm $rutaNueva$archivoEjecutandose
else
    echo "no existe SCRIPT pero se CREO!"
    cp $ruta/$archivoEjecutandose $rutaNueva
    chmod 777 $rutaNueva$archivoEjecutandose
fi

if [[ -f $rutaNueva$nomEjecutable && -f $rutaNueva$archivoEjecutandose ]]; then
    #if [[ -f /usr/share/applications/${nomEjecutable}.desktop ]]; then
    #rm /usr/share/applications/${nomEjecutable}.desktop
    #fi

    echo "existen los archivos"
    touch "/usr/share/applications/${nomEjecutable}.desktop"
    echo "[Desktop Entry]
Comment=Después de instalar Linux
Icon=synaptic
Terminal=true
Name=${nomEjecutable}
Exec=sudo ${nomEjecutable}
Type=Application
">>/usr/share/applications/${nomEjecutable}.desktop
fi

zenity --title="LEERME - Licencia" --width=600 --height=400 --html --auto-scroll --timeout=300 --text-info --filename=$LEERME --checkbox="He leído y acepto los términos." 
case $? in
    0)
echo "Corriendo script"
echo "aqui pondrias todas la tareas que quieres semi-automatizar"
echo "las ruta de los archivos son: /usr/share/applications"
echo "y de los ejecutables: /usr/local/bin"
    ;;
    1)
echo "Script cancelado"
    ;;
    -1)
echo "Ha ocurrido un error inesperado."
    ;;
esac


exit