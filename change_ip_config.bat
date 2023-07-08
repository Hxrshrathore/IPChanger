@echo off
setlocal enabledelayedexpansion

REM Set the subnet mask
set "newSubnet=255.255.255.0"

REM Set the default gateway
set "newGateway=10.5.128.1"

REM Set the DNS servers
set "dnsServer1=192.168.100.8"
set "dnsServer2=8.8.8.8"

REM Generate a random number for the last octet of the IP address (between 1 and 254)
set /a "randomNumber=%random% %% 254 + 1"

REM Set the new IP address with the generated random number
set "newIP=10.5.133.%randomNumber%"

REM Get the name of the wireless interface
for /f "tokens=3 delims=: " %%I in ('netsh interface show interface ^| findstr /i "Wireless"') do set "wirelessInterface=%%I"

REM Change the IP address settings for the wireless interface
netsh interface ipv4 set address name="!wirelessInterface!" static !newIP! !newSubnet! !newGateway! 1

REM Change the DNS server settings for the wireless interface
netsh interface ipv4 set dns name="!wirelessInterface!" static !dnsServer1!
netsh interface ipv4 add dns name="!wirelessInterface!" addr=!dnsServer2! index=2

REM Display the new IP configuration
echo IP address has been changed to: %newIP%
echo Subnet mask: %newSubnet%
echo Default gateway: %newGateway%
echo DNS servers: %dnsServer1%, %dnsServer2%

pause
