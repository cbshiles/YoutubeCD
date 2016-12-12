#!/bin/bash

url=~/.mozilla/firefox/mwad0hks.default/
sql_file=places.sqlite
dest=~/Music/0DL

db=$url$sql_file

sqlite3 $db < init.ql
mkdir $dest
