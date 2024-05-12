echo open %1 > retrieve_metadata.txt
echo user xboxftp xboxftp >> retrieve_metadata.txt
echo cd /Hdd1/Content/%2/%3/00000001 >> retrieve_metadata.txt
echo ls >> retrieve_metadata.txt
echo quit >> retrieve_metadata.txt
ftp -n -s:retrieve_metadata.txt
del retrieve_metadata.txt