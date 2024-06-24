import os
import json
import psutil
from save_converter import SaveConverter

# Prompt the user to pick a mode
print("Modes:")
print("1. Transfer from SD to PC")
print("2. Transfer from PC to SD")
user_input = input("Select a mode: ")

# Convert the user's input to an integer
mode = int(user_input)

# converter = SaveConverter(
#     "D:\GB_Operator\Save_Backups\ytest_first\Pokemon - Leaf Green Version (Rev 1).sav",
#     "D:\git\conecommons\data\Pokemon - Leaf Green Version (Rev 1).srm",
#     128,
# )

converter = SaveConverter(
    srm_path="/Users/jake/Desktop/pokemon_saves/Pokemon - Blue Version (USA, Europe) (SGB Enhanced).srm",
    sav_path="/Users/jake/Desktop/pokemon_saves/Pokemon - Blue Version (USA, Europe) (SGB Enhanced).sav",
    sav_size=32,
)
# converter.convert_sav_to_srm()

converter.convert_srm_to_sav()

