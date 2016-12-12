## Tunes Program

Setup: in browse.sh, set up the hom variable to the desired user

This is going to be a command line music management system. You will call it on the command line like tunes.
-u Update youtube-dl and whatever else may need it
-r Refresh: clear memoryt of what urls have already been checked
--help

-b For browse: Browse what music you have listened to lately (No args)
-n for number of urls to pull up

For arguments to program:

1) Figure out what the base case - no args means(-b i suppose)
2) No flags just urls means -c

Starting at 1st arg (besides prog name), check if its a flag
if so ya know do that
else its assumed to be a url