
# Listing out disks
diskutil list
default_disk="/dev/disk2"

# Promting for OK to format
read -p "Ok to format ${default_disk}? (Hit enter to continue)" input
if [[ -z "$input" ]]; then
    echo "Formatting"
else
    echo "Not accepted"
    exit
fi

# Formatting the SD card to FAT32 format
diskutil eraseDisk FAT32 ANBERNIC MBRFormat /dev/disk2

# Check if garlic image exists locally
if [ -e "./artifacts/garlic.img" ]; then
    echo "garlic.img exists"
else
    # Copy garlic image from Network artifacts into local repo
    echo "Pulling garlic.img from theconeportal.net"
    mkdir -p ./artifacts
    cp /Volumes/Public/artifacts/garlic.img ./artifacts/garlic.img
fi

# Unmounting the disk to get ready to image it
echo "Unmounting /dev/disk2"
diskutil unmountDisk force /dev/disk2

# Sleep
echo "Sleeping for 2 seconds"
sleep 2

# Imaging the SD card with garlic os
echo "Re-Imaging /dev/disk2"
sudo dd bs=1m if=./artifacts/garlic.img of=/dev/rdisk2 conv=sync

# Sleep
echo "Sleeping for 2 seconds"
sleep 2

# Copy Roms onto SD Card
echo "Copying ROMs"
cp -r -f "/Volumes/Public/Emulation/Roms/" "/Volumes/NO NAME 1/Roms/"
echo "Creating Saves directory on SD card"
mkdir -p "/Volumes/NO NAME 1/Saves/"
echo "Copying Saves"
cp -r -f "/Volumes/Public/Emulation/Saves/" "/Volumes/NO NAME 1/Saves/"
