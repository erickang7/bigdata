#!/bin/bash
hadoop-daemon.sh start datanode
yarn-daemon.sh start nodemanager
start-slave.sh spark://starmaster:7077
tail -f /dev/null