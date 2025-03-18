#!/bin/sh

CONF_FILE="chndomains.conf"
DOMAIN_LIST_FILE="chndomains.list"
DNS_SERVER="114.114.114.114"

#forward-zone:
#	name: "qq.com"
#	forward-addr: 114.114.114.114

echo "# Auto generated, should not edit." > $CONF_FILE
while read -r dn; do
    echo "forward-zone:" >> $CONF_FILE
    echo "	name: \"$dn.\"" >> $CONF_FILE
    echo "	forward-addr: $DNS_SERVER" >> $CONF_FILE
    echo "" >> $CONF_FILE
done < "$DOMAIN_LIST_FILE"
