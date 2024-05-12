echo open 192.168.0.233 > retrieve_metadata.txt
echo xboxftp >> retrieve_metadata.txt
echo xboxftp >> retrieve_metadata.txt
echo cd /Hdd1/Content/%1/%2/00000001 >> retrieve_metadata.txt
echo ls >> retrieve_metadata.txt
echo quit >> retrieve_metadata.txt
ftp -s:retrieve_metadata.txt