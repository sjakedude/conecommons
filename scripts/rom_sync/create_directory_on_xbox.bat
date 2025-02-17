echo open %1 > mkdir_file.txt
echo user xboxftp xboxftp >> mkdir_file.txt
echo cd /Hdd1/Content >> mkdir_file.txt
echo mkdir %2 >> mkdir_file.txt
echo cd /Hdd1/Content/%2 >> mkdir_file.txt
echo mkdir %3 >> mkdir_file.txt
echo cd /Hdd1/Content/%2/%3 >> mkdir_file.txt
echo mkdir 00000001 >> mkdir_file.txt
echo quit >> mkdir_file.txt
ftp -n -s:mkdir_file.txt