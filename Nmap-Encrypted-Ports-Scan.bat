nmap -iL Nmap-Encrypted-Ports-Scan-input.txt -T2 -A -oA Nmap-Encrypted-Ports-Scan-output -PN --open --script ssl* --script tls* --script sstp* --script ssh* --randomize-hosts -p 21,22,23,24,25,26,28,44,110,115,119,143,261,311,324,389,441,433,443,444,448,465,514,541,563,585,587,636,664,684,695,832,853,881,898,902,942,943,981,989,990,992,993,994,995,1129,1156,1183,1184,1194,1311,1364,1433,1443,1514,1521,1533,1575,1671,1701,1810,2010,2032,2078,2080,2083,2087,2096,2179,2222,2223,2224,2821,2846,2252,2302,2376,2381,2443,2478,2479,2482,2484,2526,2607,2679,2762,3003,3008,3009,3077,3078,3094,3131,3183,3191,3220,3268,3269,3306,3389,3410,3424,3443,3471,3496,3509,3529,3539,3550,3568,3660,3661,3713,3780,3800,3801,3802,3803,3864,3885,3896,3897,3995,4031,4062,4064,4066,4070,4081,4083,4096,4097,4098,4100,4116,4122,4422,4433,4434,4443,4444,4445,4446,4489,4534,4536,4590,4643,4712,4740,4843,4849,4889,4903,5001,5006,5007,5041,5061,5067,5062,5070,5082,5085,5086,5087,5223,5270,5321,5432,5349,5443,5480,5498,5065,5544,5566,5577,5631,5666,5671,5696,5783,5900,5986,5989,5990,6000,6001,6002,6003,6004,6182,6251,6436,6443,6513,6514,6547,6600,6601,6619,6679,6697,6771,6888,6990,7000,7001,7002,7047,7071,7083,7102,7183,7301,7343,7403,7443,7444,7501,7673,7674,7677,7627,7789,7802,7993,7995,8000,8002,8004,8006,8008,8009,8010,8030,8044,8050,8057,8058,8060,8061,8082,8083,8084,8086,8087,8080,8081,8090,8101,8124,8143,8170,8181,8182,8191,8194,8195,8196,8243,8281,8283,8250,8287,8333,8404,8422,8440,8441,8443,8444,8445,8446,8481,8488,8493,8530,8531,8553,8701,8705,8706,8707,8729,8834,8843,8883,8888,8984,8989,8990,8991,9001,9002,9006,9043,9060,9061,9071,9087,9091,9100,9143,9192,9201,9202,9203,9293,9295,9318,9392,9398,9402,9403,9405,9406,9443,9470,9471,9472,9473,9474,9475,9476,9480,9501,9502,9503,9520,9614,9802,9901,9902,9993,10111,10161,10162,10302,10443,10514,11214,11215,11443,11712,11751,11207,11371,12013,12109,12443,12975,13000,13130,13131,13161,13291,13783,15989,16000,16001,16018,16019,16021,16023,16113,16992,16993,16995,17000,17778,17779,18091,18092,18100,18231,18443,19890,19902,20003,20111,21012,22100,22222,22443,23456,27017,27018,27019,28017,28018,28019,31100,31314,32100,32976,41443,50000,50001,50002,50003,50470,50475,50495,58002,59669,61614,61617,61621,63002,63149

pause

@echo off



REM >Nmap-Encrypted-Ports-Scan.log
REM >Nmap-Encrypted-Ports-Scan.log
REM 1701=l2tp
REM 28=SSH HA Palo Alto

REM https://support.apple.com/en-us/HT202944
rem https://kb.vmware.com/selfservice/microsites/search.do?language=en_US&cmd=displayKC&externalId=1027217
rem https://pubs.vmware.com/horizon-61-view/index.jsp?topic=%2Fcom.vmware.horizon-view.security.doc%2FGUID-A0B8412C-6C42-4C78-90B2-C1B2A2237AD1.html
rem https://support.hostgator.com/articles/commonly-used-port-numbers


