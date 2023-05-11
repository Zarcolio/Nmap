REM nmap -iL Nmap-SMTP-Ports-Scan-input.txt -oA Email-StrangePorts -sS -PN --open --script smtp-strangeport --randomize-hosts -p 1-65535
nmap -iL Nmap-Email-Strange-Ports-Scan-input.txt -oA Nmap-Email-Strange-Ports-Scan-output -sS --open --script smtp-strangeport --randomize-hosts -p 1-65535 -A

pause
