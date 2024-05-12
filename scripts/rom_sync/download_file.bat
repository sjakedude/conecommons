echo Z: > download_file.txt
echo cd Private/rom_saves/%5/%2/%3 > download_file.txt
echo open %1 > download_file.txt
echo xboxftp >> download_file.txt
echo xboxftp >> download_file.txt
echo cd /Hdd1/Content/%2/%3/00000001 >> download_file.txt
echo get %4 >> download_file.txt
echo quit >> download_file.txt
ftp -s:download_file.txt