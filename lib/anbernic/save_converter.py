import struct


class SaveConverter:
    def __init__(self, sav_path: str, srm_path: str, sav_size: int):
        self.sav_path = sav_path
        self.srm_path = srm_path
        self.sav_size = sav_size * 1024
        self.__sav_size_factor__ = self.__calculate_sav_size_factor__()

    def convert_sav_to_srm(self):
        # Open the .sav file in binary mode and read the data
        with open(self.sav_path, "rb") as f:
            # Read the first 128KB of the file
            data = f.read(128 * 1024)

        # Open output file for writing
        with open(self.srm_path, "wb") as f:
            # Write the first 128KB of the input file to the output file
            f.write(data)

            # Pad the output file with zeroes to a total size of 128KB
            remaining_size = 128 * 1024 - len(data)
            f.write(bytearray(remaining_size))

    def convert_srm_to_sav(self):
        # Open the .srm file in binary mode and read the data
        with open(self.srm_path, "rb") as srm_file:
            srm_data = srm_file.read()

        # Pad the .srm data with zeros to the full size of the .sav file
        sav_data = srm_data + b"\0" * (self.sav_size - len(srm_data))

        # Add the necessary metadata to the .sav file
        metadata = struct.pack("<HHB", 0x1234, 0x5678, 0x00)
        sav_data = metadata + sav_data

        # Write the data to the .sav file
        with open(self.sav_path, "wb") as sav_file:
            sav_file.write(sav_data)

    def __calculate_sav_size_factor__(self):
        if self.sav_size == 128:
            return 4
        else:
            return 1
