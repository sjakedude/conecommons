echo open %1 > upload_file.txt
echo user xboxftp xboxftp >> upload_file.txt
echo cd /Hdd1/Content >> upload_file.txt
echo lcd Z:\Private\rom_saves\xbox_360 >> upload_file.txt
echo put %2 >> upload_file.txt
echo quit >> upload_file.txt
ftp -n -s:upload_file.txt