echo Z: > download_file.txt
echo cd Private/rom_saves/%1/%2 > download_file.txt
echo open %4 > download_file.txt
echo xboxftp >> download_file.txt
echo xboxftp >> download_file.txt
echo cd /Hdd1/Content/%3/%4/00000001 >> download_file.txt
echo get %5 >> download_file.txt
echo quit >> download_file.txt
echo 
ftp -s:download_file.txt