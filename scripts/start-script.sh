#!/usr/bin/env bash

sed '1d' /etc/hosts > tmpHosts
cat tmpHosts > /etc/hosts
rm tmpHosts

export MASTER=spark://master:7077
cd incubator-zeppelin/
./bin/zeppelin-daemon.sh start
/bin/bash
