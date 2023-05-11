nmap -iL Nmap-Email-Ports-Scan-input.txt -oA Nmap-Email-Ports-Scan-output -sS -PN --open --script ssl* --script smtp* --script imap* --script pop3* --script domino* --randomize-hosts -p 24,25,26,102,109,110,143,209,220,366,443,465,587,691,993,995,1352,2050,2525,8025

@echo off
pause

REM https://www.siteground.com/tutorials/email/pop3-imap-smtp-ports.htm
REM http://www.emailquestions.com/threads/e-mail-service-related-port-numbers-and-descriptions.180/
REM https://support.prolateral.com/index.php?/Knowledgebase/Article/View/179
REM http://www.zensoftware.co.uk/kb/Knowledgebase/Configuring-an-alternative-port-for-SMTP-access
REM https://www.smtp2go.com/blog/smtp-server-xerox-workcentres/
