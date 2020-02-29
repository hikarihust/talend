#!/bin/sh
cd `dirname $0`
ROOT_PATH=`pwd`
java -Dtalend.component.manager.m2.repository=$ROOT_PATH/../lib -Xms256M -Xmx1024M -Dfile.encoding=UTF-8 -cp .:$ROOT_PATH:$ROOT_PATH/../lib/routines.jar:$ROOT_PATH/../lib/crypto-utils.jar:$ROOT_PATH/../lib/dom4j-1.6.1.jar:$ROOT_PATH/../lib/jaxen-1.1.1.jar:$ROOT_PATH/../lib/log4j-1.2.17.jar:$ROOT_PATH/../lib/talendcsv.jar:$ROOT_PATH/../lib/xpathutil-1.0.0.jar:$ROOT_PATH/xml_to_csv_0_1.jar: tmap.xml_to_csv_0_1.XML_to_CSV  "$@"