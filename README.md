# Batch Script: Change IP Configuration

A batch script to change the IP configuration of the wireless interface on Windows.

## Description

This batch script allows you to change the IP address, subnet mask, default gateway, and DNS servers of the wireless interface on Windows. It generates a random number for the last octet of the IP address and sets the new configuration accordingly.

## Prerequisites

- Windows operating system
- Administrator privileges

## Usage

1. Open Command Prompt.
2. Navigate to the directory containing the batch script.
3. Run the script by entering the following command:

    ```batch
    change_ip_config.bat
    ```

4. Follow the prompts to confirm the IP configuration changes.
5. The script will display the new IP configuration after making the changes.

## Configuration

Modify the following variables in the script to customize the IP configuration:

- `newSubnet`: The subnet mask for the wireless interface.
- `newGateway`: The default gateway for the wireless interface.
- `dnsServer1`: The primary DNS server for the wireless interface.
- `dnsServer2`: The secondary DNS server for the wireless interface.

## Notes

- This script assumes that you have a wireless interface on your Windows system.
- The script uses the `netsh` command-line tool to change the IP configuration.
- Ensure that you have administrator privileges to run the script.

## License

Include the license under which you are releasing your script. Choose an open-source license that suits your project's needs. You can provide a brief summary of the license terms or include the full license text in a separate file.

## Contact

If you want to include contact information, you can create a "Contact" section where you provide your email address, website, or any other relevant details.
