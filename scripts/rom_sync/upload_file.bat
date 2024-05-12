echo open 192.168.0.233 > upload_file.txt
echo xboxftp >> upload_file.txt
echo xboxftp >> upload_file.txt
echo cd /Hdd1/Content/%1/%2/00000001 >> upload_file.txt
echo ls >> upload_file.txt
echo put %3 >> upload_file.txt
echo quit >> upload_file.txt
ftp -s:upload_file.txt