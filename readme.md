# ConeCommons

The purpose of this repo is to have any scripts that are used on the local network be saved here for future use.

## Transfering Roms

```
python rom_transfer.py /path/to/rom/mario.gbc gbc
```

First arg is the path to the room.
Second arg is the emulator you want to send the rom to.

Edit the hostname in the code if the IP has changed.

Jake

## Anbernic Sync

Running this process will purge all data on the SD Card and set it up with all the Roms and save files from the NAS on theconeportal.net

0. From your Macbook, make sure you are connected to the cone LAN and have access to theconeportal.net NAS. 

1. Plug in the SD Card from your anbernic into the side of the macbook.

2. Run the `setup_anbernic.sh` script.
