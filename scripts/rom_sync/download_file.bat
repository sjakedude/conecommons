Z:
cd Private\rom_saves\%5\%2\%3
echo open %1 > download_file.txt
echo user xboxftp xboxftp >> download_file.txt
echo cd /Hdd1/Content/%2/%3/00000001 >> download_file.txt
echo get %4 >> download_file.txt
echo quit >> download_file.txt
ftp -n -s:retrieve_metadata.txt