#!/usr/bin/env bash

# Set BEELINE JDBC String
_ZK_QUORUM=hdpcdp-1.vpc.cloudera.com:2181,hdpcdp-2.vpc.cloudera.com:2181,hdpcdp-3.vpc.cloudera.com:2181
_HIVE_CONNECTION_STRING="jdbc:hive2://$_ZK_QUORUM/;serviceDiscoveryMode=zooKeeper;zooKeeperNamespace=hiveserver2"

#Execute HiveQL Statements
beeline -n hive -p hive -u $_HIVE_CONNECTION_STRING   -f /var/tmp/hive_sample_dataload/cities.hiveql
beeline -n hive -p hive -u $_HIVE_CONNECTION_STRING   -f /var/tmp/hive_sample_dataload/emp_sampledb.hiveql
beeline -n hive -p hive -u $_HIVE_CONNECTION_STRING   -f /var/tmp/hive_sample_dataload/fifa.hiveql
beeline -n hive -p hive -u $_HIVE_CONNECTION_STRING   -f /var/tmp/hive_sample_dataload/hwx_sampledb.hiveql
beeline -n hive -p hive -u $_HIVE_CONNECTION_STRING   -f /var/tmp/hive_sample_dataload/sampledb.hiveql

# beeline -n hive -p hive -u $_HIVE_CONNECTION_STRING  -e 'show databases'
# beeline -n hive -p hive -u $_HIVE_CONNECTION_STRING  -e 'select rank,name,population_2001,state from population.cities'
