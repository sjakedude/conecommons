echo open %1 > upload_file.txt
echo user xboxftp xboxftp >> upload_file.txt
echo cd /Hdd1/Content/%2/%3/00000001 >> upload_file.txt
echo lcd Z:\Private\rom_saves\xbox_360\%2\%3 >> upload_file.txt
echo put %4 >> upload_file.txt
echo quit >> upload_file.txt
ftp -n -s:upload_file.txt