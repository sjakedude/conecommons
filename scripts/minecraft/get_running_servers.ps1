$minectaft_servers = gps | ? MainwindowTitle | ft Id, Name, MainWindowTitle | findstr "minecraft"
echo $minecraft_servers
