set home=C:\Users\Benjy

set url=%home%\AppData\Roaming\Mozilla\Firefox\Profiles\gg58zodx.default\
set sql_file=places.sqlite
set dest=%home%\Music\0Piracy
set back=%home%\YoutubeCD

set db=%url%%sql_file%

pwd > dr.txt
set /p bk=<dr.txt

cd %dest%
%home%\sqlite-shell-win32-x86-3080704\sqlite3 %db% < %back%/root.ql | C:\Python27\python %back%/parse.py >carmen.txt
set /p out=<carmen.txt
%home%\ytdl\youtube-dl -f 140 %out%


%home%\sqlite-shell-win32-x86-3080704\sqlite3 %db% < %back%/clear_root.ql

cd %home%\YoutubeCD