REM https://www.ibm.com/support/knowledgecenter/SSPT3X_4.2.0/com.ibm.swg.im.infosphere.biginsights.admin.doc/doc/admin_ssl_hbase_mr_yarn_hdfs_web.html
REM https://stackoverflow.com/questions/2359159/cassandra-port-usage-how-are-the-ports-used
REM https://kb.plesk.com/en/9516
REM https://docs.oracle.com/cd/E17802_01/webservices/webservices/reference/tutorials/wsit/doc/WSIT_Security5.html
REM https://doc.nexthink.com/Documentation/Nexthink/V5.1/APIAndIntegrations/GettingdatathroughtheWebAPI
REM http://www.ultralevel.com/?wpfb_dl=378
REM https://www.cisco.com/c/en/us/support/docs/wireless/5500-series-wireless-controllers/113344-cuwn-ppm.html
REM https://helpdesk.minolta.cz/hds/DownloadFile.jsp?id=5214
REM http://doc.mapr.com/display/MapR/Ports+Used+by+MapR
REM https://ambari.apache.org/1.2.5/installing-hadoop-using-ambari/content/reference_chap2_7.html
REM https://docs.datastax.com/en/opscenter/5.0/opsc/reference/opscPorts_r.html
REM https://www.cloudera.com/documentation/enterprise/5-4-x/topics/install_encryption_ports.html
REM https://cwiki.apache.org/confluence/display/solr/Enabling+SSL
REM https://hadoop.apache.org/docs/r2.7.2/hadoop-project-dist/hadoop-common/SecureMode.html
REM https://www.cloudera.com/documentation/enterprise/5-4-x/topics/cdh_ig_ports_cdh5.html
REM https://www.cloudera.com/documentation/enterprise/5-5-x/topics/cdh_ig_ports_cdh5.html
REM https://www.cloudera.com/documentation/archive/manager/4-x/4-5-1/Configuring-Ports-for-Cloudera-Manager-Enterprise-Edition/cmeecp_topic_4.html
REM https://easyengine.io/docs/admin-tools-22222/
REM http://www.admineer.com/blog/enabling-weblogic-administration-port-and-troubleshooting
REM https://docs.oracle.com/cd/B14099_19/core.1012/b13995/portnums.htm
REM http://help.filemaker.com/app/answers/detail/a_id/13592/~/connecting-to-the-filemaker-server-admin-console-troubleshooting
REM http://help.filemaker.com/app/answers/detail/a_id/6427/~/filemaker-server-and-filemaker-server-advanced-port-numbers
REM https://www.google.com/support/enterprise/static/gsa/docs/admin/74/admin_console_help/admin_SSL.html
REM https://nl.godaddy.com/help/what-ports-are-used-by-cpanel-1214
REM https://support.symantec.com/en_US/article.DOC1910.html
REM https://support.symantec.com/en_US/article.HOWTO18756.html
REM https://support.symantec.com/en_US/article.TECH163787.html
REM https://www.veritas.com/support/en_US/article.TECH136090
REM https://www.veritas.com/support/en_US/article.000022620
REM https://support.kaspersky.com/9297#block1
REM https://docs.oracle.com/cd/E16340_01/core.1111/e10105/portnums.htm
REM http://docs.couchbase.com/admin/admin/Install/install-networkPorts.html
REM http://wiki.mikrotik.com/wiki/Manual:IP/Services
REM http://support.eset.com/kb2221/?locale=en_US
REM https://www.icewarp.com/support/online_help/1181.htm
REM https://docs.kolab.org/about/guam/configuration.html
REM http://kb.fortinet.com/kb/viewContent.do?externalId=FD30806
REM http://www.papercut.com/kb/Main/ForcingSSL
REM https://www.openmicroscopy.org/site/support/omero5.1/sysadmins/server-security.html
REM https://www.synology.com/en-us/knowledgebase/DSM/tutorial/General/What_network_ports_are_used_by_Synology_services
REM http://www.jinfonet.com/kbase/server8.1/userguide/HTML/access/acs_ssl.htm
REM http://docs.couchbase.com/admin/admin/Misc/security-admin-access.html
REM https://pubs.vmware.com/vsphere-50/index.jsp?topic=%2Fcom.vmware.vsphere.vco_install_config.doc_42%2FGUID4CE80CCD-CBDF-49BA-A87C-B63BAE3C776F.html
REM https://wiki.zimbra.com/wiki/Ports
REM https://docs.docker.com/engine/security/https/
REM https://support.symantec.com/en_US/article.HOWTO54042.html
REM https://support.symantec.com/en_US/article.TECH163787.html
REM http://www.watchguard.com/help/docs/wsm/xtm_11/en-US/index.html#cshid=en-US/mvpn/ssl/mvpn_ssl_client-install_c.html
REM http://h20565.www2.hp.com/hpsc/doc/public/display?docId=emr_na-c01840730
REM http://h20564.www2.hp.com/hpsc/doc/public/display?docId=emr_na-c02712401
REM http://neil.spellings.net/2014/01/12/penetration-testing-tips-netscaler/
REM http://www.red-database-security.com/whitepaper/oracle_default_ports.html
REM http://www.chebucto.ns.ca/~rakerman/oracle-port-table.html
REM https://blog.hazrulnizam.com/install-oracle-enterprise-manager-cloud-control-12c-release-3-oracle-linux-6/
REM https://kb4you.wordpress.com/2012/11/21/vcenter-server-5-1-required-ports/
REM https://oracle-base.com/articles/misc/configure-tcpip-with-ssl-and-tls-for-database-connections
REM https://www.manageengine.com/products/netflow/help/appendix/netflow-ssl-support.html
REM https://kb.vmware.com/selfservice/microsites/search.do?language=en_US&cmd=displayKC&externalId=1004543
REM https://exchange.nagios.org/directory/Addons/Monitoring-Agents/NRPE--2D-Nagios-Remote-Plugin-Executor/details
REM http://www.apcmedia.com/salestools/PMAR-9HBK44/PMAR-9HBK44_R3_EN.pdf
REM http://www-03.ibm.com/systems/power/software/i/toolbox/faq/ports.html
REM http://www.vladan.fr/vcenter-server-5-1-required-ports/
REM http://kb.vmware.com/selfservice/microsites/search.do?language=en_US&cmd=displayKC&externalId=2051575
REM http://kb.vmware.com/selfservice/microsites/search.do?language=en_US&cmd=displayKC&externalId=1012382
REM http://www.solarwinds.com/documentation/Orion/docs/SolarWindsPortRequirements.pdf
REM https://www.veritas.com/support/en_US/article.TECH136090
REM https://en.m.wikipedia.org/wiki/Well-known_port_numbers#Well-known_ports
REM https://kc.mcafee.com/corporate/index?page=content&id=KB50834
REM http://venutavva.blogspot.nl/2013/09/ports-needed-by-epo-4x-and-epo-50-for.html
REM http://b2b-download.mcafee.com/products/evaluation/mcafee_risk_compliance/v7.5/manuals/mvm750_technote_system_requirements.pdf
REM http://b2b-download.mcafee.com/products/evaluation/mcafee_risk_compliance/v7.5/manuals/mvm750_best_practices_guide.pdf
REM https://www.sophos.com/de-de/support/knowledgebase/115723.aspx
REM http://www.fw-1.de/aerasec/r70/ports-r70.html
REM https://www.paloaltonetworks.com/documentation/70/pan-os/pan-os/device-management/reference-port-numbers-used-by-palo-alto-networks-devices.html
REM https://www-01.ibm.com/support/knowledgecenter/SSAW57_8.5.5/com.ibm.websphere.nd.doc/ae/rmig_portnumber.html
REM http://www-01.ibm.com/support/docview.wss?uid=swg21569674
REM http://www.networksorcery.com/enp/protocol/ip/ports09000.htm
REM http://wstools.blogspot.nl/2011/08/websphere-application-server-default.html
REM https://www.adminsub.net/tcp-udp-port-finder/ssl
REM https://www.adminsub.net/tcp-udp-port-finder/tls
REM https://www.adminsub.net/tcp-udp-port-finder/https
REM http://kb.fortinet.com/kb/viewContent.do?externalId=10773
REM https://technet.microsoft.com/en-us/library/gg398833.aspx
REM https://technet.microsoft.com/en-us/library/gg425891(v=ocs.15).aspx
REM http://www.scvmm2012.com/scvmm-2012-port-requirements-%E2%80%93-port-gereksinimi
REM http://kb.vmware.com/selfservice/microsites/search.do?language=en_US&cmd=displayKC&externalId=2106283
REM http://www-01.ibm.com/support/docview.wss?uid=nas8N1019667
REM https://www-01.ibm.com/support/knowledgecenter/SSAV7B_635/com.ibm.director.plan.helps.doc/fqm0_r_ports_for_the_management_server.html
REM http://www-01.ibm.com/support/docview.wss?uid=swg21459257
REM https://www-304.ibm.com/support/knowledgecenter/api/content/nl/nl/SSKTXQ_9.0.0/admin/plan/plan_sametimesystemconsoleports.html
REM https://www-304.ibm.com/support/knowledgecenter/api/content/nl/nl/SSKTXQ_9.0.0/admin/plan/plan_advancedports.html
REM https://www-304.ibm.com/support/knowledgecenter/api/content/nl/nl/SSKTXQ_9.0.0/admin/plan/plan_ports_cluster_was_proxy.html
REM https://software.intel.com/sites/manageability/AMT_Implementation_and_Reference_Guide/default.htm?turl=WordDocuments%2Fmanageabilityports.htm
REM https://www-01.ibm.com/support/knowledgecenter/SSKM8N_8.0.0/com.ibm.etools.mft.doc/ap34021_.htm
REM https://msdn.microsoft.com/en-us/library/ee414240.aspx
REM http://www-01.ibm.com/support/knowledgecenter/SSFUEU_7.2.0/com.ibm.swg.ba.cognos.administrators_guide.7.2.0.doc/t_com_was_update_op_app_svr_port_nums.html
REM https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml?&page=116
REM https://www.netiq.com/documentation/netiqaccessmanager4/target_installation/data/b8j3ld5.html
REM https://www.thesslstore.com/blog/dns-over-tls-vs-dns-over-https/
