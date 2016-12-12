#!/bin/bash

url=~/.mozilla/firefox/mwad0hks.default
sql_file=places.sqlite
dest=~/Music/0DL
back=~/code/YoutubeCD

db=$url/$sql_file

cd $dest
youtube-dl -f 140 -o '%(title)s.m4a' `sqlite3 $db < $back/root.ql | python $back/parse.py`
soundconverter -b *.m4a
rm *.m4a

sqlite3 $db < $back/clear_root.ql
