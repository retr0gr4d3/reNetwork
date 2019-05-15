@ECHO OFF
:: Simple attempt-to-auto-fix-my-network script, by Jake.

echo This script will attempt to fix your networking issues. It will restart your PC. Please run as admin to achieve desired goals.

ping -n 5 127.0.0.1 >nul
ipconfig /flushdns
ping -n 5 127.0.0.1 >nul
ipconfig /registerdns
ping -n 5 127.0.0.1 >nul
ipconfig /release
ping -n 5 127.0.0.1 >nul
ipconfig /renew
ping -n 5 127.0.0.1 >nul
netsh winsock reset
ping -n 5 127.0.0.1 >nul
shutdown /r

echo Press any key to exit...
pause >nul
exit
