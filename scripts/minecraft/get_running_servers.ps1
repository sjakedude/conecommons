$minectaft_servers = gps | ? MainwindowTitle | ft Id, Name, MainWindowTitle | findstr "minecraft"
Write-Output $minecraft_servers
