echo open %1 > delete_saves.txt
echo user xboxftp xboxftp >> delete_saves.txt
echo cd /Hdd1/Content/%2/%3/00000001 >> delete_saves.txt
echo dele %4 >> delete_saves.txt
echo quit >> delete_saves.txt
ftp -n -s:delete_saves.txt
del delete_saves.txt