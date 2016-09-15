#!/usr/bin/env bash
cd /incubator-zeppelin/
mvn clean package -Pspark-2.0 -Dhadoop.version=2.2.0 -Phadoop-2.2 -Pyarn -DskipTests
