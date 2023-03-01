import sys
import paramiko

emulators = ["dreamcast", "mame", "nes", "psx", "supergrafx", "gb", "gba", "gbc", "n64", "nds", "snes", "psp"]

# Check that the correct number of command-line arguments were provided
if len(sys.argv) != 3:
    print(f"Usage: {sys.argv[0]} <local-path> <emulator>")
    sys.exit(1)

# Get the local and remote file paths from the command-line arguments
local_path = sys.argv[1]
emulator = sys.argv[2]
if emulator not in emulators:
    print(f"{emulator} not supported. Supported emulators are: {emulators}")
    sys.exit(1)
rom_name = local_path.split("/")[-1]
print(f"About to transfer {rom_name} to server emulator {emulator}")

# Define the connection parameters to the remote server
hostname = '192.168.0.181'
port = 22
username = 'root'
password = 'retro'

# Create an SSH client object
ssh = paramiko.SSHClient()

# Automatically add the server's host key to the local host key cache
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())

# Connect to the remote server with the given credentials
ssh.connect(hostname=hostname, port=port, username=username, password=password)

# Create an SCP client object
scp = ssh.open_sftp()

# Use the SCP client to copy the file to the remote server
scp.put(local_path, f"/rcade/share/roms/{emulator}/{rom_name}")

# Close the SCP client and SSH connection
scp.close()
ssh.close()

print("Transfer complete")
