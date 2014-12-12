set url=C:\Users\Benjy\AppData\Roaming\Mozilla\Firefox\Profiles\gg58zodx.default\
set sql_file=places.sqlite
set dest=C:\Users\Benjy\Music\0Piracy
set back=C:\Users\Benjy\YoutubeCD

set db=%url%%sql_file%

pwd > dr.txt
set /p bk=<dr.txt

cd %dest%
C:\Users\Benjy\sqlite-shell-win32-x86-3080704\sqlite3 %db% < %back%/root.ql | C:\Python27\python %back%/parse.py >carmen.txt
set /p out=<carmen.txt
echo "heres the stuff"
echo %out%
C:\Users\Benjy\ytdl\youtube-dl -f 140 %out%
rem soundconverter -b *.m4a
rem rm *.m4a

C:\Users\Benjy\sqlite-shell-win32-x86-3080704\sqlite3 %db% < %back%/clear_root.ql

cd C:\Users\Benjy\YoutubeCD