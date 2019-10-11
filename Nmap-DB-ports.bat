nmap -iL Nmap-Database-Ports-Scan-input.txt -oA Nmap-Database-Ports-Scan-output -sU -sT -PN --open --randomize-hosts -p 523,1158,1433,1434,1450,1521,1525,1526,1527,1529,1571,1575,1630,1748,1754,1808,1809,1830-1849,2481,2482,2483,2484,3306,3872,3891,3938,4444,5432,5500-5519,5520-5539,5540-5559,5560-5579,5580-5599,5600-5619,5620-5639,5640-5659,5660-5679,6379,7000,7001,7199,7777,7778,8888,9042,9160,11000,27017,27018,27019,28017,28018,28019,49895,49896,49897-49898,50000,57311,57312,60000,60001,60002,60003,61000-61300

pause

REM https://stackoverflow.com/questions/2359159/cassandra-port-usage-how-are-the-ports-used
REM http://www.dbatodba.com/db2/problem-resolution/connectivity-errors/confirming-tcp-ip-configuration-for-a-db2-instance/
REM http://www.dbforums.com/showthread.php?732217-db2-default-port
REM http://www.mysql-apache-php.com/ports.htm
REM https://docs.oracle.com/cd/B19306_01/install.102/b15660/app_port.htm
REM http://www.databasejournal.com/features/oracle/article.php/3332361/Connecting-with-Oracle-Oracle-Ports.htm
REM http://www.chebucto.ns.ca/~rakerman/oracle-port-table.html
REM http://www.dbase.com/Knowledgebase/dbulletin/bu18_a.htm
REM https://redis.io/topics/quickstart
