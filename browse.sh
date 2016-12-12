#!/bin/bash

hom=~brenan
db=$hom/.mozilla/firefox/*.default/places.sqlite

if [ -e last_browse ]; then
    last=`cat last_browse`
fi

function timer {
    if [ -n "$last" ]; then
	eval $1=\""$2 last_visit_date $3 $last"\"
    fi
}

timer clz1 AND \>
if [ $1 != -1 ]; then #set the limit string
    limit=LIMIT" $1"
    this_browse=`sqlite3 $db "SELECT max(last_visit_date) FROM moz_places WHERE last_visit_date IN (SELECT last_visit_date FROM moz_places WHERE url LIKE '%youtube.com/watch%' $clz1 ORDER BY last_visit_date ASC $limit);"`
    last=$this_browse #uggo hack to fit into timer fn
    timer clz2 AND '<='
fi

sqlite3 $db "SELECT url, title, last_visit_date FROM moz_places WHERE url LIKE '%youtube.com/watch%' $clz1 $clz2;" > tmp
emacs tmp   

if [ -z "$this_browse" ]; then
    date +%s > last_browse #how to do the comprehensive browsing (no -n)
else
    echo $this_browse > last_browse
fi

