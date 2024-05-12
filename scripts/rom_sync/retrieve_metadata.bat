echo open %1 >> retrieve_metadata.txt
echo xboxftp >> retrieve_metadata.txt
echo xboxftp >> retrieve_metadata.txt
echo cd /Hdd1/Content/%2/%3/00000001 >> retrieve_metadata.txt
echo ls >> retrieve_metadata.txt
echo quit >> retrieve_metadata.txt
ftp -s:retrieve_metadata.txt