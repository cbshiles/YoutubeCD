YoutubeCD
=========

[Created with help from Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)

Okay, so total mess here, but nothing's wrong with that.
Lots of organization to be done, but lets make sure we've got all the 
programs we need in the windows environment.

## Downloads

Note - youtube-dl requires Python version 2.6, 2.7, or 3.3+ to work.
Should we just say you have to get Python 3 for the project?

[Download Youtube-dl](https://rg3.github.io/youtube-dl/)

Get it for Windows, make sure you can download a song.
An example dl command would be ... 
`youtube-dl --no-cache-dir -i -f 141/140 --no-playlist -o ~brenan/Tunes/%(title)s.%(ext)s https://www.youtube.com/watch?v=hLhN__oEHaw`

Your computer **_should_** already have sqlite on it.
I think firefox uses sqlite regardless of your operating system,
so all we should need to do is find out how to access it via the command line.

[Good Resource for SQLite](http://www.sqlite.org/cli.html)

Firefox's history database is usually located at firefox/*.default/places.sqlite, 
where * is random gibberish.

If you can connect to that database and do a basic query, and also download a song
with youtube-dl, we will have the basic operations needed for our program to work in Windows.

Everything below this line is old stuff i dont feel like deleting yet.
------------------------------------------------------------------------
Have root.sh working.

Todo:	think about distribution
	get subz working
	change https to http (or vice versa)
	refactor

------------------------------------------------------------------------

*Note: youtube-dl outdated. Need to install most recent version.*

Create python file that parses database output

feed output from that into youtube-dl

make the sql delete those bookmarks

have diifferent behavior for folders or links in >Songs

have an initiator that creates the folder

*database editing is not immediate. closing ff MAY do the trick*


------------------------------------------------------------------------

Note - bash equivalent included in this folder.

Steps:

*All programs that are used must be for Windows and accessible from the command line.

1)Make sure there is a program to download audio from Youtube URL's.

Try this one out:
http://rg3.github.io/youtube-dl/download.html

Note - youtube-dl requires Python version 2.6, 2.7, or 3.3+ to work.

2)Make sure the downloaded files are burnable, or get a file converter.

3)Pull up CD burner with appropriate files.




------------------------------------------------------------------------

1)Learn sqlite (check this website out)
http://www.sqlite.org/cli.html

2)get youtube files from database, download the songs & remove from bookmarks

3)there will be a separate file that stores the bookmarks for downloading, which
must be found by the program

4)yep, just link this with what you have already
