echo open %1 > download_file.txt
echo user xboxftp xboxftp >> download_file.txt
echo cd /Hdd1/Content/%2 >> download_file.txt
echo lcd Z:\Private\rom_saves\xbox_360\%2 >> download_file.txt
echo get %3 >> download_file.txt
echo quit >> download_file.txt
ftp -n -s:download_file.txt