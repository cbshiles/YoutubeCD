
set url=C:\Users\Benjy\AppData\Roaming\Mozilla\Firefox\Profiles\gg58zodx.default\
set sql_file=places.sqlite
set dest=C:\Users\Benjy\Music\0Piracy

set db=%url%%sql_file%

C:\Users\Benjy\sqlite-shell-win32-x86-3080704\sqlite3 %db% < init.ql
mkdir %dest%
