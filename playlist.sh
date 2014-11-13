#!/bin/bash


#First parameter - name of dir (from current dir) to put downloaded files into
#Rest of them - URL's of all the videos to download

echo "$#"

if [[ "$#" -lt 2 ]]
then
    echo "Error: not enough parameters"
else
    mkdir "$1"; cd "$1"
    #now just make it print the rest of em
    shift

    youtube-dl -f 140 -o '%(autonumber)s_%(title)s.m4a' $*
    soundconverter -b *.m4a
    rm *.m4a

    k3b --audiocd *.ogg
fi

