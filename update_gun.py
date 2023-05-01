import paramiko

hostname = "192.168.0.219"
port = 22
username = "Jake"
password = "XXXXX"
local_file_path = "C:/Users/Jake/git/conecommons/data/gun.txt"
remote_file_path = "C:/Users/Jake/AppData/Local/Plutonium/storage/t5/maps/mp/gametypes/gun.gsc"

# Create an SSH client object
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())

# Connect to the server
ssh.connect(hostname=hostname, port=port, username=username, password=password)

# Open a SFTP session on the SSH client
sftp = ssh.open_sftp()

# Upload the local file to the remote server
sftp.put(local_file_path, remote_file_path)

# Close the SFTP session and SSH client
sftp.close()
ssh.close()

print("File uploaded successfully.")
