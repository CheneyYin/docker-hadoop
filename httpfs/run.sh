#!/bin/bash

if [[ ! -f $HADOOP_HOME'/logs/httpfs.log' ]]; then
	touch $HADOOP_HOME'/logs/httpfs.log'
fi

$HADOOP_HOME/bin/hdfs --config $HADOOP_CONF_DIR --daemon start httpfs
tail -f $HADOOP_HOME/logs/httpfs.log & wait ${!}
