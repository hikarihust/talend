#!/bin/sh
cd `dirname $0`
ROOT_PATH=`pwd`
java -Dtalend.component.manager.m2.repository=$ROOT_PATH/../lib -Xms256M -Xmx1024M -cp .:$ROOT_PATH:$ROOT_PATH/../lib/routines.jar:$ROOT_PATH/../lib/crypto-utils.jar:$ROOT_PATH/../lib/dom4j-1.6.1.jar:$ROOT_PATH/../lib/log4j-1.2.17.jar:$ROOT_PATH/../lib/talend_file_enhanced_20070724.jar:$ROOT_PATH/../lib/talendcsv.jar:$ROOT_PATH/csv_to_xml_0_1.jar: tmap.csv_to_xml_0_1.CSV_to_XML  --context=Default "$@"