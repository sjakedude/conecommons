$minecraft_ftb_server = gps | ? MainWindowTitle | ft Id, Name, MainWindowTitle | findstr "minecraft-ftb"
$minecraft_pid = echo $minecraft_ftb_server.Split(" ")[0]
if ( $minecraft_pid -eq "" )
{
    $minecraft_pid = echo $minecraft_ftb_server.Split(" ")[1]
}
taskkill /PID $minecraft_pid /F
$minecraft_ftb_server = gps | ? MainWindowTitle | ft Id, Name, MainWindowTitle | findstr "minecraft-ftb"
$minecraft_pid = echo $minecraft_ftb_server.Split(" ")[0]
if ( $minecraft_pid -eq "" )
{
    $minecraft_pid = echo $minecraft_ftb_server.Split(" ")[1]
}
taskkill /PID $minecraft_pid /F