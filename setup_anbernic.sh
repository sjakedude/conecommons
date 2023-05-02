
# Listing out disks
diskutil list
default_disk="/dev/disk2"

# Promting for OK to format
read -p "Ok to format ${default_disk}? (Hit enter to continue)" input
if [[ -z "$input" ]]; then
    echo "Formatting"
else
    echo "Not accepted"
    exit(1)
fi

# Formatting the SD card to FAT32 format
diskutil eraseDisk FAT32 ANBERNIC MBRFormat /dev/disk2

# Check if garlic image exists locally
if [ -e "./artifacts/garlic.img" ]; then
    echo "garlic.img exists"
else
    # Copy garlic image from Network artifacts into local repo
    echo "Pulling garlic.img from theconeportal.net"
    cp /Volumes/Public/artifacts/garlic.img ./artifacts/garlic.img

# Unmounting the disk to get ready to image it
diskutil unmountDisk /dev/disk2

# Imaging the SD card with garlic os
sudo dd bs=1m if=./artifacts/garlic.img of=/dev/rdisk2 conv=sync

# Copy Roms onto SD Card