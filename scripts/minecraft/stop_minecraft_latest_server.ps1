$minecraft_latest_server = gps | ? MainWindowTitle | ft Id, Name, MainWindowTitle | findstr "minecraft-latest"
$minecraft_pid = echo $minecraft_latest_server.Split(" ")[1]
taskkill /PID $minecraft_pid /F
