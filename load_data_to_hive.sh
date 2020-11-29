#!/usr/bin/env bash

# Set BEELINE JDBC String
_ZK_QUORUM=hdpcdp-1.vpc.cloudera.com:2181,hdpcdp-2.vpc.cloudera.com:2181,hdpcdp-3.vpc.cloudera.com:2181
_HIVE_CONNECTION_STRING="jdbc:hive2://$_ZK_QUORUM/;serviceDiscoveryMode=zooKeeper;zooKeeperNamespace=hiveserver2"

#Execute HiveQL Statements
beeline -n hive -p hive -u $_HIVE_CONNECTION_STRING   -f cities.hiveql
beeline -n hive -p hive -u $_HIVE_CONNECTION_STRING   -f emp_sampledb.hiveql
beeline -n hive -p hive -u $_HIVE_CONNECTION_STRING   -f fifa.hiveql
beeline -n hive -p hive -u $_HIVE_CONNECTION_STRING   -f hwx_sampledb.hiveql
beeline -n hive -p hive -u $_HIVE_CONNECTION_STRING   -f sampledb.hiveql

# beeline -n hive -p hive -u $_HIVE_CONNECTION_STRING  -e 'show databases'
# beeline -n hive -p hive -u $_HIVE_CONNECTION_STRING  -e 'select rank,name,population_2001,state from population.cities'
