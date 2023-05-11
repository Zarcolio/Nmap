@echo off
set "nmap_path=C:\Program Files (x86)\Nmap\nmap.exe"
set "input_file=ports.txt"
set "output_file=scan_results.txt"

rem Read port numbers from the input file
setlocal enabledelayedexpansion
set ports=
for /f "usebackq delims=" %%a in (%input_file%) do (
    set "ports=!ports!,%%a"
)

rem Remove leading comma from the ports list
set "ports=%ports:~1%"

rem Perform the nmap scan with all the ports
"%nmap_path%" -p %ports% %*

endlocal
