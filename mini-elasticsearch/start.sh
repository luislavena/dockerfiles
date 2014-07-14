#!/bin/sh

local ELASTICSEARCH_YML="/opt/elasticsearch/config/elasticsearch.yml"

start() {
	exec /opt/elasticsearch/bin/elasticsearch -Des.config=$ELASTICSEARCH_YML
}

start
