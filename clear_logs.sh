#!/bin/bash

# clear Admin server logs
cd /oracle/admin/OSBDomain/aserver/OSBDomain/servers/AdminServer/logs
find . -name 'OSBDomain.log2*' -mtime +5 -exec rm -f {} \; 2>/dev/null
find . -name 'OSBDomain.log0*' -mtime +5 -exec rm -f {} \; 2>/dev/null
find . -name 'AdminServer.log2*' -mtime +5 -exec rm -f {} \; 2>/dev/null

# clear managed server logs
cd /oracle/admin/OSBDomain/mserver/OSBDomain/servers/osb_server1/logs
find . -name 'osb_server1.log0*' -mtime +3 -exec rm -f {} \; 2>/dev/null
find . -name 'osb_server1.log1*' -mtime +3 -exec rm -f {} \; 2>/dev/null
find . -name 'osb_server1.out0*' -mtime +3 -exec rm -f {} \; 2>/dev/null
find . -name 'access.log0*' -mtime +3 -exec rm -f {} \; 2>/dev/null
cat osb_server1.out >> osb_server1.out0_`date +%Y.%m.%d-%H.%M` && cat /dev/null > osb_server1.out
#cat /dev/null > osb_server1.out

