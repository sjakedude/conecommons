echo open 192.168.0.233 > download_file.txt
echo xboxftp >> download_file.txt
echo xboxftp >> download_file.txt
echo cd /Hdd1/Content/%1/%2/00000001 >> download_file.txt
echo get %3 >> download_file.txt
echo quit >> download_file.txt
ftp -s:download_file.txt