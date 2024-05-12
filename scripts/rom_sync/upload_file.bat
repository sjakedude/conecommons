echo Z: > upload_file.txt
echo cd Private/rom_saves/%2/%3 > upload_file.txt
echo open %1 >> upload_file.txt
echo xboxftp >> upload_file.txt
echo xboxftp >> upload_file.txt
echo cd /Hdd1/Content/%2/%3/00000001 >> upload_file.txt
echo put %4 >> upload_file.txt
echo quit >> upload_file.txt
ftp -s:upload_file.txt